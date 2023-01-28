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
        $query = "SELECT * FROM CLIENTS WHERE IDCLIENT = '".$_GET['pidClient']."'";
        $lesclients = oci_parse($connect, $query);
        $result = oci_execute($lesclients);
 
        // On vérifie que des résultats sont trouvés
        if($result == false){
            echo 'Aucun client';
        }
        $infoClients = oci_fetch_assoc($lesclients);
    ?>
    <main>
        <input type="submit" value="Retour" onclick="document.location.href='./GestionClient.php'"/>

    <form method='POST'>
        
        <fieldset>
            <legend> Modification des informations du client </legend><BR>
            Id du client: <input type='text' name='idClient' value="<?php echo($infoClients['IDCLIENT'])?>" readonly /><BR><BR>
            Nom du client : <input type='text' name='nomClient' value="<?php echo($infoClients['NOMCLIENT'])?>" required/><BR><BR>
            Prénom du client : <input type='text' name='prenomClient' value="<?php echo($infoClients['PRENOMCLIENT'])?>" required/><BR><BR>
            Adresse du client : <input type='text' name='adresseClient' value="<?php echo($infoClients['ADRESSECLIENT'])?>" required/><BR><BR>
            Téléphone du client : <input type='text' name='telClient' value="<?php echo($infoClients['TELEPHONECLIENT'])?>" required/><BR><BR>
            Mail du client : <input type='email' name='mailClient' value="<?php echo($infoClients['MAILCLIENT'])?>" required/><BR><BR>
           

            <input type='submit' name='submit' value='Valider'/><BR><BR>
        </fieldset>
    </form><BR><BR>
    </main>

    <?php 
    // On vérifie que le champ idClient est présent dans le formulaire
    if(isset($_POST['idClient'])){
        // On vérifie que le bouton submit a été appuyé
            if(isset($_POST['submit'])){
                // On prépare la requête de mise à jour dans la table Clients en utilisant des bind variables
                $query2 = "UPDATE Clients SET NOMCLIENT=:NOM, PRENOMCLIENT=:PRENOM, ADRESSECLIENT=:ADRESSE, TELEPHONECLIENT=:TEL, MAILCLIENT=:MAIL WHERE IDCLIENT=:ID";

                // On prépare la requête à l'aide de la connexion à la base de données
                $update = oci_parse($connect, $query2);

                // On lie chaque bind variable à sa valeur respective dans le formulaire
                oci_bind_by_name($update, ":NOM", $_POST['nomClient']);
                oci_bind_by_name($update, ':PRENOM', $_POST['prenomClient']);
                oci_bind_by_name($update, ':ADRESSE', $_POST['adresseClient']);
                oci_bind_by_name($update, ':TEL', $_POST['telClient']);
                oci_bind_by_name($update, ':MAIL', $_POST['mailClient']);
                oci_bind_by_name($update, ':ID', $_POST['idClient']);

                // On exécute la requête de mise à jour
                oci_execute($update);

                // On commit les changements
                oci_commit($connect);

                // On ferme la connexion à la base de données
                oci_close($connect);

                // On redirige l'utilisateur vers la page GestionClient.php
                header("location: ./GestionClient.php");
                exit();
            }
        }
    ?>


    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>