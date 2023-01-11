<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/~SAESYS11/styles/connexions.css">
<link rel="stylesheet" href="/~SAESYS11/styles/infoCompte.css">

<!-- INCLUDES LINKS -->
<link rel="stylesheet" href="/~SAESYS11/styles.css">
<script src="../include/acces.js"></script>
</head>

<body>
<?php include "../include/header.php"; ?>

<div class="container">
<?php

//$cart = $_SESSION['cart'];

$id = 'Feta';
echo '<table>';
echo '<tr>';
echo '<th>Nom du produit</th>';
echo '<th>Prix</th>';
// Ajoutez les autres colonnes du tableau ici
echo '</tr>';
require_once("../include/connect.inc.php");
error_reporting(0);


// Préparez une requête SQL qui sélectionne les informations du produit à partir de la table de produits en utilisant l'ID du produit
$sql = 'SELECT * FROM PRODUIT where NOMPRODUIT = :id';

$stmt = oci_parse($connect, $sql);
oci_bind_by_name($stmt, ':id', $id);
$result = oci_execute($stmt);

    // On vérifie que des résultats sont trouvés
 while (($lesinfos = oci_fetch_assoc($stmt)) != false) {
// Récupérez les informations du produit à partir de la requête
echo '<tr>';
echo '<td>' . $lesinfos['NOMPRODUIT'] . '</td>';
echo '<td>' . $lesinfos['PRIXPRODUIT'] . '</td>';
echo '</tr>';
}
// Ajoutez les autres informations du produit ici

echo '</table>';

?>
</div>

</body>

</html>