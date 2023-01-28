import json  
import paho.mqtt.client as mqtt
from os import *
import time

# Ouverture et lecture du fichier de configuration
c = open('config.json', O_RDONLY)
config = json.loads(read(c, 1000).decode())

# Récupération de la configuration des alertes
alerte = config["alerte"]

# Configuration du serveur MQTT
mqttserver = "chirpstack.iut-blagnac.fr"
mqttport = 1883
frequency = 1 # fréquence de lecture du fichier en minutes

# Fonction appelée lorsqu'un message est reçu sur le topic abonné
def get_data(mqtt, obj, msg):
    # Ouverture du fichier de données en mode écriture
    f = open("data/"+config["nomFichier"], O_WRONLY | O_CREAT | O_TRUNC, 0o600)
    # Lecture des données JSON contenues dans le message
    jsonMsg = json.loads(msg.payload.decode())
    # Boucle pour extraire les données souhaitées
    for data in config["data"]:
        donnee = jsonMsg["object"][data]
        # Vérification des données de CO2
        if(data == "co2"):
            msg = ("CO2:" + str(donnee)).encode()
            write(f, bytes(msg + b"\n"))
            print("CO2: ", donnee)
        # Vérification des données de température
        elif(data == "temperature"):
            msg = ("Temperature:" + str(donnee)).encode()
            if ((donnee > config["seuiltemp"])and (data in alerte)):
                # Envoi d'une alerte si la température est trop élevée
                print("ALERTE ! Température de l'entrepôt trop élevée pour la conservation des aliments !")
                write(f, bytes(b"AlerteTemperature:1.0\n"))
            else :
                write(f, bytes(b"AlerteTemperature:0.0\n"))
            write(f, bytes(msg + b"\n"))
            print("Temperature: ", donnee)
        # Vérification des données d'humidité
        elif (data == "humidity"):
            msg = ("Humidity:" + str(donnee)).encode()
            if ((donnee > config["seuilhum"]) and (data in alerte)):
                # Envoi d'une alerte si l'humidité est trop élevée
                print("ALERTE ! Humidité de l'entrepôt trop élevée pour la conservation des aliments !")
                write(f, bytes(b"AlerteHumidite:1.0\n"))
            else:
                write(f, bytes(b"AlerteHumidite:0.0\n"))
            write(f, bytes(msg + b"\n"))
            print("Humidité: ", donnee)
    print("---------------------------------")
    # Fermeture du fichier
    close(f)


# Connexion au serveur MQTT
print("Connexion au server MQTT...")

client = mqtt.Client()
client.connect(mqttserver, mqttport, 600)

# Abonnement au topic spécifié dans le fichier de configuration
client.subscribe("application/1/device/" + config["capteur"] + "/event/up")

# Définition de la fonction à appeler lors de la réception d'un message
client.on_message = get_data

# Boucle infinie pour attendre les messages
while True:
    client.loop()
    time.sleep(frequency * 60)  # Fréquence de lecture du fichier
