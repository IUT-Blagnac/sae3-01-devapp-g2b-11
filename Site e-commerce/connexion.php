<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - Site E-Commerce</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="src/styles/header.css">
    <link rel="stylesheet" href="src/styles/footer.css">
    <link rel="stylesheet" href="src/styles/connexion.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <?php include("src/include/header.php") ?>

    <div class="container">

        <form action="verification.php" method="POST">
            <h1>Connexion</h1>
            
            <label><b>Nom d 'utilisateur</b></label>
            <input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required>

            <label><b>Mot de passe</b></label>
            <input type="password" placeholder="Entrer le mot de passe" name="password" required>

            <input type="submit" id='submit' value='LOGIN' >
            <br>

            <a href="http://193.54.227.164/~SAESYS11/inscription.php"><input type="button" class='cration' value='Créer votre compte Royal bio' ></a>

        </form>
    </div>

    <?php include("src/include/footer.php"); ?>
</body>
</html>