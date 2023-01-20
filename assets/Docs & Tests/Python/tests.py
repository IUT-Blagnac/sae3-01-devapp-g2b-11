import time
import paho.mqtt.client as mqtt
import json
from os import *
import sys
import signal



# test sur la configuration
try:
    # vérifie que le fichier existe
    assert access('config.json', F_OK)
    # vérifie que le script à le droit de lecture sur le fichier
    assert access('config.json', R_OK)
    # lit le fichier de configuration
    config_file = open('config.json', O_RDONLY)
    config_raw = read(config_file, 1024)
    config_json = json.loads(config_raw.decode())
    close(config_file)

    # charge la configuration
    datas = config_json['data']
    alert_temp = config_json['seuiltemp']
    alert_hum = config_json['seuilhum']
    nom_fich = config_json['nomFichier']
    alerts_data = config_json['alerte']
    capteur = config_json['capteur']
    host = "chirpstack.iut-blagnac.fr"
    port = 1883

    # test les options
    assert isinstance(datas, type([]))
    assert all(isinstance(data, str) for data in datas)
    assert len(datas) >= 1
    assert isinstance(alert_temp, (int, float))
    assert isinstance(alert_hum, (int, float))
    assert isinstance(nom_fich, str)
    assert isinstance(alerts_data, type([]))
    assert all(isinstance(data, str) for data in alerts_data)
    assert isinstance(capteur, str)
    assert len(capteur) == 16
    assert isinstance(host, str)
    assert isinstance(port, int)
    assert 0 < port < 65536
except:
    # en cas de problème à la lecture du fichier de configuration on affiche un message et on arrête le programme
    print('Le fichier de configuration ("config.json") est manquant, le script n\'a pas le droit de lecture ou la configuration est mal écrite.')
    sys.exit(1)

# initialise les données JSON
data_json = json.loads('{}')
#for data_name in data_wanted:
 #   print(data_name)
  #  data_json[data_name] = 0

# unité et leur nom en français
units = {
    'co2': ['la concentration en CO2', 'ppm'],
    'humidity': ["l'humidité", 'RH'],
    'temperature': ['la température', '°C']
}

def on_connect(client, userdata, flags, rc):
    print('Connecté au seveur MQTT '+ host + ' sur le port '+str(port)+'.')
    # s'abonne aux appareils voulus
    client.subscribe('application/1/device/' + capteur + '/event/up')
    # définit une alarme
    signal.alarm(5*60)

def on_message(client, userdata, msg):
    f = open(config_json["nomFichier"][:len(config_json["nomFichier"])-4] + "_test.txt", O_WRONLY | O_CREAT | O_TRUNC, 0o600)
    payload_json = json.loads(msg.payload.decode())
    data_object = payload_json['object']
    # sauvegarde chaque données voulues
    for data in datas:
        data_json[data] = data_object[data]
        print(data_json[data])
    print('-----Capteur :', msg.topic, '-----')
    print('Heure :', time.strftime('%H:%M:%S'))
    print('Données reçues :', data_json)
    # écrit les données dans un fichier
    data_txt = json.dumps(data_json, indent=4)
    print(data_txt.encode())
    write(f, bytes(data_txt.encode()))
    close(f)
    signal.alarm(5 * 60)

# crée un client MQTT
client = mqtt.Client()

# attache les fonctions aux événements
client.on_connect = on_connect
client.on_message = on_message

# se connecte au broker MQTT
client.connect(host, port, 60)


# boucle pour rester connecté au broker
client.loop_forever()
