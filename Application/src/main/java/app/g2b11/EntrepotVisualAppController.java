package app.g2b11;

import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

public class EntrepotVisualAppController {
    @FXML
    private Label titre;

    @FXML
    private Button butConfig;

    @FXML
    private Button butData;

    private Stage stage;

    private DataFrameController dataController = new DataFrameController();

    private ConfigFrameController configController = new ConfigFrameController();
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
            stage.setTitle("Configuration");
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
            stage.setTitle("Visualisation des données");
            stage.show();

            //end all scheduledExecutorService on closing window
            stage.setOnCloseRequest(new EventHandler<WindowEvent>() {
                @Override
                public void handle(WindowEvent event) {
                    DataFrameController controller = fxmlLoader.getController();
                    controller.endAllScheduledExecutorService();
                    System.out.println("ENDING");
                }
            });
        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }

}