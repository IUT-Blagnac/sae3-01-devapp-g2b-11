<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie bio</title>
    <link rel="stylesheet" href="styles/accueil.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="styles.css">
    
</head>
<body>
    
    <?php include "include/header.php"; ?>
    
    <main>
        <div class="apropos container">
                <div class="apropos_content">
                    <div class="title">A propos</div>
                    <div class="subtitle">Qui sommes nous ?</div>
                    <div class="data">
                        <p>
                            Royal Bio est une petite entreprise commerciale d'épiceries biologiques locales. <br>
                            Notre but et de rendre accessible facilement les produits de la région tout en soutenant les producteurs locaux.
                            
                        </p>
                    </div>
                    <div class="button">
                        <a href="/~SAESYS11/pages/apropos.php">En savoir plus</a>
                    </div>
                </div>
                <div class="apropos_img">
                    <img src="/~SAESYS11/img/epicerie_img.jpg" alt="Image de l'épicerie">
                </div>
        </div>

        <div class="services container">
                <div class="services_content">
                    <div class="title">Nos services</div>
                    <div class="subtitle">Que proposons nous ?</div>
                    <div class="data">
                        <p>
                            Royal Bio vend des produits biologiques locaux de différents types tels que alimentaires, cosmétiques ainsi que ménagers.
                            
                        </p>
                    </div>
                    <div class="button">
                        <a href="/~SAESYS11/pages/produit.php?recherche=Produit">Découvrir</a>
                    </div>
                </div>
                <div class="apropos_img">
                    <img src="/~SAESYS11/img/epicerie_img.jpg" alt="Image de l'épicerie">
                </div>
        </div>
    </main>
    <?php include "include/footer.php"; ?>  
</body>
</html>