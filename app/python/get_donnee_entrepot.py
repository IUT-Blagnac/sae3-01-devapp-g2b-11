import json

import paho.mqtt.client as mqtt

from os import *

c = open('config.json', O_RDONLY)
config = json.loads(read(c, 1000))

mqttserver = "chirpstack.iut-blagnac.fr"
mqttport = 1883

def get_data(mqtt, obj, msg):
    f = open(config["nomFichier"], O_WRONLY | O_CREAT | O_TRUNC, 0o600)
    jsonMsg = json.loads(msg.payload)
    for data in config["data"]:
        donnee = jsonMsg["object"][data]
        if(data == "co2"):
            msg = ("CO2:" + str(donnee)).encode()
            write(f, bytes(msg + b"\n"))
            print("CO2: ", donnee)
        elif(data == "temperature"):
            msg = ("Temperature:" + str(donnee)).encode()
            if (donnee > config["seuiltemp"]):
                print("ALERTE ! Température de l'entrepôt trop élevée pour la conservation des aliments !")
            write(f, bytes(msg + b"\n"))
            print("Temperature: ", donnee)
        elif(data == "humidity"):
            msg = ("Humidité:" + str(donnee)).encode()
            if (donnee > config["seuilhum"]):
                print("ALERTE ! Humidité de l'entrepôt trop élevée pour la conservation des aliments !")
            write(f, bytes(msg + b"\n"))
            print("Humidité: ", donnee)

    print("---------------------------------")

print("Connexion au server MQTT...")

client = mqtt.Client()
client.connect(mqttserver, mqttport, 600)

client.subscribe("application/1/device/+/event/up")
#24e124128c017760

client.on_message = get_data

client.loop_forever()

