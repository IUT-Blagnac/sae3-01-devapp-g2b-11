package app.g2b11;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.stage.Stage;

public class EntrepotVisualAppController {
    @FXML
    private Label titre;

    @FXML
    private Button butConfig;

    @FXML
    private Button butData;

    private Stage stage;

    @FXML
    public void initialize(){
        stage = new Stage();
    }

    @FXML
    protected void onConfigButtonClick() {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("ConfigFrame.fxml"));
            Parent root1 = (Parent) fxmlLoader.load();
            stage.setScene(new Scene(root1));
            stage.setResizable(false);
            stage.show();
        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    protected void onDataButtonClick() {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("DataFrame.fxml"));
            Parent root1 = (Parent) fxmlLoader.load();
            stage.setScene(new Scene(root1));
            stage.setResizable(false);
            stage.show();
        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }

}