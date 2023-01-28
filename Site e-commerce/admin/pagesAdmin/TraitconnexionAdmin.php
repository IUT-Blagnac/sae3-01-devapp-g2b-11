
<?php
    session_start(); //lancement de la sessions

    //on verifie que les champ pour le numéro de l'employé et le mot de passe sont bien remplis
    if(isset($_POST['numEmp'])&& isset($_POST['password'])){
        require_once("../includeAdmin/connect.inc.php"); //connexion à la base de donnée
        error_reporting(0);
        // Variable qui stocks les infos de connexion
        $numEmp = htmlspecialchars($_POST['numEmp'],ENT_QUOTES, 'UTF-8');
        $mdp = htmlspecialchars($_POST['password'],ENT_QUOTES, 'UTF-8'); 
        
        // recherche le numéro de l'employé dans la base de donnée
        $query = "SELECT * FROM ADMIN WHERE NUMEMPLOYE = '".$numEmp."'";
        $leclient = oci_parse($connect, $query);
        $result = oci_execute($leclient);

        if($result == FALSE){ //si l'exécution ne fonctionne pas on renvoie sur la page de connexion avec un message d'erreur
            header ('location: ../pagesAdmin/connexionAdmin.php?msgErreur=Tentative%20d%27acces%20interdite');
        }
        
        while(($admin = oci_fetch_assoc($leclient))!=false){
            // On vérifie que le mots de passe saisies correspond à celui de l'employé
            if (password_verify($mdp, $admin['MOTPASSEADMIN'])){
                // on ajouter les valeurs à la variable de session;
                $_SESSION['access'] = "accessAdmin";
                $_SESSION['numEmploye'] = $admin['NUMEMPLOYE'];
                $_SESSION['nomAdmin'] = $admin['NOMADMIN'];
                $_SESSION['prenomAdmin'] = $admin['PRENOMADMIN'];
                $_SESSION['mailAdmin'] = $admin['MAILADMIN'];

                // Redirection vers la page d'accueil
                header ('location: ../indexAdmin.php?pnumEmp='.$_SESSION['numEmploye']);
            }else{
                // Redirection vers la page de connexion avec un message d'erreur
                header ('location: ../pagesAdmin/connexionAdmin.php?msgErreur=Tentative%20d%27acces%20interdite');
                exit();
            }
            
        }
    }
    oci_close($connect); //on ferme le connexion à la base de donnée
?>