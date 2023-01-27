<?php

require_once("../include/connect.inc.php");
error_reporting(0);

$query = "select * from produit order by prixProduit desc";
$paniers = oci_parse($connect, $query);
$result = oci_execute($paniers);

if (!$result) {
    $e = oci_error($paniers);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
    print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

    // Redirection avec message d'erreur
    // header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
    exit();
}

while (($panier = oci_fetch_assoc($paniers)) != false) {
    echo '<pre>' . print_r($panier, true) . '</pre>';
}
