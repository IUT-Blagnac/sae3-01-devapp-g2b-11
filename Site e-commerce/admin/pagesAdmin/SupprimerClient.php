<?php
	include "../includeAdmin/secuPageAdmin.php";
?>

<?php 
    // On inclut les informations de connexion à la base de données
    include "../includeAdmin/connect.inc.php";

    // On définit la requête SQL qui va être exécutée
    $query = "BEGIN delete_all_commands("."'".$_GET['pidClient']."'"."); END;";

    // On prépare la requête SQL
    $delete=oci_parse($connect, $query);

    // On exécute la requête SQL
    $success = oci_execute($delete);

    // Si la requête n'a pas pu être exécutée
    if(!$success){
        // On récupère l'exception liée au problème d'exécution de la requête
        $e = oci_error($delete);
        // On affiche le message d'erreur ainsi que le texte de la requête qui a causé l'erreur
        print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);
    // Sinon
    }else{
        // On valide les modifications apportées à la base de données
        oci_commit($connect);
        // On ferme la connexion à la base de données
        oci_close($connect);
        // On redirige l'utilisateur vers la page de gestion des clients en lui indiquant que la suppression a été effectuée avec succès
        header("location: ./GestionClient.php?mssOK=SuppressionOK");
    }
?>