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

        <?php  
            //suite à la redirection depuis la page de lecture du message on reprends les infos nécessaires enregistré dans le fomulaire précédent
            $person = $_POST['nom'];
            $mail = $_POST['email'];
            $obj = $_POST['objet'];
        ?>

        <fieldset>
            <form action="" method="post">
                <label for="#">Répondre à :</label> <br>
                <input type="text" name="nom" value="<?=$person //champ avec le nom et prénom de l'expéditeur?>" readonly> <br>

                <label for="#">E-mail :</label> <br>
                <input type="email" name="email" value="<?=$mail //champ avec le mail de l'expéditeur?>" readonly> <br>

                <label for="#">Objet :</label> <br>
                <input type="text" name="objet" value="<?="RE : ".$obj //champ avec l'objet du message?>" readonly> <br>
                
                <label for="#">Message :</label> <br>
                <textarea name="contenu" cols="39" rows="4" maxlength="4000" type="text"></textarea> <br><!--champ où écrire le contenu de la réponse-->

                <input type="submit" name="answer" value="Répondre">
            </form>

                <input type="submit" value="Retour" onclick="document.location.href='./GestionContact.php'"><!--bouton de retour à la page de gestion des messages-->
        </fieldset>

    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>