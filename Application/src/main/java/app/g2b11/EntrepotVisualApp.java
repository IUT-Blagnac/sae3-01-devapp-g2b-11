package app.g2b11;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;
public class EntrepotVisualApp extends Application {

    private FXMLLoader loader = new FXMLLoader(EntrepotVisualApp.class.getResource("EntrepotVisualApp.fxml"));

    @Override
    public void start(Stage stage) throws IOException {
        Scene scene = new Scene(loader.load());
        stage.setTitle("Entrepot VisualApp");
        stage.setResizable(false);
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}