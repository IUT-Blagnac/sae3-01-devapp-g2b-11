package app.g2b11;

import javafx.scene.control.Label;
import javafx.scene.layout.StackPane;

class HoveredThresholdNodea extends StackPane {

    public HoveredThresholdNodea(Double doub) {
        setPrefSize(15, 15);

        final Label label = createDataThresholdLabel(doub);

        setOnMouseEntered(mouseEvent -> {
            getChildren().setAll(label);
            toFront();
        });
        setOnMouseExited(mouseEvent -> getChildren().clear());
    }

    private Label createDataThresholdLabel(Object object) {
        final Label label = new Label(object + "");
        label.getStyleClass().addAll( "chart-line-symbol");
        label.setStyle("-fx-font-size: 11; -fx-font-weight: bold;");

        label.setMinSize(Label.USE_PREF_SIZE, Label.USE_PREF_SIZE);
        return label;
    }
}
