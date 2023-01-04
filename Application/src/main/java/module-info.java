module app.g2b11 {
    requires javafx.controls;
    requires javafx.fxml;
    requires json.simple;
    requires com.google.gson;


    opens app.g2b11 to javafx.fxml;
    exports app.g2b11;
    exports app.g2b11.func;
    opens app.g2b11.func to javafx.fxml;
}