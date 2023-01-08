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
        <div class="ajout container">
            <div class="button">
                <a href="./AjoutProduit.php">Ajouter un produit</a>
            </div>
        </div>

        <div class="tableClient container">
            <div class="tableClient table">
                <?php 
                    include "../includeAdmin/connect.inc.php";


                    $query = "SELECT * FROM PRODUIT ORDER BY IDPRODUIT DESC";
                    $produits = oci_parse($connect, $query);
                    $result = oci_execute($produits);

                    // On vérifie que des résultats sont trouvés
                    if($result == false){
                        echo 'Aucun produit';
                    }

                    $table = "<br/><table border='2'>
                      <caption><center>Table des Produits</center></caption>
                      <tbody>
                        <tr>
                            <th>Id Produit</th><th>Id Catégorie</th><th>Nom Produit</th>
                            <th>Prix ProduitProduit</th><th>Fournisseur Produit</th><th>Description Produit</th>
                            </th><th>Composition Produit</th><th>Quantite Stock</th>
                        </tr>
                      </tbody>";

                    //si utilisation de array au lieu de assoc : 0=>idclient 2=>nom client 3=>prenom client 4=>adresse client 5=>telephone client 6=>mail client
                    $infoProduits = oci_fetch_assoc($produits);
                    // while ($infoClients!=false) {
                         $table .= '<tr><td>'.$infoProduits['IDPRODUIT'].'</td><td>'.$infoProduits['IDCATEGORIE'].'</td><td>'.$infoProduits['NOMPRODUIT'].'</td><td>'.$infoProduits['PRIXPRODUIT'].'</td><td>'.$infoProduits['FOURNISSEURPRODUIT'].'</td><td>'.$infoProduits['DESCRIPTIONPRODUIT'].'</td><td>'.$infoProduits['COMPOSITIONPRODUIT'].'</td><td>'.$infoProduits['QUANTITESTOCK'].'</td><td><a href="ModifierProduit.php?pidProduit='.$infoProduits['IDPRODUIT'].'"><img src="../styleAdmin/imgAdmin/modifier.jpg" style="width:50px;height:50px;"></a></td><td><a href="SupprimerProduit.php?pidProduit='.$infoProduits['IDPRODUIT'].'"onclick="return(confirm(\'Êtes-vous sûr de vouloir supprimer ce client ?\'));"><img src="../styleAdmin/imgAdmin/supprimer.jpg" style="width:50px;height:50px;"></a></td></tr>';
                    // }
                      
                      $table .= "</table>";
                      oci_close($connect);
                      echo $table;
                
                ?>
            </div>
        </div>

    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>