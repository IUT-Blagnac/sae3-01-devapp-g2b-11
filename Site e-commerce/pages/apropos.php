<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/apropos.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>
<body>
    
    <?php include "../include/header.php" ?>
    <main>
        <div class="apropos container">
                <div class="apropos_content">
                    <div class="title">A propos</div>
                    <div class="subtitle">Qui sommes nous ?</div>
                    <div class="data">
                        <p>
                            Royal Bio est une petite entreprise commerciale d’épiceries biologiques locales,
							comportant 36 employés, notre but est de rendre accessible facilement les produits de la
							région pour soutenir les producteurs locaux. Nous possèdons déjà 4 sites en
							Haute-Garonne, 5 dans le Tarn et 3 dans le Gers.
                        </p>
                    </div>
                </div>
                <div class="apropos_img">
                    <img src="/~SAESYS11/img/epicerie_img.jpg" alt="Image de l'épicerie">
                </div>
        </div>

        <div class="services container">
                <div class="services_content">
                    <div class="subtitle">Historique</div>
                    <div class="data">
                        <p>
                            Notre premier site a été créé en 2012 à Blagnac, pour répondre aux besoins de
							nombreux agriculteurs qui souhaitaient plus de visibilité et un point de vente centralisé.
							Après le succès de cette épicerie, en 2015 l’entreprise décide de s’étendre à d’autres
							départements et ouvre plusieurs sites en Occitanie.
                        </p>
                    </div>
                </div>
                <div class="apropos_img">
                    <img src="/~SAESYS11/img/blagnac.jpg" alt="Image de la ville de Blagnac">
                </div>
        </div>

        <div class="apropos container">
        	<div class="apropos_content">
        		<div class="subtitle">Nos fondateurs</div>
        		<div class="data">
        			<p>
        				L’entreprise est actuellement dirigée par Harry Keau, qui a lui-même créé Royal Bio,
						et Clément Hine, qui est community manager dans l’entreprise depuis 2 ans. Ils travaillent
						ensemble dans le but d’attirer de nouveaux clients, ayant pour objectif de s’étendre à
						d’autres régions. C’est dans cette volonté d’attirer une nouvelle clientèle et de concurrencer
						les supermarchés que l’entreprise a décidé de créer un site de e-commerce.
        			</p>
        		</div>
        	</div>
        	<div class="apropos_img">
        		<img src="/~SAESYS11/img/harry_keau.png" align="Image de notre PDG">
        	</div>
        </div>
    </main>
    <?php include "../include/footer.php" ?>
</body>
</html>