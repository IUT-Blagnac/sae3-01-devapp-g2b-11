import json

import paho.mqtt.client as mqtt

from os import *

mqttserver = "chirpstack.iut-blagnac.fr"
mqttport = 1883

def get_data(mqtt, obj, msg):
    f = open(str("data.txt"), O_WRONLY | O_CREAT | O_TRUNC, 0o600)
    jsonMsg = json.loads(msg.payload)
    donnee = jsonMsg["object"]["co2"]
    msg = ("CO2:" + str(donnee)).encode()
    write(f, bytes(msg + b"\n"))
    print("CO2: ", donnee)
    donnee2 = jsonMsg["object"]["temperature"]
    msg2 = ("Temperature:" + str(donnee2)).encode()
    write(f, bytes(msg2 + b"\n"))
    print("Temérature:",donnee2)
    if (donnee2 > 8):
        print("ALERTE ! Température de l'entrepôt trop élevée pour la conservation des aliments !")
    donnee3 = jsonMsg["object"]["humidity"]
    msg3 = ("Humidité:" + str(donnee3)).encode()
    write(f, bytes(msg3 + b"\n"))
    print("Humidité : ",donnee3 )
    if(donnee3 > 60):
        print("ALERTE ! Humidité de l'entrepôt trop élevée pour la conservation des aliments !")
    print("---------------------------------")

print("Connexion au server MQTT...")

client = mqtt.Client()
client.connect(mqttserver, mqttport, 600)

client.subscribe("application/1/device/+/event/up")
#24e124128c017760


client.on_message = get_data

client.loop_forever()

