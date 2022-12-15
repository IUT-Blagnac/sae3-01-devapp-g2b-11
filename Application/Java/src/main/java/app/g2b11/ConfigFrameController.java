package app.g2b11;

import app.g2b11.func.createJsonConfig;
import com.github.cliftonlabs.json_simple.JsonObject;
import com.google.gson.Gson;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Map;

public class ConfigFrameController {

    @FXML
    private Label titre;

    @FXML
    private Label lNom;

    @FXML
    private Label lData;

    @FXML
    private Label lSeuilTemp;

    @FXML
    private Label lSeuilHum;

    @FXML
    private Label lObsSeuilTemp;

    @FXML
    private Label lObsSeuilHum;

    @FXML
    private CheckBox ckTemp;

    @FXML
    private CheckBox ckCO2;

    @FXML
    private CheckBox ckHum;

    @FXML
    private TextField txtNomFichier;

    @FXML
    private Slider slideSeuilTemp;

    @FXML
    private Slider slideSeuilHum;

    @FXML
    private Button butValider;

    private JsonObject config = new JsonObject();

    public void initialize(){
        slideSeuilTemp.valueProperty().addListener((observable, oldValue, newValue) -> {

            lObsSeuilTemp.setText(Integer.toString(newValue.intValue()));

        });

        slideSeuilHum.valueProperty().addListener((observable, oldValue, newValue) -> {

            lObsSeuilHum.setText(Integer.toString(newValue.intValue()));

        });
    }

    public String getNomFich() throws FileNotFoundException {
        Gson gson = new Gson();
        Map<String, String> dico = gson.fromJson(new FileReader("src\\config.json"), Map.class);

        return dico.get("nomFichier");
    }

    public int getSeuilTemp() throws FileNotFoundException {
        Gson gson = new Gson();
        Map<String, Double> dico = gson.fromJson(new FileReader("src\\config.json"), Map.class);

        return dico.get("seuiltemp").intValue();
    }

    public int getSeuilHum() throws  FileNotFoundException{
        Gson gson = new Gson();
        Map<String, Double> dico = gson.fromJson(new FileReader("src\\config.json"), Map.class);

        return dico.get("seuilhum").intValue();
    }


    @FXML
    public void onButValider() {
        int compteur = 0;
        ArrayList<String> dataSelec = new ArrayList<>();
        String[] data;
        String[] alerte;
        if(ckCO2.isSelected()){
            compteur++;
            dataSelec.add("co2");
                    }
        if(ckHum.isSelected()){
            compteur++;
            dataSelec.add("humidity");
        }
        if (ckTemp.isSelected()){
            compteur++;
            dataSelec.add("temperature");
        }
        if(compteur==0){
            Alert a = new Alert(Alert.AlertType.ERROR);
            a.setTitle("Erreur Saisie champ");
            a.setHeaderText("Erreur dans la sélection des données !");
            a.setContentText("Veuillez sélectionner une ou plusieurs données.");

            a.show();
        }
        if (txtNomFichier.getText() == null || txtNomFichier.getText().equals("") || txtNomFichier.getText().equals(" ")){
            Alert a = new Alert(Alert.AlertType.ERROR);
            a.setTitle("Erreur Saisie champ");
            a.setHeaderText("Erreur dans la saisie du nom du fichier !");
            a.setContentText("Veuillez entrer un nom de fichier valide.");

            a.show();
        } else {
            data = new String[compteur];
            alerte = new String[compteur];
            int i = 0;
            for(String e : dataSelec){
                data[i] = e;
                alerte[i] = e;
                i++;
            }

            createJsonConfig.ecrireNomFich(txtNomFichier.getText(), config);

            createJsonConfig.choixdata(data, config);

            createJsonConfig.choixalerte(alerte, config);

            createJsonConfig.ecrireseuil(Integer.parseInt(lObsSeuilTemp.getText()) , Integer.parseInt(lObsSeuilHum.getText()), config);

            createJsonConfig.saveJson(config);

            Alert a = new Alert(Alert.AlertType.INFORMATION);

            a.setTitle("Configuration");

            a.setHeaderText("Vous avez modifié le fichier de configuration");

            a.show();

            Stage stage = (Stage) butValider.getScene().getWindow();

            stage.close();
        }


    }

}
