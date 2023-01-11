<?php
	include "../includeAdmin/secuPageAdmin.php";
?>

<?php 
        // On inclut le fichier de connexion à la base de données
        include "../includeAdmin/connect.inc.php";

        // On prépare la requête qui appelle la procédure stockée delete_all_product()
        $query = "BEGIN delete_all_product("."'".$_GET['pidProduit']."'"."); END;";

        // On prépare l'exécution de la requête
        $delete=oci_parse($connect, $query);

        // On exécute la requête
        $success = oci_execute($delete);

        // Si l'exécution de la requête a échoué
        if(!$success){
            // On récupère l'exception liée au problème d'exécution de la requête (violation de clé primaire par exemple)
            $e = oci_error($delete);  
            // On affiche le message d'erreur et le texte de la requête qui a causé l'erreur
            print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);
        } else { // Si l'exécution de la requête a réussi
            // On valide les changements sur la base de données
            oci_commit($connect);
            // On ferme la connexion à la base de données
            oci_close($connect);
            // On redirige l'utilisateur vers la page GestionProduits.php avec un message de confirmation de suppression
            header("location: ./GestionProduits.php?mssOK=SuppressionOK");
        }
?>