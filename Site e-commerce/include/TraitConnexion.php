<?php
session_start();

// On vérifie que les champs sont saisies
if (isset($_POST['email']) && isset($_POST['password'])) {
    // connexion à la BD
    require_once("../include/connect.inc.php");
    error_reporting(0);

    // Variables qui stocks les infos de connexion
    $email = htmlspecialchars($_POST['email']); // la fonction htmlspecialchars() permet de convertir les chapines de caractère pour éviter les injections de codes;

    // recherche le mail dans la base de donnée
    $query = 'SELECT * FROM clients WHERE MAILCLIENT = :MAILCLIENT';
    $leclient = oci_parse($connect, $query);
    oci_bind_by_name($leclient, ":MAILCLIENT", $email);
    $result = oci_execute($leclient);

    // On vérifie que des résultats sont trouvés
    // on vérifie les résultats
        if (!$result) {
            $e = oci_error($insertion);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
            print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

            // Redirection avec message d'erreur
            // header('location: /~SAESYS11/pages/connexion.php?error=Erreur inscription... Réessayer');
            exit();
        } else {
        // On parcours les résultats de la requêtes
        while (($lesinfos = oci_fetch_assoc($leclient)) != false) {
            if ($_POST['password'] === $lesinfos['MOTPASSECLIENT']) {
                echo 'Le mot de passe est valide <br>';

                // On vérifie si l'utilisateur à cliquer la case pour avoir un cookie de connexion 
                if (isset($_POST['memo'])) {
                    setcookie("connexionEmail", $_POST['email'], time() + 60);
                }

                // on ajouter les valeurs àla variable de session;
                $_SESSION['access'] = "oui";
                $_SESSION['nomClient'] = $lesinfos['NOMCLIENT'];
                $_SESSION['prenomClient'] = $lesinfos['PRENOMCLIENT'];
                $_SESSION['emailClient'] = $lesinfos['MAILCLIENT'];
                $_SESSION['passwordClient'] = $lesinfos['MOTPASSECLIENT'];

                if (empty($lesinfos['ADRESSECLIENT'])) {
                    $_SESSION['adresseClient'] = '';
                } else {
                    $_SESSION['adresseClient'] = $lesinfos['ADRESSECLIENT'];
                }

                if (empty($lesinfos['ADRESSECLIENT'])) {
                    $_SESSION['telephoneClient'] = '';
                } else {
                    $_SESSION['telephoneClient'] = $lesinfos['TELEPHONECLIENT'];
                }

                header("Location: ../index.php?message=Connexion réussite");
            } else {
                echo 'Le mot de passe est invalide';
                // header("Location: ../index.php?message=Erreur lors de la connexion ... Réessayer");
                exit();
            }
        }
    }
}
