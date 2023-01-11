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
    <?php include "../includeAdmin/headerAdmin.php"; ?>

    <main>
        <input type="submit" value="Retour" onclick="document.location.href='../indexAdmin.php'">

        <div class="recherche">
            <form method='POST' action="./GestionProduits.php">
                <div class="icon"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></div>
                <div class="input"><input type="text" name="recherche" placeholder="Recherche un produit ..."></div>
            </form>
        </div>

        <div class="ajout container">
            <div class="button">
                <a href="./AjoutProduit.php">Ajouter un produit</a>
            </div>
        </div>

        <div class="tableClient container">
            <div class="tableClient table">
                <?php 
                    include "../includeAdmin/createTable.php";
                    if (isset($_POST['recherche'])) {
                        $query =  "
                            select *
                            from produit
                            where lower(IDPRODUIT) LIKE lower('%".$_POST['recherche']."%') OR lower(IDCATEGORIE) LIKE lower('%".$_POST['recherche']."%') OR lower(NOMPRODUIT) LIKE lower('%".$_POST['recherche']."%')
                            OR lower(PRIXPRODUIT) LIKE lower('%".$_POST['recherche']."%') OR lower(FOURNISSEURPRODUIT) LIKE lower('%".$_POST['recherche']."%') OR lower(DESCRIPTIONPRODUIT) LIKE lower('%".$_POST['recherche']."%') OR lower(COMPOSITIONPRODUIT) LIKE lower('%".$_POST['recherche']."%') OR lower(QUANTITESTOCK) LIKE lower('%".$_POST['recherche']."%')
                        ";
                        createTableProduit($query);
                        
                    }else{
                        $query = "SELECT * FROM PRODUIT";
                        createTableProduit($query);
                    }
                    
                
                ?>
            </div>
        </div>

    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>