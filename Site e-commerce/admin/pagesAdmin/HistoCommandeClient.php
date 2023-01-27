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
        <input type="submit" value="Retour" onclick="document.location.href='GestionClient.php'">
        <h2>Historique de vos commandes :</h2>

        <?php 
            require_once "../includeAdmin/connect.inc.php";
            $id = $_GET['pidClient'];
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
                $liste.="<a href='ConsultCommandeClient.php?idCommande=".$infocommande['IDCOMMANDE']."'><li>Commande n°".$infocommande['IDCOMMANDE']."</li></a>";
            }
            $liste.="</ul>";
            oci_close($connect);
            echo $liste;
        ?>
        
    </main>
</body>
<?php include "../includeAdmin/footerAdmin.php"; ?>
</html>