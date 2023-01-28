<?php session_start();
// connexion à la BD
require_once("../include/connect.inc.php");
error_reporting(0);

// On vérifie que levenshtein(str1, str2)s champs sont saisies
if (isset($_POST['email']) && isset($_POST['password'])) {
    // if(!isset($_SESSION['attempt'])){
    //     $_SESSION['attempt'] = 0;
    // }

    // Variables qui stocks les infos de connexion
    $email = htmlspecialchars($_POST['email']); // la fonction htmlspecialchars() permet de convertir les chapines de caractère pour éviter les injections de codes;
    if ($email == "RoyalBio@gmail.com") {
        $query = 'SELECT * FROM clients WHERE MAILCLIENT = :MAILCLIENT';
        $ad = oci_parse($connect, $query);
        oci_bind_by_name($ad, ":MAILCLIENT", $email);
        $result = oci_execute($ad);

        // On vérifie que des résultats sont trouvés
        // on vérifie les résultats
        if (!$result) {
            // $_COOKIE['failed_attempts']+1;
            $e = oci_error($insertion);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
            // print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

            // Redirection avec message d'erreur
            header('location: /~SAESYS11/index.php?error=Erreur connexion...');
            exit();
        } else {
            // On parcours les résultats de la requêtes
            while (($lesinfos = oci_fetch_assoc($ad)) != false) {
                if (password_verify($_POST['password'], $lesinfos['MOTPASSECLIENT'])) {
                    $_SESSION['access'] = "accessAdmin";
                    header("Location: /~SAESYS11/admin/pagesAdmin/firstConAdmin.php");
                    exit();
                } else {
                    session_destroy();
                    header("Location: /~SAESYS11/index.php?error=Erreur connexion...");
                    exit();
                }
            }
        }
    }

    // recherche le mail dans la base de donnée
    $query = 'SELECT * FROM clients WHERE MAILCLIENT = :MAILCLIENT';
    $leclient = oci_parse($connect, $query);
    oci_bind_by_name($leclient, ":MAILCLIENT", $email);
    $result = oci_execute($leclient);
    // var_dump($result); //renvoie true meme si adresse inexistante dans bd

    // On vérifie que des résultats sont trouvés
    if (!$result) {
        $e = oci_error($insertion);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
        // print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

        // Redirection avec message d'erreur
        header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion...');
        exit();
    } else {
        // On parcours les résultats de la requêtes

        $lesinfos = oci_fetch_assoc($leclient);

        var_dump($lesinfos);

        if($lesinfos != false){
            if (password_verify($_POST['password'], $lesinfos['MOTPASSECLIENT'])) {

                // On vérifie si l'utilisateur à cliquer la case pour avoir un cookie de connexion 
                if (isset($_POST['memo'])) {    
                    setcookie('connexion', $_POST['email'], time() + 365 * 24 * 3600, null, null, false, true);
                }

                // on ajouter les valeurs àla variable de session;
                $_SESSION['access'] = "oui";
                $_SESSION['idClient'] = $lesinfos['IDCLIENT'];
                $_SESSION['nomClient'] = $lesinfos['NOMCLIENT'];
                $_SESSION['prenomClient'] = $lesinfos['PRENOMCLIENT'];
                $_SESSION['emailClient'] = $lesinfos['MAILCLIENT'];
                $_SESSION['adresseClient'] = $lesinfos['ADRESSECLIENT'];
                $_SESSION['numeroClient'] = $lesinfos['TELEPHONECLIENT'];

                // if (empty($lesinfos['ADRESSECLIENT'])) {
                //     $_SESSION['adresseClient'] = '';
                // } else {
                //     $_SESSION['adresseClient'] = $lesinfos['ADRESSECLIENT'];
                // }

                // if (empty($lesinfos['ADRESSECLIENT'])) {
                //     $_SESSION['telephoneClient'] = '';
                // } else {
                //     $_SESSION['telephoneClient'] = $lesinfos['TELEPHONECLIENT'];
                // }

                header("Location: ../index.php?message=Connexion réussite");
                exit();
            } else {
                // $_COOKIE['failed_attempts']+1;
                header("location: /~SAESYS11/pages/connexion.php?error=Le mot de passe saisie est faux");
                exit();
            }
        } else {
            header("Location: ../index.php?message=Aucun client de possede cette email");
            exit();
        }


       /* bug : vérifier ce qui fonctionne pas

        while (($lesinfos = oci_fetch_assoc($leclient)) != false) {

            if (password_verify($_POST['password'], $lesinfos['MOTPASSECLIENT'])) {

                // On vérifie si l'utilisateur à cliquer la case pour avoir un cookie de connexion 
                if (isset($_POST['memo'])) {    
                    setcookie('connexion', $_POST['email'], time() + 365 * 24 * 3600, null, null, false, true);
                }

                // on ajouter les valeurs àla variable de session;
                $_SESSION['access'] = "oui";
                $_SESSION['idClient'] = $lesinfos['IDCLIENT'];
                $_SESSION['nomClient'] = $lesinfos['NOMCLIENT'];
                $_SESSION['prenomClient'] = $lesinfos['PRENOMCLIENT'];
                $_SESSION['emailClient'] = $lesinfos['MAILCLIENT'];
                $_SESSION['adresseClient'] = $lesinfos['ADRESSECLIENT'];
                $_SESSION['numeroClient'] = $lesinfos['TELEPHONECLIENT'];

                // if (empty($lesinfos['ADRESSECLIENT'])) {
                //     $_SESSION['adresseClient'] = '';
                // } else {
                //     $_SESSION['adresseClient'] = $lesinfos['ADRESSECLIENT'];
                // }

                // if (empty($lesinfos['ADRESSECLIENT'])) {
                //     $_SESSION['telephoneClient'] = '';
                // } else {
                //     $_SESSION['telephoneClient'] = $lesinfos['TELEPHONECLIENT'];
                // }

                header("Location: ../index.php?message=Connexion réussite");
                exit();
            } else {
                // $_COOKIE['failed_attempts']+1;
                header("location: /~SAESYS11/pages/connexion.php?error=Erreur connexion...");
                exit();
            }
        }
        */
    }
}
