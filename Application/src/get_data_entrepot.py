import json
import paho.mqtt.client as mqtt
from os import *
import time

c = open('config.json', O_RDONLY)
config = json.loads(read(c, 1000).decode())

alerte = config["alerte"]

mqttserver = "chirpstack.iut-blagnac.fr"
mqttport = 1883
frequency = 5 # in minutes

def get_data(mqtt, obj, msg):
    f = open("data/"+config["nomFichier"], O_WRONLY | O_CREAT | O_TRUNC, 0o600)
    jsonMsg = json.loads(msg.payload)
    for data in config["data"]:
        donnee = jsonMsg["object"][data]
        if(data == "co2"):
            msg = ("CO2:" + str(donnee)).encode()
            write(f, bytes(msg + b"\n"))
            print("CO2: ", donnee)
        elif(data == "temperature"):
            msg = ("Temperature:" + str(donnee)).encode()
            if ((donnee > config["seuiltemp"])and (data in alerte)):
                print("ALERTE ! Température de l'entrepôt trop élevée pour la conservation des aliments !")
                write(f, bytes(b"AlerteTemperature:1.0\n"))
            else :
                write(f, bytes(b"AlerteTemperature:0.0\n"))
            write(f, bytes(msg + b"\n"))
            print("Temperature: ", donnee)
        elif(data == "humidity"):
            msg = ("Humidity:" + str(donnee)).encode()
            if ((donnee > config["seuilhum"]) and (data in alerte)):
                print("ALERTE ! Humidité de l'entrepôt trop élevée pour la conservation des aliments !")
                write(f, bytes(b"AlerteHumidite:1.0\n"))
            else :
                write(f, bytes(b"AlerteHumidite:0.0\n"))
            write(f, bytes(msg + b"\n"))
            print("Humidité: ", donnee)
    print("---------------------------------")
    close(f)

print("Connexion au server MQTT...")

client = mqtt.Client()
client.connect(mqttserver, mqttport, 600)

client.subscribe("application/1/device/"+config["capteur"]+"/event/up")

client.on_message = get_data

while True:
    client.loop()
    time.sleep(frequency * 60)  # sleep for frequency minutes
