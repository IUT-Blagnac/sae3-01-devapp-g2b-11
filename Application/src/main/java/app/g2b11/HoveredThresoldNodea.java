package app.g2b11;

import javafx.event.EventHandler;
import javafx.scene.Cursor;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;

class HoveredThresholdNodea extends StackPane {

    public HoveredThresholdNodea(String date, Double doub) {
        setPrefSize(15, 15);

        final Label label = createDataThresholdLabel(String.valueOf(date), doub);

        setOnMouseEntered(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                getChildren().setAll(label);
                setCursor(Cursor.NONE);
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

    private Label createDataThresholdLabel(String string, Object object) {
        final Label label = new Label(object + "");
        label.getStyleClass().addAll("default-color0", "chart-line-symbol", "chart-series-line");
        label.setStyle("-fx-font-size: 20; -fx-font-weight: bold;");

            label.setTextFill(Color.GREEN);
            label.setStyle("-fx-border-color: GREEN;");

        label.setMinSize(Label.USE_PREF_SIZE, Label.USE_PREF_SIZE);
        return label;
    }
}
