<?php
	include "../includeAdmin/secuPageAdmin.php";
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifiication produit</title>

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
    <link rel="stylesheet" href="../styleAdmin/gestion.css">
    <?php include "../includeAdmin/headerAdmin.php";?>
    <script src="../includeAdmin/prixpromo.js"></script>
</head>
<body>
    <main>
    <?php 
        require_once("../includeAdmin/connect.inc.php");
        // error_reporting(0);
        $numP = $_GET['pidProduit'];
        $query = "SELECT * FROM PRODUIT WHERE IDPRODUIT = :idP";
        $produits = oci_parse($connect, $query);
        oci_bind_by_name($produits, ":idP", $numP);
        $result = oci_execute($produits);

        // On vérifie que des résultats sont trouvés
        if($result == false){
            echo 'Aucun client';
        }
        $infoProduit=oci_fetch_assoc($produits);
        // while(($infoProduit=oci_fetch_assoc($produits))!=false){
    ?>
    
    <input type="submit" value="Retour" onclick="document.location.href='./GestionProduits.php'"/>

    <form method='POST' enctype="multipart/form-data">
        <fieldset>
            <legend> Modification des informations du produit </legend><BR>

            Id du produit: <input type='text' name='idProduit' value="<?php echo ($infoProduit['IDPRODUIT'])?>" readonly /><BR></BR>
            Id de catégorie : <input type='text' name='idCategorie' value="<?php echo ($infoProduit['IDCATEGORIE'])?>" readonly/><BR></BR>
            Nom du produit : <input type='text' name='nomProduit' value="<?php echo($infoProduit['NOMPRODUIT'])?>" required/><BR><BR> <!--error header-->
            Prix du produit : <input type='text' name='prixProduit' value="<?php echo($infoProduit['PRIXPRODUIT'])?>" required/><BR><BR>
            Fournisseur du produit : <input type='text' name='fournisseurProduit' value="<?php echo($infoProduit['FOURNISSEURPRODUIT'])?>" required/><BR><BR>
            Description du produit : <input type='text' name='descriptionProduit' value="<?php echo($infoProduit['DESCRIPTIONPRODUIT'])?>" required/><BR><BR> <!--error header-->
            Composition du produit : <input type='text' name='compositionProduit' value="<?php echo($infoProduit['COMPOSITIONPRODUIT'])?>" /><BR><BR> <!--error header-->
            Quantité du stock : <input type='text' name='quantiteStock' value="<?php echo($infoProduit['QUANTITESTOCK'])?>"/><BR><BR>
            Promotion : <input type="checkbox" name='promo' id="promo" onclick="extraCheck()"/><BR></BR> 
            <div id="extraDiv">Prix Promo : </div><BR></BR>

            <input type="file" name="image" accept="image/png, image/jpeg, image/gif, image/jpg, image/webp" /><BR><BR>

            <input type='submit' name='submit' value='Valider'/><BR></BR>
        </fieldset>
    </form><BR><BR>
    </main>


    <?php 

    // Si l'ID du produit est envoyé dans le formulaire
    if(isset($_POST['idProduit'])){
        if(isset($_POST['promo'])){
                    $promo='o';
                    $prixPromo=htmlspecialchars($_POST['prixPromo'],ENT_QUOTES, 'UTF-8');
            }else{
                    $promo='n';
                    $prixPromo=NULL;
        }     
        // Si le formulaire est soumis
        if(isset($_POST['submit'])){

            // Variable bindé
            $nomP = htmlspecialchars($_POST['nomProduit'],ENT_QUOTES, 'UTF-8'); 
            $prixP = htmlspecialchars($_POST['prixProduit'],ENT_QUOTES, 'UTF-8'); 
            $fourniP = htmlspecialchars($_POST['fournisseurProduit'],ENT_QUOTES, 'UTF-8'); 
            $descriP = htmlspecialchars($_POST['descriptionProduit'],ENT_QUOTES, 'UTF-8'); 
            $compoP = htmlspecialchars($_POST['compositionProduit'],ENT_QUOTES, 'UTF-8'); 
            $quantiteP = htmlspecialchars($_POST['quantiteStock'],ENT_QUOTES, 'UTF-8');
            $promoP=$promo;
            $prixPromoP=$prixPromo;   

            // Requête de mise à jour de produit dans la base de données
            $query2 = "UPDATE Produit SET NOMPRODUIT=:NOM, PRIXPRODUIT=:PRIX, FOURNISSEURPRODUIT=:FOURNISSEUR, DESCRIPTIONPRODUIT=:DESCRIPTION, COMPOSITIONPRODUIT=:COMPO, QUANTITESTOCK=:STOCK, PROMOTION=:PROMO, PRIXPROMO=:PRIXP WHERE IDPRODUIT=:ID";

            // Préparation de la requête avec Oracle
            $update = oci_parse($connect, $query2);

            // Liaison des variables de formulaire aux paramètres de requête
            oci_bind_by_name($update, ":NOM", $nomP);
            oci_bind_by_name($update, ':PRIX', $prixP);
            oci_bind_by_name($update, ':FOURNISSEUR', $fourniP);
            oci_bind_by_name($update, ':DESCRIPTION', $descriP);
            oci_bind_by_name($update, ':COMPO', $compoP);
            oci_bind_by_name($update, ':STOCK', $quantiteP);
            oci_bind_by_name($update, ':STOCK', $quantiteP);
            oci_bind_by_name($update, ':PROMO', $promo);
            oci_bind_by_name($update, ':PRIXP', $prixPromo);
            oci_bind_by_name($update, ':ID', $_POST['idProduit']);

            // On exécute la requête de mise à jour
            $result = oci_execute($update);
            error_reporting(22527);
            if($result){
                oci_free_statement($update);
                //Testons si le fichier a bien été envoyé et s'il n'y a pas d'erreur
                if (!empty($_FILES["image"]) AND $_FILES["image"]['error'] == 0) {
                    // Testons si la taille du fichier est bonne
                    if (5000000 > $_FILES["image"]["size"]) {
                        $nom = htmlentities($infoProduit['IDPRODUIT']);
                        // On peut valider le fichier et le stocker définitivement
                        copy($_FILES["image"]['tmp_name'], '../../uploads/'.$nom.'.png');
                        
                    }else {
                        echo "Le fichier n'est pas du bon type ou il est trop volumineux !<BR>";
                    }
                }
            }

            // On commit les changements
            oci_commit($connect);

            // // On ferme la connexion à la base de données
            oci_close($connect);

            // On redirige l'utilisateur vers la page GestionClient.php
            header("location: ./GestionProduits.php");           
        }
    }

    ?>




    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>