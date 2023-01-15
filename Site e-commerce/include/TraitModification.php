<?php session_start();

require_once("../include/connect.inc.php");
error_reporting(0);

echo 'Trait Modification <br><br>';

if (isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['email']) && isset($_POST['telephone']) && isset($_POST['adresse']) && isset($_POST['motPasse'])) {
    echo 'Champs saisies';

    $email = $_POST['email'];

    $query = "UPDATE CLIENTS SET NOMCLIENT = :nomClient, PRENOMCLIENT = :prenomClient, MAILCLIENT = :emailClient, TELEPHONECLIENT = :telephoneClient, ADRESSECLIENT = :adresseClient, MOTPASSECLIENT = :motPasseClient WHERE MAILCLIENT = '$email'";

    echo $query;
    $update = oci_parse($connect, $query);

    // Variable bindé
    $nomClient = htmlspecialchars($_POST['nom']);
    $prenomClient = htmlspecialchars($_POST['prenom']);
    $emailClient = htmlspecialchars($_POST['email']);
    $telephoneClient = htmlspecialchars($_POST['telephone']);;
    $adresseClient = htmlspecialchars($_POST['adresse']);
    $motPasseClient = $_POST['motPasse'];

    oci_bind_by_name($update, ":nomClient", $nomClient);
    oci_bind_by_name($update, ":prenomClient", $prenomClient);
    oci_bind_by_name($update, ":emailClient", $emailClient);
    oci_bind_by_name($update, ":telephoneClient", $telephoneClient);
    oci_bind_by_name($update, ":adresseClient", $adresseClient);
    oci_bind_by_name($update, ":motPasseClient", $motPasseClient);

    // on exécute la requête
    $result = oci_execute($update);

    // on vérifie les résultats
    if (!$result) {
        $e = oci_error($update);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
        echo '<br><br>';
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

        // Redirection avec message d'erreur
        header('location: /~SAESYS11/index.php?error=Erreur lors de la modification ... Réessayer');
        exit();
    } else {
        // Commit dans la base de données
        oci_commit($connect);
        oci_free_statement($update);

        // recherche le mail dans la base de donnée
        $query = 'SELECT * FROM clients WHERE MAILCLIENT = :MAILCLIENT';
        $leclient = oci_parse($connect, $query);
        oci_bind_by_name($leclient, ":MAILCLIENT", $email);
        $result = oci_execute($leclient);

        // si erreur de requete alors affichage...
        if (!$result) {
            $e = oci_error($leclient);  // on récupère l'exception liée au pb d'execution de la requete
            print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
            exit();
        }

        // si pas d'erreur alors on vérifie qu'un client a été trouver
        if (($leclient = oci_fetch_assoc($leclient)) != false && $leclient['MAILCLIENT'] != $_POST['email']
        ) {
            echo '<h1>Un client a été trouvé :</h1> <br>';
            echo '<pre>' . print_r($leclient, true) . '</pre> <br><br>';
            exit();
        } else {
            oci_commit($connect);
        }

        // On parcours les résultats de la requêtes et on modifier les informations de la session
        while (($lesinfos = oci_fetch_assoc($leclient)) != false) {
            $_SESSION['nomClient'] = $lesinfos['NOMCLIENT'];
            $_SESSION['prenomClient'] = $lesinfos['PRENOMCLIENT'];
            $_SESSION['emailClient'] = $lesinfos['MAILCLIENT'];
            $_SESSION['telephoneClient'] = $lesinfos['TELEPHONECLIENT'];
            $_SESSION['adresseClient'] = $lesinfos['ADRESSECLIENT'];
            $_SESSION['passwordClient'] = $lesinfos['MOTPASSECLIENT'];
        }
        // Redirection vers la page d'accueil
        header('location: /~SAESYS11/index.php?message=Modification réussite');
    }
}
