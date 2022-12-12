package app;


import com.github.cliftonlabs.json_simple.JsonObject;

import java.io.FileWriter;
import java.io.IOException;

public class createJsonConfig {

    public static void main(String[] args) {
        JsonObject config = new JsonObject();
        String[] data = new String[3];

        data[0] = "temperature";
        data[1] = "co2";
        data[2] = "humidity";

        ecrireNomFich("data.txt", config);
        ecrireseuil(8,60,config);
        choixdata(data, config);

        try{
            FileWriter f = new FileWriter("src/config.json");
            f.write(config.toJson());
            f.close();
        } catch (IOException e){
            e.printStackTrace();
        }



    }

    public static void ecrireNomFich(String nom, JsonObject c){
        c.put("nomFichier", nom);
    }

    public static void ecrireseuil(int seuilTemp, int seuilHumid, JsonObject c){
        c.put("seuiltemp", seuilTemp);
        c.put("seuilhum", seuilHumid);
    }

    public static void choixdata (String[] data, JsonObject c){
        c.put("data", data);
    }


}
