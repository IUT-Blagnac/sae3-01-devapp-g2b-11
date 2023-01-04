
<?php
    session_start();
    if(isset($_POST['numEmp'])&& isset($_POST['password'])){
        require_once("../includeAdmin/connect.inc.php");
        error_reporting(0);
        // Variables qui stocks les infos de connexion
        $numEmp = $_POST['numEmp']; 
        // recherche le mail dans la base de donnée
        //$query = "SELECT * FROM ADMIN WHERE NUMEMPLOYE = :NUMEMPLOYE";
        $query = "SELECT * FROM ADMIN WHERE NUMEMPLOYE = '".$numEmp."'";
        $leclient = oci_parse($connect, $query);
        //oci_bind_by_name($leclient, ":NUMEMPLOYE", $numEmp);
        $result = oci_execute($leclient);

        if($result == FALSE){
            header ('location: ../pagesAdmin/connexionAdmin.php?msgErreur=Tentative%20d%27acces%20interdite');
        }
        $admin = oci_fetch_assoc($leclient);
        if($admin==FALSE){
            header ('location: ../pagesAdmin/connexionAdmin.php?msgErreur=Tentative%20d%27acces%20interdite');
        }else{
            // On vérifie que le mots de passe saisies correspons à celui du compte
            if (password_verify($_POST['password'], $admin['MOTPASSEADMIN'])){
                // on ajouter les valeurs àla variable de session;
                $_SESSION['access'] = "accessAdmin";
                $_SESSION['numEmploye'] = $admin['NUMEMPLOYE'];
                $_SESSION['nomAdmin'] = $admin['NOMADMIN'];
                $_SESSION['prenomAdmin'] = $admin['PRENOMADMIN'];
                $_SESSION['mailAdmin'] = $admin['MAILADMIN'];

                // Redirection vers la page d'accueil
                header ('location: ../indexAdmin.php?');
            }else{
                // Redirection vers la page d'accueil avec un message d'erreur
                header ('location: ../pagesAdmin/connexionAdmin.php?msgErreur=Tentative%20d%27acces%20interdite');
                exit();
            }
            
        }
    }
?>