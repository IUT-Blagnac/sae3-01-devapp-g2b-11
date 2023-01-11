<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/tete.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<header>
        <div class="header">
            <div class="navlogo">
                <div class="logo">
                    <img src="/~SAESYS11/img/logo.png" alt="Logo de la start'up">
                </div>
            </div>

            <div class="navbar">
                <ul>
                    <div class="recherche">
                        <form id="form" action="/~SAESYS11/pages/produit.php">
                            <div class="icon"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></div>
                            <div class="input"><input type="text" name="recherche" placeholder="Recherche un produit ..."></div>
                        </form>
                    </div>
                    
                    <li><a href="/~SAESYS11/pages/contact.php" class="button">Contact</a></li>
                    <li><a href="/~SAESYS11/pages/connexion.php" class="button">Connexion</a></li>
                    <li><a href="#" class="panier" id="panier-btn"><i class="fa-solid fa-basket-shopping"></i></a></li>
                </ul>

                <div class="toggle">
                <i class="fa-solid fa-bars"></i>
            </div>
            </div>


        </div>
        

        <div class="subheader">
            <ul class="menu">
                <li><a href="/~SAESYS11/">Accueil</a></li>
                <li><a href="/~SAESYS11/pages/produit.php?recherche=Aliments&tri=asc">Alimentation</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Fruits&tri=asc">Fruits</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Légumes&tri=asc">Légumes</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Salé&tri=asc">Salé</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Sucré&tri=asc">Sucré</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Crémerie&tri=asc">Crémerie & oeufs</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Viandes&tri=asc">Viandes</a></li>
                    </ul>
                </li>
                <li><a href="/~SAESYS11/pages/produit.php?recherche=Hygiène&tri=asc">Hygiène</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Savons&tri=asc">Savons</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Shampoings&tri=asc">Shampooings</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Soins et visage&tri=asc">Soins & Visage</a></li>
                    </ul>
                </li>
                <li><a href="/~SAESYS11/pages/produit.php?recherche=Entretien&tri=asc">Entretien</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Linge&tri=asc">Soin du linge</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Menage&tri=asc">Vaiselle & Ménage</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Décoration&tri=asc">Décoration</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    
</header>

<script src="/~SAESYS11/include/script.js"></script>
</body>
</html>