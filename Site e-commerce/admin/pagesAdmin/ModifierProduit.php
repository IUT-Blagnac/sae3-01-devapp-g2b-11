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

        include "../includeAdmin/connect.inc.php";
        $query = "SELECT * FROM PRODUIT WHERE IDPRODUIT = ".$_GET['pidProduit']."";
        $produits = oci_parse($connect, $query);
        $result = oci_execute($produits);
 
        // On vérifie que des résultats sont trouvés
        if($result == false){
            echo 'Aucun client';
        }
        $infoProduit = oci_fetch_assoc($produits);
        //var_dump($infoClients);
    ?>
    <main>
        <input type="submit" value="Retour" onclick="document.location.href='./GestionProduits.php'"/>

    <form method='POST'>
        
        <fieldset>
            <legend> Modification des informations du produit </legend><BR>

            Id du produit: <input type='text' name='idProduit' value="<?php echo($infoProduit['IDPRODUIT'])?>" readonly /><BR><BR>
            Id de catégorie : <input type='text' name='idCategorie' value="<?php echo($infoProduit['IDCATEGORIE'])?>" readonly/><BR><BR>
            Nom du produit : <input type='text' name='nomProduit' value="<?php echo($infoProduit['NOMPRODUIT'])?>" required/><BR><BR>
            Prix du produit : <input type='text' name='prixProduit' value="<?php echo($infoProduit['PRIXPRODUIT'])?>" required/><BR><BR>
            Fournisseur du produit : <input type='text' name='fournisseurProduit' value="<?php echo($infoProduit['FOURNISSEURPRODUIT'])?>" required/><BR><BR>
            Description du produit : <input type='text' name='descriptionProduit' value="<?php echo($infoProduit['DESCRIPTIONPRODUIT'])?>" required/><BR><BR>
            Composition du produit : <input type='text' name='compositionProduit' value="<?php echo($infoProduit['COMPOSITIONPRODUIT'])?>" /><BR><BR>
            Quantité du stock : <input type='text' name='quantiteStock' value="<?php echo($infoProduit['QUANTITESTOCK'])?>"/><BR><BR>

            <input type='submit' name='submit' value='Valider'/><BR><BR>
        </fieldset>
    </form><BR><BR>
    </main>

    <?php 
        if(isset($_POST['idProduit'])){
            if(isset($_POST['submit'])){
                $query2 = "UPDATE Produit SET NOMPRODUIT=:NOM, PRIXPRODUIT=:PRIX, FOURNISSEURPRODUIT=:FOURNISSEUR, DESCRIPTIONPRODUIT=:DESCRIPTION, COMPOSITIONPRODUIT=:COMPO, QUANTITESTOCK=:STOCK WHERE IDPRODUIT=:ID";

                $update = oci_parse($connect, $query2);
                oci_bind_by_name($update, ":NOM", $_POST['nomProduit']);
                oci_bind_by_name($update, ':PRIX', $_POST['prixProduit']);
                oci_bind_by_name($update, ':FOURNISSEUR', $_POST['fournisseurProduit']);
                oci_bind_by_name($update, ':DESCRIPTION', $_POST['descriptionProduit']);
                oci_bind_by_name($update, ':COMPO', $_POST['compositionProduit']);
                oci_bind_by_name($update, ':STOCK', $_POST['quantiteStock']);
                oci_bind_by_name($update, ':ID', $_POST['idProduit']);
                oci_execute($update);
                oci_commit($connect);
                oci_close($connect);

                header("location: ./GestionProduits.php");
            }
        }
    ?>




    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>