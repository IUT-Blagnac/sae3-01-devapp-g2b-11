<?php session_start();

// Connexion à la Base de données
require_once("../include/connect.inc.php");
error_reporting(0);

// Vérification si les champs sont saisies
if (isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['email']) && isset($_POST['telephone']) && isset($_POST['adresse']) && isset($_POST['motPasse'])) {
    // Regex qui vérifie que le prénom et le nom saisie sont valides
    //  Commence par une majuscule et peux contenir des lettres de l'alphabet ainsi que des tiret
    $regex = '/^[A-Z][a-zA-Z- ]*$/';;

    if ((!preg_match($regex, $_POST['nom'])) || (!preg_match($regex, $_POST['prenom']))) {
        header('location: /~SAESYS11/pages/modification.php?error=champs nom et prenom non valides');
        exit();
    }

    // Regex qui vérifie que le mail est valide:
    // Se termine par @ suivi d'une chaîne puis d'un . suivi d'une chaîne
    $regex = '/^[\w.-]+@[\w.-]+\.[A-Za-z]{2,6}$/';
    if ((!preg_match($regex, $_POST['email']))) {
        header('location: /~SAESYS11/pages/modification.php?error=champs email non valide');
        exit();
    }

    // Regex qui vérifie que le mot de passe est valide:
    // Contient au minimum 8 caractère dont au minimum : 1 maj, 1 min, 1 chiffre et 1 caractère spécial
    $regex = '/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<pre>]{8,}$/';
    if ((!preg_match($regex, $_POST['motPasse']))) {
        header('location: /~SAESYS11/pages/modification.php?error=champs mot de passe non valide');
        exit();
    }

    // Regex qui vérifie que le num de tel est valide:
    // Contient exactement 10 caractères qui sont des chiffres
    $regex = '/^\d{10}$/';
    if ((!preg_match($regex, $_POST['telephone']))) {
        header('location: /~SAESYS11/pages/modification.php?error=champs telephone non valide');
        exit();
    }

    /*
        On recherche les informations du compte avec l'email saisit
    */
    $email = htmlspecialchars($_POST['email']);
    $motPasse = htmlspecialchars($_POST['motPasse']);
    $query = "SELECT * FROM CLIENTS WHERE MAILCLIENT = '$email'";
    $leclient = oci_parse($connect, $query);
    $result = oci_execute($leclient);

    if (!$result) {
        $e = oci_error($leclient);  // on récupère l'exception liée au pb d'execution de la requete
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
        exit();
    }

    while (($leclient = oci_fetch_assoc($leclient)) != false) {
        $hash = $leclient['MOTPASSECLIENT'];
        // On vérifie que le mot de passe saisit est correct
        if (password_verify($motPasse, $hash)) {
            /*
                On met à jour les données du compte avec les données saisies 
            */
            $query = "UPDATE CLIENTS SET NOMCLIENT = :nomClient, PRENOMCLIENT = :prenomClient, MAILCLIENT = :emailClient, TELEPHONECLIENT = :telephoneClient, ADRESSECLIENT = :adresseClient, MOTPASSECLIENT = :motPasseClient WHERE MAILCLIENT = '$email'";
            $update = oci_parse($connect, $query);

            // Variable bindé
            $nomClient = htmlspecialchars($_POST['nom']);
            $prenomClient = htmlspecialchars($_POST['prenom']);
            $emailClient = htmlspecialchars($_POST['email']);
            $telephoneClient = htmlspecialchars($_POST['telephone']);;
            $adresseClient = htmlspecialchars($_POST['adresse']);
            $motPasseClient = password_hash($_POST['motPasse'], PASSWORD_DEFAULT);

            oci_bind_by_name($update, ":nomClient", $nomClient);
            oci_bind_by_name($update, ":prenomClient", $prenomClient);
            oci_bind_by_name($update, ":emailClient", $emailClient);
            oci_bind_by_name($update, ":telephoneClient", $telephoneClient);
            oci_bind_by_name($update, ":adresseClient", $adresseClient);
            oci_bind_by_name($update, ":motPasseClient", $motPasseClient);

            // On execute la requête
            $result = oci_execute($update);

            // on vérifie les résultats
            if (!$result) {
                $e = oci_error($update);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

                // Redirection avec message d'erreur
                header('location:  /~SAESYS11/pages/modification.php?error=Erreur lors de la modification ... Réessayer');
                exit();
            }

            // Commit dans la base de données
            oci_commit($connect);
            oci_free_statement($update);
        } else {
            header('location: /~SAESYS11/pages/modification.php?error=Mot de passe incorrect');
            exit();
        }
    }

    /*
        On recherche les nouvelles infos du compte
    */
    $query = 'SELECT * FROM clients WHERE MAILCLIENT = :MAILCLIENT';
    $leclient = oci_parse($connect, $query);

    // on binde la valeur
    oci_bind_by_name($leclient, ":MAILCLIENT", $email);

    // on éxecute la requête
    $result = oci_execute($leclient);

    // si erreur de requete alors affichage...
    if (!$result) {
        $e = oci_error($leclient);  // on récupère l'exception liée au pb d'execution de la requete
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
        exit();
    }

    while (($leclient = oci_fetch_assoc($leclient)) != false) {
        /*
            On met à jour les valeurs de la SESSION
        */
        $_SESSION['nomClient'] = $leclient['NOMCLIENT'];
        $_SESSION['prenomClient'] = $leclient['PRENOMCLIENT'];
        $_SESSION['emailClient'] = $leclient['MAILCLIENT'];
        $_SESSION['adresseClient'] = $leclient['ADRESSECLIENT'];
        $_SESSION['numeroClient'] = $leclient['TELEPHONECLIENT'];

        header('location: /~SAESYS11/pages/connexion.php?message=Modification réussite');
    }
} else {
    header('location: /~SAESYS11/pages/modification.php?error=Champs non saisies');
    exit();
}
