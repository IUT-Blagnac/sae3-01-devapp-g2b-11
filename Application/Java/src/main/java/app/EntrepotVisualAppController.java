package app;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Text;

public class EntrepotVisualAppController {
    @FXML
    private Text Titre;

    @FXML
    private GridPane grid;

    @FXML
    private Button ConfigBut;

    @FXML
    private Button DataBut;

    @FXML
    protected void onButtonClick() {
        Titre.setText("Welcome to JavaFX Application!");
    }
}