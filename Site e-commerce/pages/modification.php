<?php session_start(); ?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
    <link rel="stylesheet" href="/~SAESYS11/styles/modification.css">
</head>

<body>
    <?php include "../include/header.php"; ?>

    <div class="container">
        <div class="content">
            <div class="title">Modification de vos informations</div>
            <div class="formulaire">
                <form action="/~SAESYS11/include/TraitModification.php" method="POST">
                    <div class="box">
                        <label for="nom">Votre nom</label> <input type="text" name="nom" value="<?php echo $_SESSION['nomClient'] ?>" placeholder="saisissez votre nom" required>
                        <label for="prenom">Votre prénom</label> <input type="text" name="prenom" value="<?php echo $_SESSION['prenomClient'] ?>" placeholder="saisissez votre prénom" required>
                    </div>
                    <div class="box">
                        <label for="email">Votre email</label> <input type="email" name="email" value="<?php echo $_SESSION['emailClient'] ?>" placeholder="saisissez votre email" required>
                        <label for="telephone">Votre téléphone</label> <input type="text" name="telephone" value="<?php echo $_SESSION['telephoneClient'] ?>" placeholder="saisissez votre téléphone" required>
                    </div>
                    <div class="box">
                        <label for="adresse">Votre adresse</label> <input type="text" name="adresse" value="<?php echo $_SESSION['adresseClient'] ?>" placeholder="saisissez votre adresse" required>
                        <label for="motPasse">Votre mot de passe</label> <input type="password" name="motPasse" placeholder="saisissez votre mot de passe" required>
                    </div>
                    <input type="submit" value="Valider" class="btn">
                </form>
            </div>
        </div>
    </div>

    <?php include "../include/footer.php"; ?>
</body>

</html>