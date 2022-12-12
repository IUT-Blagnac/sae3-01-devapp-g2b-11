package app.g2b11;

import javafx.fxml.FXML;
import javafx.scene.control.*;
import app.g2b11.func.createJsonConfig;
import com.github.cliftonlabs.json_simple.*;

import java.util.ArrayList;

public class ConfigFrameController {

    private createJsonConfig createJson = new createJsonConfig();

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

    public void initialize(){
        slideSeuilTemp.valueProperty().addListener((observable, oldValue, newValue) -> {

            lObsSeuilTemp.setText(Integer.toString(newValue.intValue()));

        });

        slideSeuilHum.valueProperty().addListener((observable, oldValue, newValue) -> {

            lObsSeuilHum.setText(Integer.toString(newValue.intValue()));

        });
    }

    @FXML
    public void onButValider(){
        JsonObject config = new JsonObject();
        int compteur = 0;
        ArrayList<String> dataSelec = new ArrayList<>();
        String[] data;
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
        if (txtNomFichier.getText().equals(null) || txtNomFichier.getText().equals("") || txtNomFichier.getText().equals(" ")){
            Alert a = new Alert(Alert.AlertType.ERROR);
            a.setTitle("Erreur Saisie champ");
            a.setHeaderText("Erreur dans la saisie du nom du fichier !");
            a.setContentText("Veuillez entrer un nom de fichier valide.");

            a.show();
        } else {
            data = new String[compteur];
            int i = 0;
            for(String e : dataSelec){
                data[i] = e;
                i++;
            }


            createJson.ecrireNomFich(txtNomFichier.getText(), config);

            createJson.choixdata(data, config);

            createJson.ecrireseuil(Integer.parseInt(lObsSeuilTemp.getText()) , Integer.parseInt(lObsSeuilHum.getText()), config);

            createJson.saveJson(config);

            System.out.println(config.toJson());
        }


    }

}
