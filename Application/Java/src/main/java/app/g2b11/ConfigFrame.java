package app.g2b11;

import app.g2b11.EntrepotVisualApp;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;


import java.io.IOException;

public class ConfigFrame extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(ConfigFrame.class.getResource("ConfigFrame.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        primaryStage.setTitle("Entrepot VisualApp");
        primaryStage.setResizable(false);
        primaryStage.setScene(scene);
        primaryStage.show();
    }
}
