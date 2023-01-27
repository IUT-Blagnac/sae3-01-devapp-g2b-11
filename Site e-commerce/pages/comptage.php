<?php

function comptage($path, $saveLig)
{
    $ficPHP = file($path);
    return $saveLig + count($ficPHP);
}

$nbeLigPHP = 0;
// $nbeLigPHP = comptage("../index.php", $nbeLigPHP);
$nbeLigPHP = comptage("../index.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/produit.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/panier.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/paiement.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/modification.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/inscription.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/contact.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/connexion.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/apropos.php", $nbeLigPHP);
$nbeLigPHP = comptage("../pages/affichagePanier.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/TraitPanier.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/TraitPaiement.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/TraitModification.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/TraitInscription.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/TraitContact.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/TraitConnexion.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/header.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/footer.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/deconnexion.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/AjoutAuPanier.php", $nbeLigPHP);
$nbeLigPHP = comptage("../include/AjoutAuPanier.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/TraitconnexionAdmin.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/TraitAjoutProduit.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/TraitAjoutClient.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/SupprimerProduit.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/SupprimerClient.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/ModifierProduit.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/ModifierClient.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/GestionProduits.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/GestionContact.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/GestionClient.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/firstConAdmin.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/consultMessage.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/connexionAdmin.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/AnswerTo.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/AjoutProduit.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/pagesAdmin/AjoutClient.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/includeAdmin/secuPageAdmin.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/includeAdmin/headerAdmin.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/includeAdmin/footerAdmin.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/includeAdmin/destroySession.php", $nbeLigPHP);
$nbeLigPHP = comptage("../admin/includeAdmin/createTable.php", $nbeLigPHP);


$nbeLigCSS = 0;
$nbeLigCSS = comptage("../styles/tete.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/produits.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/pied.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/paniers.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/modification.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/infoCompte.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/contact.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/connexions.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/apropos.css", $nbeLigPHP);
$nbeLigCSS = comptage("../styles/accueil.css", $nbeLigPHP);

?>

<h1>Combien a-t-on de lignes de code ?</h1>

<h3>Pour les fichier .php : <?php echo $nbeLigPHP; ?></h3>
<h3>Pour les fichier .css : <?php echo $nbeLigCSS; ?></h3>