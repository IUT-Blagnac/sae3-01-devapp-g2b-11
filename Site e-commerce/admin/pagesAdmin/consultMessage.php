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
            require_once "../includeAdmin/connect.inc.php"; //connexion à la base de donnée

            //Mise a jour du statu de lecture du message ouvert
            $luQ = "UPDATE MESSAGERIE SET MESSAGELU='o' WHERE IDMESSAGE='".$_GET['pidMess']."'";
            $lu = oci_parse($connect,$luQ);
            $res = oci_execute($lu);
            oci_commit($connect);

            //Selection des dnnées associés au message ouvert
            $mssgQ = "SELECT * FROM MESSAGERIE WHERE IDMESSAGE='".$_GET['pidMess']."'";
            $messages = oci_parse($connect, $mssgQ);
            $result = oci_execute($messages);

            if($result == false){ // si l'éxécution ne renvoie rien alors on affiche un petit message d'erreur
                echo 'Aucun message';
            }

            $infoMess = oci_fetch_assoc($messages);
            $contenu=html_entity_decode($infoMess['CONTENUMESSAGE']); //décodage du contenu du message enregistré dans la base de donnée

        ?>

        <fieldset>
            <form action="/~SAESYS11/admin/pagesAdmin/AnswerTo.php?pidMess=$infoMess['IDMESSAGE']" method="post"><!--Formulaire qui permet la lecture du message et de ces infomations, redirige vers une page de réponse-->
                <label for="#">De :</label> <br>
                <input type="text" name="nom" value="<?=$infoMess['NOMMESSAGE']." ".$infoMess['PRENOMMESSAGE'] //champ avec le nom et prénom de l'expéditeur?>" readonly> <br>

                <label for="#">E-mail :</label> <br>
                <input type="email" name="email" value="<?=$infoMess['MAILMESSAGE'] //champ avec le mail de l'expéditeur?>" readonly> <br>

                <label for="#">Objet :</label> <br>
                <input type="text" name="objet" value="<?=$infoMess['OBJETMESSAGE'] //champ avec l'objet du message'?>" readonly> <br>
                
                <label for="#">Message :</label> <br>
                <textarea name="contenu" cols="39" rows="4" maxlength="4000" type="text" readonly><?=$contenu //champ avec le contenu du message?></textarea> <br>

                <input type="submit" name="answer" value="Répondre">
            </form>

                <input type="submit" value="Retour" onclick="document.location.href='./GestionContact.php'"><!--bouton de retour à la page de gestion des messages-->
        </fieldset>

    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>