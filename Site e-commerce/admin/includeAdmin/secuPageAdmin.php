<?php //verifie si il y a bien une connexion enregistré au site pour accéder à la page
        session_start();
        if(!isset($_SESSION['access']) || $_SESSION['access']!='accessAdmin'){
            header("location: /~SAESYS11/pages/connexion.php");
            die();
        }

?>