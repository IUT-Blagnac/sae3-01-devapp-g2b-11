package app.config;

import app.EntrepotVisualApp;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class ConfigFenetre extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(EntrepotVisualApp.class.getResource("Config_vue.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 320, 240);
        stage.setTitle("Entrepot VisualApp");
        stage.setScene(scene);
        stage.show();
    }
}
