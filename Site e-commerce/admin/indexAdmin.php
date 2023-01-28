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
	<link rel="stylesheet" href="styleAdmin/indexAdmin.css">
</head>

<body>
	<?php
	// echo 'Session : <pre>' . print_r($_SESSION, true) . '</pre>'
	?>
	<?php include "./includeAdmin/headerAdmin.php"; ?>

	<main>
		<input type="submit" value="Déconnexion" onclick="document.location.href='./pagesAdmin/connexionAdmin'" />
		<div class="container">
			<div class="content">
				<div class="formulaire">
					<div class="title">Administrateur : <?php echo $_SESSION['nomAdmin'] . " " . $_SESSION['prenomAdmin']; ?></div>
					<div class="button">
						<div class="gestionClient">
							<div class="btn">
								<a href="./pagesAdmin/GestionClient.php">Gestions des clients</a>
							</div>
						</div>
						<div class="gestionProduit">
							<div class="btn">
								<a href="./pagesAdmin/GestionProduits.php">Gestions des produits</a>
							</div>
						</div>
						<div class="gestionMessagerie">
							<div class="btn">
								<a href="./pagesAdmin/GestionContact.php">Messagerie clients</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>

</html>