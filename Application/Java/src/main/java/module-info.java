module com.example.devapp {
    requires javafx.controls;
    requires javafx.fxml;
    requires json.simple;


    exports app;
    opens app to javafx.fxml;
    exports app.config;
    opens app.config to javafx.fxml;
}