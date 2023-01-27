<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie Bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/panier.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>

<body>
    <?php include "../include/header.php"; ?>

    <?php 
        //CED ICi FAIRE CHECK COMBIEN ARTICLES
    ?>

    <div class="container">
        <div class="left">
            <div class="title">Détail de votre panier</div>
            <div class="produits">

                <?php
                require_once("../include/connect.inc.php");
                error_reporting(0);

                if (isset($_SESSION) && $_SESSION['access'] === 'oui') {

                    $idClient = $_SESSION['idClient'];

                    $idpanier = $_GET['panier'];

                    //echo $idpanier;
                    // On recherche les informations du panier de l'article
                    $query = "SELECT * FROM PANIER WHERE IDPANIER = '$idpanier'";
                    $lepanier = oci_parse($connect, $query);
                    $result = oci_execute($lepanier);

                    if (!$result) {
                        $e = oci_error($lepanier);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

                        // Redirection avec message d'erreur
                        // header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
                        exit();
                    }

                    $lepanier = oci_fetch_assoc($lepanier);
                    $totalPanier = $lepanier['PRIXPANIER'];

                    // On recherche le nombre d'article du panier
                    $query = "SELECT COUNT(IDPRODUIT) AS TOTALARTICLE FROM CONTENUPANIER WHERE IDPANIER = '$idpanier'";
                    $totalArticle = oci_parse($connect, $query);
                    $result = oci_execute($totalArticle);

                    if (!$result) {
                        $e = oci_error($totalArticle);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

                        // Redirection avec message d'erreur
                        // header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
                        exit();
                    }

                    $totalArticle = oci_fetch_assoc($totalArticle);
                    $totalArticle = intval($totalArticle['TOTALARTICLE']);

                    // On recherche les informations du contenu du panier
                    $query = "SELECT C.IDPRODUIT AS IDPRODUIT, P.PRIXPRODUIT AS PRIXPRODUIT, P.NOMPRODUIT AS NOMPRODUIT, C.NBPRODUIT AS NBPRODUIT FROM CONTENUPANIER C, PRODUIT P WHERE C.IDPANIER = '$idpanier' AND C.IDPRODUIT = P.IDPRODUIT";
                    $lespaniers = oci_parse($connect, $query);
                    $result = oci_execute($lespaniers);

                    if (!$result) {
                        $e = oci_error($lespaniers);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

                        // Redirection avec message d'erreur
                        // header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
                        exit();
                    }

                    /*
        * DEBOGGAGE ERREUR : UN SEULE PRODUIT S'AFFICHE

        while (($lepanier = oci_fetch_assoc($lepanier)) != false) {
            echo '<pre>' . print_r($lepanier, true) . '</pre>';
        }
        exit();
        */

                    while (($lepanier = oci_fetch_assoc($lespaniers)) != false) {
                        $idproduit = $lepanier['IDPRODUIT'];

                        // On recherche les informations des produit du panier
                        $query = "SELECT * FROM PRODUIT WHERE IDPRODUIT = '$idproduit'";

                        $produits = oci_parse($connect, $query);
                        $result = oci_execute($produits);

                        if (!$result) {
                            $e = oci_error($produits);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                            print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);

                            // Redirection avec message d'erreur
                            // header('location: /~SAESYS11/pages/connexion.php?error=Erreur connexion ... Réessayer');
                            exit();
                        }



                        while (($produit = oci_fetch_assoc($produits)) != false) {

                ?>
                            <form action="/~SAESYS11/include/fonctions.php" method="post">
                                <div class="produit">
                                    <div class="produit-img">
                                        <img src="/~SAESYS11/uploads/<?php echo $produit['IDPRODUIT'] ?>.png" alt="image du produit">
                                    </div>

                                    <div class="produit-infos">
                                        <div class="produit-title">Article : <?php echo htmlspecialchars($produit['NOMPRODUIT'], ENT_QUOTES, 'UTF-8'); ?></div>
                                        <div class="produit-prix">Prix : <?php echo htmlspecialchars($produit['PRIXPRODUIT'], ENT_QUOTES, 'UTF-8'); ?> €</div>
                                    </div>
                                    <div class="produit-btn">

                                        <input type="hidden" name="idClient" value="<?php echo htmlspecialchars($idClient, ENT_QUOTES, 'UTF-8'); ?>">
                                        <input type="hidden" name="idProduit" value="<?php echo htmlspecialchars($produit['IDPRODUIT'], ENT_QUOTES, 'UTF-8'); ?>">
                                        <input type="number" name="quantite" min="1" value="<?php echo htmlspecialchars($lepanier['NBPRODUIT'], ENT_QUOTES, 'UTF-8'); ?>">
                                        <button type="submit" class="btn" name="submit" value="updateProduct">Mettre a jour</button>
                                        <input type="hidden" name="fonction" value="redirectCommande">
                                        <button type="submit" class="btn" name="submit" value="removePanier">Supprimer</button>
                                    </div>
                                </div>
                            </form>

                        <?php
                        }

                        ?>
                <?php
                    }
                }
                ?>
            </div>
        </div>
        <div class="right">
            <div class="title">Récapitulatif</div>
            <div class="content">
                <div class="recap">
                    <div class="recap-content">
                        <div class="recap-li">
                            <div class="recap-text"><?php echo $totalArticle ?> article(s)</div>
                            <div class="recap-data"><?php echo $totalPanier ?> €</div>
                        </div>
                        <div class="recap-li">
                            <div class="recap-text">Frais de livraison</div>
                            <div class="recap-data">Gratuit</div>
                        </div>
                    </div>
                </div>
                <form action="/~SAESYS11/include/fonctions.php" method="post">
                    <div class="commander">
                        <div class="commander-content">
                            <div class="commander-text">Total panier</div>
                            <div class="commander-data"><?php echo $totalPanier ?> €</div>
                        </div>
                        <input type="hidden" name="fonction" value="redirectCommande">
                        <input type="hidden" name="total" value="<?php echo htmlspecialchars($totalPanier, ENT_QUOTES, 'UTF-8'); ?>">
                        <button type="submit" name="submit" value="redirectCommande" class="commander-btn">Passer la commande</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <?php include "../include/footer.php"; ?>
</body>

</html>