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
    ?>
    <main>
        <input type="submit" value="Retour" onclick="document.location.href='./GestionClient.php'"/>

         <form method='POST' action="./TraitAjoutClient.php">
            
            <fieldset>
                <legend> Ajout d'un nouveau client </legend><BR>
                Nom du client : <input type='text' placeholder='Nom' name='nomClient' required /><BR><BR>
                Prénom du client : <input type='text' placeholder='Prenom' name='prenomClient' required /><BR><BR>
                Mot de passe du client: <input type='text' placeholder='Mot de passe' name='motPasseClient' required /><BR><BR>
                Adresse du client : <input type='text' placeholder='Adresse' name='adresseClient'/><BR><BR>
                Téléphone du client : <input type='text' placeholder='Téléphone' name='telClient'/><BR><BR>
                Mail du client : <input type='email' placeholder='Mail' name='mailClient' required /><BR><BR>
               
                <input type='submit' name='submit' value='Valider'/><BR><BR>

                <div class="info">
                <p>Le mot de passe doit contenir :</p>
                    <ul>
                        <li>Au moins 8 caractères</li>
                        <li>Au moins 1 minuscule</li>
                        <li>Au moins 1 majuscule</li>
                        <li>Au moins 1 chiffre</li>
                    </ul>
                </div>
            </fieldset>
        </form><BR><BR>
    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>