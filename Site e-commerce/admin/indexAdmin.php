<?php
	include "./includeAdmin/secuPageAdmin.php";
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexion.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
    <link rel="stylesheet" href="styleAdmin/indexadmin.css">
</head>
<body>
	<?php include "./includeAdmin/headerAdmin.php"; ?>

	<main>
		<!--mettre crud clients crud produits -->
		<div class="gestionClient container">
			<div class="button">
				<a href="./pagesAdmin/GestionProduits.php">Gestion des Clients</a>
			</div>
		</div>

		<div class="gestionProduit container">
			<div class="button">
				<a href="./pagesAdmin/GestionProduits.php">Gestion des produits</a>
			</div>
		</div>
	</main>

	<?php include "./includeAdmin/footerAdmin.php"; ?>
</body>