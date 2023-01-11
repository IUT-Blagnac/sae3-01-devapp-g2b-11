<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexions.css">
    <link rel="stylesheet" href="/~SAESYS11/styles/infoCompte.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
    <script src="../include/acces.js"></script>
</head>

<body>
    <?php include "../include/header.php"; ?>

    <?php
    // Instancie une variable qui prend la valeur du cookie si il est actif, vide sinon 
    if (isset($_COOKIE['connexionEmail'])) {
        $login = $_COOKIE['connexionEmail'];
    } else {
        $login = '';
    }
    ?>
    <?php
    // Vérifie si une Session est actif 
    if (isset($_SESSION['access']) && $_SESSION['access'] == 'oui') {
    ?>
        <div class="container">
            <div class="informations">
                <div class="title">Vos informations</div>
                <div class="content">
                    <div class="box box1">
                        <div class="nom">Votre nom : <span><?php echo $_SESSION['nomClient'] ?></span></div>
                        <div class="prenom">Votre prénom : <span><?php echo $_SESSION['prenomClient'] ?></span></div>
                    </div>
                    <div class="box box2">
                        <div class="mail">Votre email : <span><?php echo $_SESSION['emailClient'] ?></span></div>
                        <div class="telephone">Votre téléphone : <span><?php echo $_SESSION['telephoneClient'] ?></span></div>
                    </div>
                    <div class="box box3">
                        <div class="adresse">Votre adresse : <span><?php echo $_SESSION['adresseClient'] ?></span></div>
                    </div>
                </div>
                <div class="button">
                    <div class="btn"><a href="/~SAESYS11/include/deconnexion.php">Se déconnecter</a></div>
                    <div class="btn"><a href="/~SAESYS11/pages/modification.php">Modifier</a></div>
                </div>
            </div>
        </div>
    <?php
    } else {
    ?>
        <div class="container">
            <form action="/~SAESYS11/include/TraitConnexion.php" method="POST">
                <h1 class="title">Connexion</h1>

                <label for="email" class="subtitle"><b>Nom d 'utilisateur</b></label>
                <input type="email" value="<?php echo ($login); ?>" placeholder="Entrer votre email" name="email" required>

                <label for="password" class="subtitle"><b>Mot de passe</b></label>
                <input type="password" placeholder="Entrer le mot de passe" name="password" required>

                <span class="check">
                    <input type="checkbox" name="memo">
                    <label for="memo" class="souvenir">Se souvenir de moi</label>
                </span>

                <div class="button">
                    <div class="submit btn">
                        <input type="submit" id='submit' value='Me connecter'>
                    </div>
                    <div class="cration btn">
                        <a href="/~SAESYS11/pages/inscription.php"><input type="button" value="Crée votre compte"></a>
                    </div>
                </div>
                <br>
            </form>
        </div>
    <?php
    }
    ?>
    <?php include "../include/footer.php"; ?>
</body>

</html>