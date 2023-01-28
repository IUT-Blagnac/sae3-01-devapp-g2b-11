package app.g2b11.func;


import com.github.cliftonlabs.json_simple.JsonObject;

import java.io.FileWriter;
import java.io.IOException;

public class createJsonConfig {
    
    public static void saveJson(JsonObject c){
        try{
            FileWriter f = new FileWriter("./config.json");
            f.write(c.toJson());
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

    public static void ecrireCapteur(String capteur, JsonObject c){c.put("capteur", capteur);}

    public static void choixdata (String[] data, JsonObject c){
        c.put("data", data);
    }

    public static void choixalerte (String[] alerte, JsonObject c){
        c.put("alerte", alerte);
    }


}
