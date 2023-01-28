<?php session_start(); 
    if (!isset($_SESSION['access']) || $_SESSION['access'] != 'oui') {
        header("location : ../index.php");
    }
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexions.css">
    <link rel="stylesheet" href="/~SAESYS11/styles/infoCompte.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>

<body>
    <?php include "../include/header.php"; ?>
    <main>
        <input type="submit" value="Retour" onclick="document.location.href='connexion.php'">
        <h2>Historique de vos commandes :</h2>

        <?php 
            require_once "../include/connect.inc.php";
            $id = $_SESSION['idClient'];
            $query = "SELECT * FROM COMMANDE WHERE IDCLIENT = :idclient ORDER BY IDCOMMANDE";
            $histocommande = oci_parse($connect, $query);
            oci_bind_by_name($histocommande, ":idclient", $id);
            $result = oci_execute($histocommande);

            // On vérifie que des résultats sont trouvés
            if($result == false){
                echo 'Aucune commande';
            }

            $liste = "<ul>";

            while(($infocommande = oci_fetch_assoc($histocommande))!=false){
                $liste.="<a href='ConsultCommande.php?idCommande=".$infocommande['IDCOMMANDE']."'><li>Commande n°".$infocommande['IDCOMMANDE']."</li></a>";
            }
            $liste.="</ul>";
            oci_close($connect);
            echo $liste;
        ?>
        
    </main>
    <?php include "../include/footer.php"; ?>
</body>
</html>