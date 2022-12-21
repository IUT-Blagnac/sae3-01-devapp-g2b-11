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
                        <form action="/~SAESYS11/pages/produit.php">
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
                <li><a href="/~SAESYS11/pages/produit.php?recherche=Aliments">Alimentation</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Fruits">Fruits</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Légumes">Légumes</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Salé">Salé</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Sucré">Sucré</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Crémerie">Crémerie & oeufs</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Viandes">Viandes</a></li>
                    </ul>
                </li>
                <li><a href="/~SAESYS11/pages/produit.php?recherche=Hygiène">Hygiène</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Savons">Savons</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Shampoings">Shampooings</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Soins et visage">Soins & Visage</a></li>
                    </ul>
                </li>
                <li><a href="/~SAESYS11/pages/produit.php?recherche=Entretien">Entretien</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Linge">Soin du linge</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Menage">Vaiselle & Ménage</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php?recherche=Décoration">Décoration</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    
</header>

<script src="/~SAESYS11/include/script.js"></script>
</body>
</html>