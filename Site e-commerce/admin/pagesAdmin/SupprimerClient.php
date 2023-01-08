<?php
	include "../includeAdmin/secuPageAdmin.php";
?>

<?php 

        include "../includeAdmin/connect.inc.php";
        $query = "BEGIN delete_all_commands("."'".$_GET['pidClient']."'"."); END;";
        $delete=oci_parse($connect, $query);
        // oci_bind_by_name($delete, ':ID', $_GET['pidClient']);
        $success = oci_execute($delete);

        if(!$success){
        	$e = oci_error($delete);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
            print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);
        }else{
        	oci_commit($connect);
        	oci_close($connect);
        	header("location: ./GestionClient.php?mssOK=SuppressionOK");
        }
?>