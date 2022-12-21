<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexion.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>
<body>
    <?php include "../include/header.php"; ?>
    <div class="container">
        <?php
        	if(isset($_COOKIE['cookieIdent']) && isset($_COOKIE['cookieMdp'])){
        		$login = $_COOKIE['cookieIdent'];
                $pwd = $_COOKIE['cookieMdp'];
        	}else{
                $login ="";
                $pwd = "";
            }
        ?>
        <form action="TraitConnexion.php" method="POST">
            <h1 class="title">Connexion</h1>
            
            <label for="email" class="subtitle"><b>Nom d 'utilisateur</b></label>
            <input type="email" value="<?php echo($login); ?>" placeholder="Entrer votre email" name="email" required>

            <label for="password" class="subtitle"><b>Mot de passe</b></label>
            <input type="password" value="<?php echo($pwd); ?>"placeholder="Entrer le mot de passe" name="password" required>

            <span class="check">
                <input type="checkbox" name="memo" > 
                <label for="memo" class="souvenir">Se souvenir de moi</label>
            </span>

            <div class="button">
                <div class="submit btn">
                    <input type="submit" id='submit' value='Me connecter' >
                </div>
                <div class="cration btn">
                    <a href="/~SAESYS11/pages/inscription.php"><input type="button" value="Crée votre compte"></a>
                </div>
            </div>
            <br>

        </form>
        
        
    </div>   ²  
    <?php include "../include/footer.php"; ?>
</body>
</html>