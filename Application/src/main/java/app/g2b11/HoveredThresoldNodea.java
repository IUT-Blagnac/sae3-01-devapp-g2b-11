package app.g2b11;

import javafx.event.EventHandler;
import javafx.scene.Cursor;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;

class HoveredThresholdNodea extends StackPane {

    public HoveredThresholdNodea(Double doub, String typed) {
        setPrefSize(15, 15);

        final Label label = createDataThresholdLabel(doub, typed);

        setOnMouseEntered(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                getChildren().setAll(label);
                toFront();
            }
        });
        setOnMouseExited(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                getChildren().clear();
            }
        });
    }

    private Label createDataThresholdLabel(Object object, String typed) {
        final Label label = new Label(object + "");
        label.getStyleClass().addAll( "chart-line-symbol");
        label.setStyle("-fx-font-size: 11; -fx-font-weight: bold;");

        label.setMinSize(Label.USE_PREF_SIZE, Label.USE_PREF_SIZE);
        return label;
    }
}
