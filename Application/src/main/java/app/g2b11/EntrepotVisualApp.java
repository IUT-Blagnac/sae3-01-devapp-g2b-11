package app.g2b11;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class EntrepotVisualApp extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(EntrepotVisualApp.class.getResource("EntrepotVisualApp.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Entrepot VisualApp");
        stage.setResizable(false);
        stage.setScene(scene);
        stage.show();
    }

    @Override
    public void stop(){
        System.out.println("CLOSING");
    }

    public static void main(String[] args) {
        launch();
    }
}