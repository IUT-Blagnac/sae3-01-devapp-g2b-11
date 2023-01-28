<?php session_start(); ?>

<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Royal Bio - l'épicerie bio</title>
	<link rel="stylesheet" href="/~SAESYS11/styles/panier.css">

	<!-- INCLUDES LINKS -->
	<link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>

<body>
	<?php include "../include/header.php"; ?>



	<?php
	require_once("../include/connect.inc.php");
	error_reporting(0);

	if (isset($_SESSION) && $_SESSION['access'] === 'oui') {
		$idClient = $_SESSION['idClient'];

		// Prepare the query
		$query = "SELECT COUNT(IDPANIER) AS nbe_panier FROM PANIER WHERE IDCLIENT = :idClient";
		$stmt = oci_parse($connect, $query);

		// Bind the parameter
		oci_bind_by_name($stmt, ':idClient', $idClient);

		$result = oci_execute($stmt);

		if (!$result) {
			$e = oci_error($nbePanier);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
			print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

			// Redirection avec message d'erreur
			// header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
			exit();
		}

		$nbePanier = oci_fetch_assoc($nbePanier);

		$nbePanier = intval($nbePanier['nbe_panier']);

		// echo '<pre>' . print_r($nbePanier, true) . ' <pre>';

		if ($nbePanier < 1) {
			echo "<h1>Vous n'avez aucun panier</h1>";
		} else if ($nbePanier == 1) {

			echo '<h1>Votre panier : </h1> <br><br>

			
			<div class="container">
				<div class="panier">
					<div class="left">
						<div class="title">Détail de votre panier</div>
						<div class="produits">
						';

			// les paniers du client
			$query = "SELECT * FROM PANIER WHERE IDCLIENT = '$idClient'";
			$lespaniers = oci_parse($connect, $query);
			$result = oci_execute($lespaniers);

			if (!$result) {
				$e = oci_error($lespaniers);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
				print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

				// Redirection avec message d'erreur
				// header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
				exit();
			}

			$lepanier = oci_fetch_assoc($lespaniers);
			$totalPanier = $lepanier['PRIXPANIER'];
			$idPanier = $lepanier['IDPANIER'];

			// On recherche le nombre d'article du panier
			$query = "SELECT COUNT(IDPRODUIT) AS TOTALARTICLE FROM CONTENUPANIER WHERE IDPANIER = $idPanier";
			$totalArticle = oci_parse($connect, $query);
			$result = oci_execute($totalArticle);


			if (!$result) {
				$e = oci_error($totalArticle);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
				print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

				// Redirection avec message d'erreur
				// header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
				exit();
			}

			$totalArticle = oci_fetch_assoc($totalArticle);
			$totalArticle = intval($totalArticle['TOTALARTICLE']);

			// On recherche les informations du contenu du panier
			$query = "SELECT C.IDPRODUIT AS IDPRODUIT, P.PRIXPRODUIT AS PRIXPRODUIT, P.NOMPRODUIT AS NOMPRODUIT, C.NBPRODUIT AS NBPRODUIT FROM CONTENUPANIER C, PRODUIT P WHERE C.IDPANIER = '$idPanier' AND C.IDPRODUIT = P.IDPRODUIT";
			$lespaniers = oci_parse($connect, $query);
			$result = oci_execute($lespaniers);

			if (!$result) {
				$e = oci_error($lespaniers);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
				print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

				// Redirection avec message d'erreur
				// header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
				exit();
			}

			while (($produit = oci_fetch_assoc($lespaniers)) != false) {
				echo '
						<form action="/~SAESYS11/include/fonctions.php" method="post">
							<div class="produit">
								<div class="produit-img">
									<img src="/~SAESYS11/uploads/' . $produit['IDPRODUIT'] . '.png" alt="image du produit">
								</div>
								<div class="produit-infos">
									<div class="produit-title">Article :' . $produit['NOMPRODUIT'] . '</div>
									<div class="produit-prix">Prix : ' . $produit['PRIXPRODUIT'] . ' €</div>
								</div>
								<div class="produit-btn"> 
									<input type="hidden" name="idClient" value="' . $idClient . '">
									<input type="hidden" name="idProduit" value="' . $produit['IDPRODUIT'] . '"
									>
									<input type="number" name="quantite" value="' . $produit['NBPRODUIT'] . '">
									<button type="submit" class="btn" name="submit" value="updateProduct">Mettre a jour</button>
									<button type="submit" class="btn" name="submit" value="removePanier">Supprimer</button>
								</div>
							</div>
						</form>
				';
			}
			echo '
					</div>
				</div>	
							
				<div class="right">
							
                <div class="title">Récapitulatif</div>
					<div class="content">
						<div class="recap">
							<div class="recap-content">
								<div class="recap-li">
									<div class="recap-text">' . $totalArticle . ' article(s)</div>
									<div class="recap-data">' . $totalPanier . ' €</div>
								</div>
								<div class="recap-li">
									<div class="recap-text">Frais de livraison</div>
									<div class="recap-data">Gratuit</div>
								</div>
							</div>
						</div>
						<form action="/~SAESYS11/include/fonctions.php" method="post">
						<div class="commander">
							<div class="commander-content">
								<div class="commander-text">Total panier</div>
								<div class="commander-data"> ' . $totalPanier . ' €</div>
							</div>
							<input type="hidden" name="fonction" value="redirectCommande">
							<input type="hidden" name="total" value ="' . $totalArticle  . '">
							<button type="submit" name="submit" value="redirectCommande" class="commander-btn">Passer la commande</button>
						</form>
						</div>
					</div>
                
           		</div>
			</div>';
		} else if ($nbePanier > 1) {
			echo '
			<div class="container">
				<h1>Vos paniers : </h1> <br><br>
			';

			// les paniers du client
			$query = "SELECT * FROM PANIER WHERE IDCLIENT = '$idClient'";
			$lespaniers = oci_parse($connect, $query);
			$result = oci_execute($lespaniers);

			if (!$result) {
				$e = oci_error($lespaniers);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
				print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

				// Redirection avec message d'erreur
				// header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
				exit();
			}

			$idpaniers = [];

			while (($lepanier = oci_fetch_assoc($lespaniers)) != false) {
				// echo '<pre>' . print_r($lepanier, true) . '</pre>';
				$idpaniers[] = $lepanier['IDPANIER'];
			}
	?>
			<div class="button">
				<?php
				for ($i = 0; $i < count($idpaniers); $i++) {
					echo "
							<a href='/~SAESYS11/pages/affichagePanier.php?panier=$idpaniers[$i]' class='links'>Panier n°$idpaniers[$i]</a>
						";
				}
				?>
			</div>
			</div>
	<?php
		}
	} else {
		echo "<h1>Vous n'êtes pas connecté</h1>";
	}

	echo "</div>";
	?>

	<?php include "../include/footer.php"; ?>
</body>

</html>