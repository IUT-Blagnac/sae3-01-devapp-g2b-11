<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/contact.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>
<body>
<?php include "../include/header.php" ?>

<main>
    <div class="contact_container">
        <div class="contact_info">
            <div class="title">Contactez nous</div>
            <div class="subtitle">Vous avez besoins d'informations ? conctactez nous :</div>
            <div class="contact_data">
                <ul>
                    <li class="mail"><i class="fa-solid fa-envelope"></i> lorem ipsum</li>
                    <li class="phone"><i class="fa-solid fa-phone"></i> lorem ipsum</li>
                    <li class="localisation"><i class="fa-sharp fa-solid fa-location-dot"></i> Lorem ipsum</li>
                </ul>
            </div>
        </div>
        <div class="contact_form">
            <form action="#" method="post">
                <label for="#">Nom</label> <br>
                <input type="text" name="nom" placeholder="Entrez votre nom" required> <br>
                
                <label for="#">E-mail</label> <br>
                <input type="email" name="email" placeholder="Entrez votre email" required> <br>
                
                <label for="#">Votre message</label> <br>
                <textarea name="" cols="39" rows="4" placeholder="Votre message"></textarea> <br>
                <span class="check">
                    <input type="checkbox" name="conditions" > <label for="#">J'accepte les <a href="#" class="link">Conditions</a></label> <br>
                </span>

                <input type="submit" value="Envoyer">
            </form>
        </div>
    </div>
</main>

<?php include "../include/footer.php" ?>
</body>
</html>