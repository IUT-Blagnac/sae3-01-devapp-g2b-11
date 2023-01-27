package app.g2b11;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Alert;
import javafx.scene.control.ListView;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class DataFrameController {

    @FXML
    private CategoryAxis xAxis = new CategoryAxis();

    @FXML
    private NumberAxis yAxis = new NumberAxis();

    @FXML
    private LineChart chartTemp;

    @FXML
    private ListView lvData;

    private ScheduledExecutorService scheduledExecutorService;

    private ConfigFrameController configController = new ConfigFrameController();

    private Map<String, Double> datadict = new HashMap<String, Double>();

    private ArrayList<Double> valCO2 = new ArrayList<>();

    private ArrayList<Double> valHum = new ArrayList<>();

    @FXML
    private void initialize() throws IOException {
        String nomFichier = null;
        nomFichier = configController.getNomFich();
        // Chemin du fichier
        Path path = Paths.get("./data/", nomFichier);// chemin du fichier � lire
        List<String> lignes = new ArrayList();
        // on essaye de lire les lignes du fichier contenu au chemin "path"
        lignes = Files.readAllLines(path);

        String a[] = {""};

        // On ajoute ces lignes dans le dictionnaire
        for (String ligne : lignes) {
            a = ligne.split(":", 2);
            datadict.put(a[0], Double.valueOf(a[1]));
        }

            // this is used to display time in HH:mm:ss format
            final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");

            final SimpleDateFormat dayDateFormat = new SimpleDateFormat("dd/MM");
            XYChart.Series dataSeriesHum = new XYChart.Series();
            XYChart.Series dataSeriesTemp = new XYChart.Series();
            XYChart.Series dataSeriesCO2 = new XYChart.Series();

            if(datadict.keySet().contains("Humidity")){
                dataSeriesHum.setName("Humidité en %");
                chartTemp.getData().add(dataSeriesHum);
                String msgData = "Humidité : " + datadict.get("Humidity");
                lvData.getItems().add(msgData);
            }
            if(datadict.keySet().contains("Temperature")){
                dataSeriesTemp.setName("Température en °C");
                chartTemp.getData().add(dataSeriesTemp);
                lvData.getItems().add(("Température : " + datadict.get("Temperature")));
            }
            if(datadict.keySet().contains("CO2")){
                dataSeriesCO2.setName("Taux de CO2 en ppm / 100");
                chartTemp.getData().add(dataSeriesCO2);
                lvData.getItems().add("CO2 : " + datadict.get("CO2"));
            }
            // setup a scheduled executor to periodically put data into the chart
            scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();

            // put dummy data onto graph per second
            scheduledExecutorService.scheduleAtFixedRate(() -> {

                // Update the chart
                Platform.runLater(() -> {
                    String nomFichier2 = null;
                    Date now = new Date();
                    try {
                        nomFichier2 = configController.getNomFich();
                        // Chemin du fichier
                        Path path2 = Paths.get("./data/" + nomFichier2); // chemin du fichier � lire
                        List<String> lignes2 = new ArrayList();
                        // on essaye de lire les lignes du fichier contenu au chemin "path"
                        lignes2 = Files.readAllLines(path2);

                        String a2[] = {""};

                        // On ajoute ces lignes dans le dictionnaire
                        for (String ligne : lignes2) {
                            a2 = ligne.split(":", 2);
                            datadict.put(a2[0], Double.valueOf(a2[1]));
                        }

                        lvData.getItems().clear();
                        // met dans les séries respectives les valeurs demandées par l'utilisateur
                        if (datadict.keySet().contains("Temperature")) {
                            final XYChart.Data<String, Double> dataT = new XYChart.Data(simpleDateFormat.format(now), datadict.get("Temperature"));
                            dataT.setNode(new HoveredThresholdNodea(datadict.get("Temperature")));
                            dataSeriesTemp.getData().add(dataT);
                            lvData.getItems().add("Température : " + datadict.get("Temperature"));
                            if(datadict.get("AlerteTemperature") == 1.0){ // gestion des alertes de température
                                Alert seuilTemp = new Alert(Alert.AlertType.WARNING);
                                seuilTemp.setTitle("Alerte seuil");
                                seuilTemp.setHeaderText("Seuil température trop élevé");
                                seuilTemp.setContentText("Seuil de température trop élevé à " + simpleDateFormat.format(now) + " le " + dayDateFormat.format(now));
                                seuilTemp.show();
                            }
                        }
                        if (datadict.keySet().contains("CO2")) {
                            final XYChart.Data<String, Double> dataC = new XYChart.Data(simpleDateFormat.format(now), datadict.get("CO2") /100.0);
                            dataC.setNode(new HoveredThresholdNodea(datadict.get("CO2")/100));
                            dataSeriesCO2.getData().add(dataC);
                            valCO2.add((datadict.get("CO2"))/100.0);
                            lvData.getItems().add("CO2 : " + datadict.get("CO2"));
                        }
                        if (datadict.keySet().contains("Humidity")) {
                            final XYChart.Data<String, Double> dataH = new XYChart.Data(simpleDateFormat.format(now), datadict.get("Humidity"));
                            dataH.setNode(new HoveredThresholdNodea(datadict.get("Humidity")));
                            dataSeriesHum.getData().add(dataH);
                            valHum.add(datadict.get("Humidity"));
                            lvData.getItems().add("Humidité : " + datadict.get("Humidity"));
                            if(datadict.get("AlerteHumidite") == 1.0){ // gestion des alertes d'humidité
                                Alert seuilHum = new Alert(Alert.AlertType.WARNING);
                                seuilHum.setTitle("Alerte seuil");
                                seuilHum.setHeaderText("Seuil d'humidité trop élevé");
                                seuilHum.setContentText("Seuil d'humidité trop élevé à " + simpleDateFormat.format(now) + " le " + dayDateFormat.format(now));
                                seuilHum.show();
                            }
                        }

                    } catch (IOException e) {
                        Alert aB = new Alert(Alert.AlertType.ERROR);

                        aB.setTitle("Erreur nom fichier");

                        aB.setHeaderText("Erreur dans la saisie du nom du fichier de données !");

                        aB.setContentText("Veuillez saisir un nom de fichier existant dans le fichier de configuration");

                        aB.show();
                    }

                });
            }, 0, 10, TimeUnit.MINUTES);
    }


    public void endAllScheduledExecutorService() {
        scheduledExecutorService.shutdown();

    }
}
