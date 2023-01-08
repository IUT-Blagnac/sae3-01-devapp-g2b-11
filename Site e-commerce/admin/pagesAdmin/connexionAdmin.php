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
    <?php include "../includeAdmin/headerAdmin.php"; ?>
    <div class="container">
        <?php
            session_start();
            if(isset($_SESSION['access'])){
                session_destroy();
            }

            if(isset($_GET['msgErreur'])){
                echo "<br>Erreur d'identification";
            }
        ?>

        <form method="POST" action="TraitconnexionAdmin.php">
            <h1 class="title">Connexion</h1>
            
            <label for="text" class="subtitle"><b>Numéro Employé</b></label>
            <input type="text" placeholder="Entrer votre numéro d'employé" name="numEmp" required>

            <label for="password" class="subtitle"><b>Mot de passe</b></label>
            <input type="password" placeholder="Entrer le mot de passe" name="password" required>


            <div class="button">
                <div class="submit btn">
                    <input type="submit" id='submit' value='Me connecter' >
                </div>
            </div>
            <br>

        </form>
        
        
    </div> 
    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>