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
                <a href="./AjoutClient.php">Ajouter un client</a>
            </div>
        </div>

        <div class="tableClient container">
            <div class="tableClient table">
                <?php 
                    include "../includeAdmin/connect.inc.php";


                    $query = "SELECT * FROM CLIENTS ORDER BY IDCLIENT ASC";
                    $lesclients = oci_parse($connect, $query);
                    $result = oci_execute($lesclients);

                    // On vérifie que des résultats sont trouvés
                    if($result == false){
                        echo 'Aucun client';
                    }

                    $table = "<br/><table border='2'>
                      <caption><center>Table des clients</center></caption>
                      <tbody>
                        <tr>
                            <th>Id Client</th><th>Nom Client</th><th>Prénom Client</th>
                            <th>Adresse Client</th><th>Téléphone Client</th><th>Mail Client</th>
                            </th>
                        </tr>
                      </tbody>";

                    //si utilisation de array au lieu de assoc : 0=>idclient 2=>nom client 3=>prenom client 4=>adresse client 5=>telephone client 6=>mail client
                    $infoClients = oci_fetch_assoc($lesclients);
                    // while ($infoClients!=false) {
                         $table .= '<tr><td>'.$infoClients['IDCLIENT'].'</td><td>'.$infoClients['NOMCLIENT'].'</td><td>'.$infoClients['PRENOMCLIENT'].'</td><td>'.$infoClients['ADRESSECLIENT'].'</td><td>'.$infoClients['TELEPHONECLIENT'].'</td><td>'.$infoClients['MAILCLIENT'].'</td><td><a href="ModifierClient.php?pidClient='.$infoClients['IDCLIENT'].'"><img src="../styleAdmin/imgAdmin/modifier.jpg" style="width:50px;height:50px;"></a></td><td><a href="SupprimerClient.php?pidClient='.$infoClients['IDCLIENT'].'"onclick="return(confirm(\'Êtes-vous sûr de vouloir supprimer ce client ?\'));"><img src="../styleAdmin/imgAdmin/supprimer.jpg" style="width:50px;height:50px;"></a></td></tr>';
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