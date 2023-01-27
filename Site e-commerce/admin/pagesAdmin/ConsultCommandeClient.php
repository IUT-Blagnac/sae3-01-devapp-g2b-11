<?php
    include "../includeAdmin/secuPageAdmin.php";
?>

<!DOCTYPE html>
<html lang="fr">

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
<?php include "../includeAdmin/headerAdmin.php"; ?>
<body>
    <main>
        <?php 
            require_once "../includeAdmin/connect.inc.php";
            $id = $_GET['idCommande'];
            $query = "SELECT * FROM COMMANDE WHERE IDCOMMANDE = :idcommande";
            $histocommande = oci_parse($connect, $query);
            oci_bind_by_name($histocommande, ":idcommande", $id);
            $result = oci_execute($histocommande);
            
            $infocommande = oci_fetch_assoc($histocommande);     
        ?>

        <input type="submit" value="Retour" onclick="document.location.href=<?="'HistoCommandeClient.php?pidClient=".$infocommande['IDCLIENT']."'"?>">

        <h2>Récapitulatif des informations de la commande</h2><BR>
        <form>
            Identifiant Commande : <input type="text" name="" value="<?=$infocommande['IDCOMMANDE']?>" readonly><BR><BR>
            Identifiant Client : <input type="text" name="" value="<?=$infocommande['IDCLIENT']?>" readonly><BR><BR>
            Identifiant Paiement : <input type="text" name="" value="<?=$infocommande['IDPAIEMENT']?>" readonly><BR><BR>
            Date de la commande : <input type="text" name="" value="<?=$infocommande['DATECOMMANDE']?>" readonly><BR><BR>
            Frais de Livraison : <input type="text" name="" value="<?=$infocommande['FRAISLIVRAISON']?>" readonly><BR><BR>
            Adresse de Livraison : <input type="text" name="" value="<?=$infocommande['ADRESSELIVRAISON'].', '.$infocommande['CODEPOSTALLIVRAISON'].', '.$infocommande['VILLELIVRAISON'] ?>" readonly><BR><BR>
            Nom : <input type="text" name="" value="<?=$infocommande['NOMLIVRAISON']?>" readonly><BR><BR>
            Téléphone : <input type="text" name="" value="<?=$infocommande['TELEPHONELIVRAISON']?>" readonly>
        </form>
        <BR><BR>

        <h2>Récapitulatif du contenu de la commande</h2>
        <?php 
            oci_free_statement($histocommande);
            $query2 = "SELECT Q.idproduit, Q.nbproduit, P.nomproduit, P.fournisseurproduit, (P.prixproduit*Q.nbproduit) as Prix FROM QUANTITEPRODUIT Q, PRODUIT P WHERE IDCOMMANDE = :idcommande AND Q.IDPRODUIT = P.IDPRODUIT";
            $contenuCommande = oci_parse($connect, $query2);
            oci_bind_by_name($contenuCommande, ":idcommande", $id);
            $result = oci_execute($contenuCommande);

            //on crée un tableau pour afficher les informations obtenues via la requête
            $table = "<br/><table border='2'>
              <tbody>
                <tr>
                    <th>Produit</th><th>Quantité</th><th>Fournisseur</th><th>Prix</th>
                </tr>
              </tbody>"; 

            while(($contenu = oci_fetch_assoc($contenuCommande))!=false){
                $table.="<tr><td>".$contenu['NOMPRODUIT']."</td><td>".$contenu['NBPRODUIT']."</td><td>".$contenu['FOURNISSEURPRODUIT']."</td><td>".$contenu['PRIX']."€</td></tr>";
            }
            $table .= "</table>"; //on termine le tableau
            oci_free_statement($contenuCommande);
            oci_close($connect);
            echo $table;
        ?>
        
    </main>
</body>
<?php include "../includeAdmin/footerAdmin.php"; ?>
</html>