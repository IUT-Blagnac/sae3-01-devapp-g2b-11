<?php
	include "../includeAdmin/secuPageAdmin.php";
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
    <link rel="stylesheet" href="../styleAdmin/gestion.css">
</head>
<body>
    <?php 
        include "../includeAdmin/headerAdmin.php"; 
    ?>
    <main>
        <input type="submit" value="Retour" onclick="document.location.href='./GestionProduits.php'"/>

        <?php 
            if(isset($_GET['Error'])){
                print("<h2><strong>Produit déjà existant</strong></h2>");
            }
        ?>

         <form method='POST' action="TraitAjoutProduit.php" enctype="multipart/form-data">
            
            <fieldset>
                <legend> Ajout d'un nouveau produit </legend><BR>
                Id de catégorie : <input type='text' name='idCategorie'  required/><BR><BR>
                Nom du produit : <input type='text' name='nomProduit'  required/><BR><BR>
                Prix du produit : <input type='text' name='prixProduit'  required/><BR><BR>
                Fournisseur du produit : <input type='text' name='fournisseurProduit'  required/><BR><BR>
                Description du produit : <input type='text' name='descriptionProduit'  required/><BR><BR>
                Composition du produit : <input type='text' name='compositionProduit'  /><BR><BR>
                Quantité du stock : <input type='text' name='quantiteStock'  required/><BR><BR>
               
                <input type="file" name="monfichier" required /><br/>

                <input type='submit' name='submit' value='Valider'/><BR><BR>

            </fieldset>
        </form><BR><BR>

    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>