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
        //var_dump($infoClients);
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
        if(isset($_POST['idClient'])){
            if(isset($_POST['submit'])){
                $query2 = "UPDATE Clients SET NOMCLIENT=:NOM, PRENOMCLIENT=:PRENOM, ADRESSECLIENT=:ADRESSE, TELEPHONECLIENT=:TEL, MAILCLIENT=:MAIL WHERE IDCLIENT=:ID";

                $update = oci_parse($connect, $query2);
                oci_bind_by_name($update, ":NOM", $_POST['nomClient']);
                oci_bind_by_name($update, ':PRENOM', $_POST['prenomClient']);
                oci_bind_by_name($update, ':ADRESSE', $_POST['adresseClient']);
                oci_bind_by_name($update, ':TEL', $_POST['telClient']);
                oci_bind_by_name($update, ':MAIL', $_POST['mailClient']);
                oci_bind_by_name($update, ':ID', $_POST['idClient']);
                oci_execute($update);
                oci_commit($connect);
                oci_close($connect);

                header("location: ./GestionClient.php");
            }
        }
    ?>




    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>