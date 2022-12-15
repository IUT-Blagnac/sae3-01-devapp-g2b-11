<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles/connexions.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles.css">
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles/heade.css">
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles/footer.css">
</head>
<body>
    <?php include "../include/header.php"; ?>
    <div class="container">

        <form action="#" method="POST">
            <h1>Connexion</h1>
            
            <label><b>Nom d 'utilisateur</b></label>
            <input type="email" placeholder="Entrer votre email" name="email" required>

            <label><b>Mot de passe</b></label>
            <input type="password" placeholder="Entrer le mot de passe" name="password" required>

            <input type="submit" id='submit' value='LOGIN' >
            <br>

            <a href="http://193.54.227.164/~SAESYS11/pages/inscription.php"><input type="button" class='cration' value='Créer votre compte Royal bio' ></a>

        </form>
        <?php
        if(isset($_POST['email']) && isset($_POST['password'])){
            // connexion à la base de données
            require_once("../include/connect.inc.php");
            
            error_reporting(0);
            
            $username = $_POST['email'];
            $password=password_hash($_POST['password'], PASSWORD_DEFAULT);
            if($username !== "" && $password !== ""){
                
                $req2 = "SELECT MOTPASSECLIENT FROM clients WHERE MAILCLIENT = :MAILCLIENT";

                $lemdps = oci_parse($connect, $req2);
                    
                oci_bind_by_name($lemdps, ":MAILCLIENT", $username);
                $result = oci_execute($lemdps);
                while($row=oci_fetch_array($lemdps)){
                    
                    $mdp = $row[0];
                    
                }
                
                // nom d'utilisateur et mot de passe correctes
                if($mdp!=''){
                    
                    if (password_verify (($_POST['password']),$mdp)!=1){
                        echo nullos;
                    }else{
                        echo bon;
                    }
                } else{
                    
                }
            } else{
               
            }
            oci_close($connect); // fermer la connexion
            
        }
        ?>
    </div>   ²  
    <?php include "../include/footer.php"; ?>
</body>
</html>