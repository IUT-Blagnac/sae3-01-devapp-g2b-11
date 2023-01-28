<?php  
	// on inclut le fichier de connexion à la base Oracle
	require_once("connect.inc.php");
	error_reporting(0);

	$nomM = $_POST['nom'];
	$prenomM = $_POST['prenom'];
	$mailm = $_POST['email'];
	$objm = $_POST['objet'];
	$contentM = $_POST['contenu'];
	$lu='n';
	$date = date("d-m-Y");
	$del='n';

	$query = 'INSERT INTO MESSAGERIE VALUES (seq_id_mess.nextval,:nomMess,:prenomMess,:mailMess,:objMess,:contentMess,:lu,'."TO_DATE(:dateMess,"."'DD-MM-YYYY'"."),:deleted)";
    $mess = oci_parse($connect, $query);
    oci_bind_by_name($mess, ':nomMess', $nomM);
    oci_bind_by_name($mess, ':prenomMess', $prenomM);
    oci_bind_by_name($mess, ':mailMess', $mailm);
    oci_bind_by_name($mess, ':objMess', $objm);
    oci_bind_by_name($mess, ':contentMess', $contentM);
    oci_bind_by_name($mess,':lu',$lu);
    oci_bind_by_name($mess,':dateMess',$date);
    oci_bind_by_name($mess,':deleted',$del);
    $result = oci_execute($mess);

    if (!$result) {
        $e = oci_error($mess);  // on récupère l'exception liée au pb d'execution de la requete
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
        exit();
	}
	oci_commit($connect);
	oci_close($connect);
	header("location: /~SAESYS11/pages/contact.php?mess=Message envoyé");
?>