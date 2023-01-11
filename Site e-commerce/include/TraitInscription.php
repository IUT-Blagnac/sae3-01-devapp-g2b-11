<?php

// on inclut le fichier de connexion à la base Oracle
require_once("connect.inc.php");
error_reporting(0);

echo '<h1>Traitement Inscription</h1> <br><br>';

if (isset($_POST['nomClient']) && isset($_POST['prenomClient']) && isset($_POST['mailClient']) && isset($_POST['motPasseClient'])) {
    echo 'Champs saisies <br><br>';

    // Regex qui vérifie que le prénom et le nom saisie sont valides
    //  Commence par une majuscule et peux contenir des lettres de l'alphabet ainsi que des tiret
    $regex = '/^[A-Z][a-zA-Z- ]*$/';;

    if ((!preg_match($regex, $_POST['nomClient'])) || (!preg_match($regex, $_POST['prenomClient']))) {
        echo 'Les champs nom et prénom doivent commencés par une majuscule et ne pas contenir de chiffre <br><br>';
        exit();
    } else {
        echo 'Les champs nom et prénom sont valide <br><br>';
    }

    // Regex qui vérifie que le mail est valide:
    // Se termine par @ suivi d'une chaîne puis d'un . suivi d'une chaîne
    $regex = '/^[\w.-]+@[\w.-]+\.[A-Za-z]{2,6}$/';
    if ((!preg_match($regex, $_POST['mailClient']))) {
        echo "Pour être valide, le mail doit se terminer par @ suivi d'une chaîne puis d'un . suivi d'une chaîne <br><br>";
        exit();
    } else {
        echo 'Le mail est valide <br><br>';
    }

    // Regex qui vérifie que le mot de passe est valide:
    // Contient au minimum 8 caractère dont au minimum : 1 maj, 1 min, 1 chiffre et 1 caractère spécial
    $regex = '/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<pre>]{8,}$/';

    if ((!preg_match($regex, $_POST['motPasseClient']))) {
        echo 'Pour être valide, le mot de passe doit :
                <br> - Contenir au minimum 8 caractères,
                <br> - Contenir au minimum 1 majuscule, 
                <br> - Contenir au minimum 1 minuscule,
                <br> - Contenir au minimum 1 chiffre,
                <br> - Contenir au minimum 1 caractère spéciale <br><br>
                ';
        exit();
    } else {
        echo 'Le mot de passe est valide <br><br>';
    }

    // On écrit la requête
    $query = 'SELECT * FROM CLIENTS WHERE MAILCLIENT = :MAILCLIENT';
    $email = htmlspecialchars($_POST['mailClient']);
    // On prépare la requête
    $leclient = oci_parse($connect, $query);
    // On binde les paramêtres
    oci_bind_by_name($leclient, ":MAILCLIENT", $email);
    // On execute la requête
    $result = oci_execute($leclient);

    // si erreur de requete alors affichage...
    if (!$result) {
        $e = oci_error($leclient);  // on récupère l'exception liée au pb d'execution de la requete
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
        exit();
    }

    // si pas d'erreur alors on vérifie qu'un client a été trouver
    if (($leclient = oci_fetch_assoc($leclient)) != false) {
        echo '<h1>Un client a été trouvé :</h1> <br>';
        echo '<pre>' . print_r($leclient, true) . '</pre> <br><br>';
        exit();
    } else {
        echo '<h1>Aucun client ne possède de compte avec cet email </h1> <br><br>';
        // Requête d'insertion d'un nouveau client dans la base de donnée
        $query = 'INSERT INTO CLIENTS VALUES (seq_clients.nextval, :motPasseClient, :nomClient, :prenomClient, :adresseClient, :telephoneClient, :mailClient, null)';
        $insertion = oci_parse($connect, $query);
        // Variable bindé
        $motPasseClient = $_POST['motPasseClient'];
        $nomClient = htmlspecialchars($_POST['nomClient']);
        $prenomClient = htmlspecialchars($_POST['prenomClient']);
        $adresseClient = '';
        $telephoneClient = '';
        $mailClient = htmlspecialchars($_POST['mailClient']);

        oci_bind_by_name($insertion, ":motPasseClient", $motPasseClient);
        oci_bind_by_name($insertion, ":nomClient", $nomClient);
        oci_bind_by_name($insertion, ":prenomClient", $prenomClient);
        oci_bind_by_name($insertion, ":adresseClient", $adresseClient);
        oci_bind_by_name($insertion, ":telephoneClient", $telephoneClient);
        oci_bind_by_name($insertion, ":mailClient", $mailClient);

        // on exécute la requête
        $result = oci_execute($insertion);

        // on vérifie les résultats
        if (!$result) {
            $e = oci_error($insertion);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
            print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

            // Redirection avec message d'erreur
            // header('location: /~SAESYS11/pages/connexion.php?error=Erreur inscription... Réessayer');
            exit();
        } else {
            oci_commit($connect);
            oci_free_statement($insertion);

            // Redirection vers la page d'accueil
            // header('location: /~SAESYS11/pages/connexion.php?Inscription réussite');
        }
    }
} else {
    echo 'Champs non saisies <br><br>';
    exit();
}
