import paho.mqtt.client as mqtt
import json
import os
import sys
import signal
import time

# test sur la configuration
try:
    # vérifie que le fichier existe
    assert os.access('config.json', os.F_OK)
    # vérifie que le script à le droit de lecture sur le fichier
    assert os.access('config.json', os.R_OK)
    # lit le fichier de configuration
    with open('config.json', 'r') as config_file:
        config_json = json.load(config_file)

    # charge la configuration
    data_wanted = config_json['data']
    alert_temp = config_json['seuiltemp']
    alert_hum = config_json['seuilhum']
    file_name = config_json['nomFichier']
    alert_data = config_json['alerte']
    device_id = config_json['capteur']
    host = "chirpstack.iut-blagnac.fr"
    port = 1883

    # test les options
    assert isinstance(data_wanted, type([]))
    assert all(isinstance(data, str) for data in data_wanted)
    assert len(data_wanted) >= 1
    assert isinstance(alert_temp, (int, float))
    assert isinstance(alert_hum, (int, float))
    assert isinstance(file_name, str)
    assert isinstance(alert_data, type([]))
    assert all(isinstance(data, str) for data in alert_data)
    assert isinstance(device_id, str)
    assert len(device_id) == 16
    assert isinstance(host, str)
    assert isinstance(port, int)
    assert 0 < port < 65536
except:
    # en cas de problème à la lecture du fichier de configuration on affiche un message et on arrête le programme
    print('Le fichier de configuration ("config.json") est manquant, le script n\'a pas le droit de lecture ou la configuration est mal écrite.')
    sys.exit(1)

# initialise les données JSON
data_json = json.loads('{}')
for data_name in data_wanted:
    data_json[data_name] = 0

# unité et leur nom en français
units = {
    'co2': ['la concentration en CO2', 'ppm'],
    'humidity': ["l'humidité", 'RH'],
    'temperature': ['la température', '°C']
}

def on_connect(client, userdata, flags, rc):
    print(f'Connecté au seveur MQTT {host} sur le port {port}.')
    # s'abonne aux appareils voulus
    client.subscribe(f'application/1/device/{device_id}/event/up')
    # définit une alarme
    signal.alarm(5*60)

def on_message(client, userdata, msg):
    payload_json = json.loads(msg.payload)
    # sauvegarde chaque données voulues
    for data_name in data_wanted:
        if data_name in payload_json:
            data_json[data_name] = payload_json[data_name]
            # vérifie si les données reçues dépassent les seuils d'alerte
            if data_name in alert_data:
                if data_name == 'humidity' and data_json[data_name] > alert_hum:
                    print(f"Alerte: L'humidité est supérieure à {alert_hum} %RH!")
                elif data_name == 'temperature' and data_json[data_name] > alert_temp:
                    print(f"Alerte: La température est supérieure à {alert_temp}°C!")
    # écrit les données dans un fichier
    with open(file_name, 'w') as data_file:
        json.dump(data_json, data_file)



# crée un client MQTT
client = mqtt.Client()

# attache les fonctions aux événements
client.on_connect = on_connect
client.on_message = on_message

# se connecte au broker MQTT
client.connect(host, port, 60)

# boucle pour rester connecté au broker
client.loop_forever()
