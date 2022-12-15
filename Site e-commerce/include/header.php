<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<header>
        <div class="header">
            <div class="navlogo">
                <div class="logo">
                    <img src="http://193.54.227.164/~SAESYS11/img/logo.png" alt="Logo de la start'up">
                </div>
            </div>

            <div class="navbar">
                <ul>
                    <div class="search-bar">
                        <form action=/~SAESYS11/pages/connexion.php">
                            <div class="icon"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></div>
                            <div class="input"><input type="text" placeholder="Recherche un produit ..."></div>
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
                <li><a href="/~SAESYS11/pages/produit.php">Alimentation</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php">Fruits & Légumes</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Salé</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Sucré</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Crémerie & oeufs</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Viandes</a></li>
                    </ul>
                </li>
                <li><a href="#">Hygiène</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php">Savons</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Shampooings</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Soins & Visages</a></li>
                    </ul>
                </li>
                <li><a href="/~SAESYS11/pages/produit.php">Maison</a>
                    <ul class="submenu">
                        <li><a href="/~SAESYS11/pages/produit.php">Soin du linge</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Vaiselle & Ménage</a></li>
                        <li><a href="/~SAESYS11/pages/produit.php">Décoration</a></li>
                    </ul>
                </li>
            </ul>
    </div>
    
</header>

<script src="/~SAESYS11/include/script.js"></script>
</body>
</html>