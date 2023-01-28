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

        <div class="recherche">
            <form method='POST' action="./GestionContact.php">
                <div class="icon"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></div>
                <div class="input"><input type="text" name="recherche" placeholder="Recherche un message ..."></div>
            </form>
        </div>

        <?php 
            require_once "../includeAdmin/connect.inc.php"; //connexion à la base de donnée
            $mssgQ = 'SELECT * FROM MESSAGERIE ORDER BY IDMESSAGE'; //selection des messages ordonné selon leur identifiant
            $messages = oci_parse($connect, $mssgQ); //liaison entre la base de donnée et la requête
            $result = oci_execute($messages); // exécution de la requête

            if($result == false){ // si l'éxécution ne renvoie rien alors on affiche un petit message d'erreur
                echo 'Aucun message';
            }

        ?>

        <div class="table container">
            <div class="tableMess table">
                <table class='table table-hover' border="2"> 
                    <!-- création d'un tableau qui va contenir toutes le nom de l'éxepéditeur, l'objet du message, la date de l'envoi et le statut de lecture du message -->
                    <thead>
                        <tr>
                            <th>De :</th>
                            <th>Objet :</th>
                            <th>Envoyé le:</th>
                            <th>Lu :</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php while(($mess = oci_fetch_assoc($messages))!=false){ //on boucle pour avoir tous les messages enregistrés dans la bae de donnée ?>
                        <tr>
                            <td><?=$mess['NOMMESSAGE'] ?></td> <!--Nom de l'expéditeur-->
                            <td><?='<a href="./consultMessage.php?pidMess='.$mess['IDMESSAGE'].'">'.$mess['OBJETMESSAGE'].'</a>'?></td><!--Objet du message sous forme de lien qui redirige vers 
                            la page de consultation du message en mettant en paramètre l'identifiant du message-->
                            <td><?=$mess['DATEMESSAGE'] ?></td><!--date d'envoi-->
                            <td><?=$mess['MESSAGELU'] ?></td><!--statut de lecture du message-->
                        </tr>
                     <?php   } //fin boucle while ?>
                    </tbody>
                </table>
            </div>
        </div>


    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>