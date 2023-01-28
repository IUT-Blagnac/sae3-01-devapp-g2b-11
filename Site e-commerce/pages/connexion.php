<?php session_start();

// echo 'COOKIE : <pre>' . print_r($_COOKIE, true) . '</pre>';

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexions.css">
    <link rel="stylesheet" href="/~SAESYS11/styles/infoCompte.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>

<body>
    <?php include "../include/header.php"; ?>

    <?php
    // Instancie une variable qui prend la valeur du cookie si il est actif, vide sinon 
    if (isset($_COOKIE['connexion'])) {
        $login = $_COOKIE['connexion'];
        //echo '<pre>' . print_r($_COOKIE, true) . '</pre>';
        // exit();
    } else {
        $login = ' ';
        //echo '<pre>' . print_r($_COOKIE, true) . '</pre>';
        // exit();
    }

    // Vérifie si une session de blocage est en cours
    // if(isset($_SESSION['block']) && $_SESSION['block']==true){
    //     if((time() - $_SESSION['block']['time']) < 1800){ // 30 minutes en secondes
    //         $timeLeft = 1800 - (time() - $_SESSION['block']['time']);
    //         echo 'Votre compte est bloqué pour '.$timeLeft.' secondes';
    //         exit();
    //     }else{
    //         unset($_SESSION['block']);
    //     }
    // }

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
                        <div class="telephone">Votre téléphone : <span><?php echo $_SESSION['numeroClient'] ?></span></div>
                    </div>
                    <div class="box box3">
                        <div class="adresse">Votre adresse : <span><?php echo $_SESSION['adresseClient'] ?></span></div>
                    </div>
                </div>
                <div class="button">
                    <div class="btn"><a href="/~SAESYS11/include/deconnexion.php">Se déconnecter</a></div>
                    <div class="btn"><a href="/~SAESYS11/pages/modification.php">Modifier</a></div>
                </div>
                <div class="title">Commande</div>
                <div class="button">
                    <div class="btn"><a href="/~SAESYS11/pages/HistCommande.php">Historique des commandes</a></div>
                </div>
            </div>
        </div>
    <?php
    } else {
        // // Vérifie si un cookie contenant le nombre d'essais échoués existe
        // if(isset($_COOKIE['failed_attempts'])){
        //     echo "cooooooml";
        //     // Vérifie si le nombre d'essais échoués atteint 5
        //     if($_COOKIE['failed_attempts'] >= 5){
        //         // Si oui, crée un cookie contenant la date et l'heure de blocage
        //         setcookie("blocked_until", time() + 1800, time() + 1800);
        //         // Et affiche un message d'erreur indiquant que le compte est bloqué
        //         echo "Votre compte est bloqué pour 30 minutes suite à trop d'échecs d'authentification.";
        //     } else {
        //         // Sinon, met à jour le cookie contenant le nombre d'essais échoués
        //         setcookie("failed_attempts", $failed_attempts, time() + 1800);
        //         // Et affiche un message d'erreur indiquant l'échec de l'authentification   
        //         echo "Email ou mot de passe incorrect, veuillez réessayer. Nombre d'essais restants : " . (5 - $failed_attempts) . ".";
        //     }
        // }
    ?>
        <div class="container">
            <form action="/~SAESYS11/include/TraitConnexion.php" method="POST">
                <h1 class="title">Connexion</h1>

                <label for="email" class="subtitle"><b>Identifiant</b></label>
                <input type="email" value="<?php echo ($login); ?>" placeholder="Entrez votre email" name="email" required>

                <label for="password" class="subtitle"><b>Mot de passe</b></label>
                <input type="password" placeholder="Entrez le mot de passe" name="password" required>

                <span class="check">
                    <input type="checkbox" name="memo">
                    <label for="memo" class="souvenir">Se souvenir de moi</label>
                </span>
                <p style="color: rgba(0, 0, 0, 0.5); font-size: 12px;"> En cochant cette case, vous consentez à l'utilisation de vos cookies, afin de faciliter votre authentification, par l'entreprise Royal Bio</p>

                <div class="button">
                    <div class="submit btn">
                        <input type="submit" id='submit' value='Me connecter'>
                    </div>
                    <div class="cration btn">
                        <a href="/~SAESYS11/pages/inscription.php"><input type="button" value="Créer votre compte"></a>
                    </div>
                </div>
                <br>
            </form>
        </div>
    <?php
    }
    ?>

    <?php
    // setcookie("failed_attempts", 1, time() + 1800);
    // var_dump($_COOKIE['failed_attempts']);
    //     // Vérifie si un cookie contenant le nombre d'essais échoués existe
    //     if(isset($_COOKIE['failed_attempts'])){
    //         echo "cooooooml";
    //         // Vérifie si le nombre d'essais échoués atteint 5
    //         // if($_COOKIE['failed_attempts'] >= 5){
    //         //     // Si oui, crée un cookie contenant la date et l'heure de blocage
    //         //     setcookie("blocked_until", time() + 1800, time() + 1800);
    //         //     // Et affiche un message d'erreur indiquant que le compte est bloqué
    //         //     echo "Votre compte est bloqué pour 30 minutes suite à trop d'échecs d'authentification.";
    //         // } else {
    //         //     // Sinon, met à jour le cookie contenant le nombre d'essais échoués
    //         //     setcookie("failed_attempts", $failed_attempts, time() + 1800);
    //         //     // Et affiche un message d'erreur indiquant l'échec de l'authentification   
    //         //     echo "Email ou mot de passe incorrect, veuillez réessayer. Nombre d'essais restants : " . (5 - $failed_attempts) . ".";
    //         // }
    //     }
    ?>
    <?php include "../include/footer.php"; ?>
</body>

</html>