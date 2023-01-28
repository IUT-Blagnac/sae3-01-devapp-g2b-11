    <?php session_start(); ?>

    <!DOCTYPE html>
    <html lang="fr">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Royal Bio - l'épicerie bio</title>
        <link rel="stylesheet" href="/~SAESYS11/styles/produits.css">

        <!-- INCLUDES LINKS -->
        <link rel="stylesheet" href="/~SAESYS11/styles.css">
    </head>

    <body>
        <?php include "../include/header.php"; ?>
        <main class="produits">
            <div class="produit_header">
                <div class="title">Votre recherche : <?php echo $_GET['recherche'] ?></div>
                <div class="input_trie">
                    <form>
                        <select name="choix" id="optPrix" class="slct" value="Trier par" onchange="window.location.href='produit.php?recherche=<?php echo htmlspecialchars($_GET['recherche'], ENT_QUOTES, 'UTF-8'); ?>&tri='+this.value">
                            <option value="ASC" <?php if (!isset($_GET['tri']) || ($_GET['tri'] == 'ASC' && ctype_alnum($_GET['tri']))) {
                                                    echo 'selected';
                                                } ?>>Prix croissant</option>
                            <option value="DESC" <?php if (!isset($_GET['tri'])) {
                                                        echo '';
                                                    } else if ($_GET['tri'] == 'DESC' && ctype_alnum($_GET['tri'])) {
                                                        echo 'selected';
                                                    } ?>>Prix décroissant</option>
                        </select>

                    </form>
                </div>
            </div>
            <div class="product_container">

                <?php
                require_once("../include/connect.inc.php");
                error_reporting(0);

                $allowed_values = array('ASC', 'DESC');
                $tri = isset($_GET['tri']) && in_array(strtoupper(trim($_GET['tri'])), $allowed_values) ? strtoupper(trim($_GET['tri'])) : 'ASC';

                $recherche = filter_var($_GET['recherche'], FILTER_SANITIZE_STRING);

                switch ($recherche) {
                        // CATÉGORIES MÈRES
                    case 'Produit':
                        $query = "
                            select *
                            from produit
                            order by prixProduit $tri
                        ";
                        break;
                    case 'Aliments':
                        $query = "
                                select * 
                                from produit 
                                where idcategorie in ('1', '01', '02', '03', '04', '05', '06', '001', '002', '003', '004', '005', '006')
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Hygiène':
                        $query = "
                                select *
                                from produit
                                where idcategorie in ('2','07','08', '09', '007', '008', '009')
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Entretien':
                        $query = "
                                select * 
                                from produit
                                where idcategorie in ('3', '10', '11', '12', '010', '13', '14', '15', '16', '17', '18', '19') 
                                order by prixProduit $tri
                            ";
                        break;

                        // CATÉGORIES FILLES
                    case 'Fruits':
                        $query = "
                                select *
                                from produit
                                where idcategorie = '01'
                                    or idcategorie = '001'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Légumes':
                        $query = "
                                select *
                                from produit
                                where idcategorie = '02'
                                    or idcategorie = '002'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Salé':
                        $query = "
                                select *
                                from produit
                                where idcategorie = '06'
                                    or idcategorie = '006';
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Sucré':
                        $query = "
                                select *
                                from produit
                                where idcategorie = '005'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Crémerie':
                        $query = "
                                select *
                                from produit
                                where idcategorie = '04'
                                    or idcategorie = '004'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Viandes':
                        $query = "
                                select *
                                from produit
                                where idcategorie = '03'
                                    or idcategorie = '003'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Savons':
                        $query = "
                                select *
                                from produit 
                                where idcategorie = '07'
                                    or idcategorie = '007'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Shampoings':
                        $query = "
                                select *
                                from produit 
                                where idcategorie = '08'
                                    or idcategorie = '008'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Soins et visage':
                        $query = "
                                select *
                                from produit 
                                where idcategorie = '09'
                                    or idcategorie = '009'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Linge':
                        $query = "
                                select *
                                from produit 
                                where idcategorie = '11'
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Menage':
                        $query = "
                                select *
                                from produit 
                                where idcategorie in ('12', '010', '13', '14', '15', '16', '17', '18', '19')
                                order by prixProduit $tri
                            ";
                        break;
                    case 'Décoration':
                        echo "développement en cours";
                        break;

                        // SOUS CATÉGORIES FILLES


                        // COMPORTEMENT PAR DÉFAUT :
                    default:
                        $query =  "
                            select *
                            from produit
                            where lower(nomproduit) LIKE lower('%$recherche%')
                            order by prixProduit $tri
                        ";
                }


                if (isset($_SESSION['access']) && $_SESSION['access'] == 'oui') {
                    $nc = filter_var($_SESSION['nomClient'], FILTER_SANITIZE_STRING);
                    $pc = filter_var($_SESSION['prenomClient'], FILTER_SANITIZE_STRING);

                    $query2 = "SELECT * FROM CLIENTS WHERE NOMCLIENT = :nc AND PRENOMCLIENT = :pc";

                    $lesclients = oci_parse($connect, $query2);
                    oci_bind_by_name($lesclients, ':nc', $nc);
                    oci_bind_by_name($lesclients, ':pc', $pc);
                    $result = oci_execute($lesclients);

                    if ($result === false) {
                        echo 'Aucun client';
                    }

                    $infoClients = oci_fetch_assoc($lesclients);
                    if ($infoClients) {
                        $idClient = $infoClients['IDCLIENT'];
                    } else {
                        $idClient = 0;
                    }
                } else {
                    $idClient = 0;
                }

                // préparation de la requête
                $lesProduits = oci_parse($connect, $query);

                // exécution de la requête
                $result = oci_execute($lesProduits);

                // Si aucune ligne trouve ...
                if (!$result) {
                    // var_dump($result);
                } else {
                    // var_dump($result);
                }

                $i = 0; // compteur de produits
                $prix=null;
                while (($leProduit = oci_fetch_assoc($lesProduits)) != false) {
                    if($leProduit['PRIXPROMO']!=NULL){
                        $prix = $leProduit['PRIXPROMO']."€ /!\ PROMOTION /!\ ";
                    }else{
                        $prix = $leProduit['PRIXPRODUIT']."€";
                    }
                    $i++;

                    // echo 'modal'.$i.'<br/>';

                    echo '
                        <div class="product_content">
                            <div class="product_card">
                                <div class="product_img">
                                    <img src="/~SAESYS11/uploads/' . $leProduit['IDPRODUIT'] . '.png" alt="image du produit">
                                </div>
                                <div class="product_title">' . $leProduit['NOMPRODUIT'] . '</div>
                                <div class="product_data">
                                    <div class="product_description">
                                        ' . $leProduit['DESCRIPTIONPRODUIT'] . '
                                    </div>
                                    <div class="product_prix">
                                        prix au kg : <br />
                                        <span class="prix">' . $prix . '</span>
                                    </div>
                                </div>
                                <div class="product_btn">
                                    <div class="btn_add btn">
                                    	<form action="/~SAESYS11/include/fonctions.php" method="post">
    										<input type="hidden" name="idProduit" value="' . $leProduit['IDPRODUIT'] . '">
    										<input type="hidden" name="idClient" value="' . $idClient . '">
    										<input type="hidden" name="fonction" value="ajoutAuPanier">
    										<input type="hidden" name="url" value="?recherche=' . htmlspecialchars($_GET['recherche'], ENT_QUOTES, 'UTF-8') . '&tri=' . $_GET['tri'] . '">
    										<button type="submit" name="submit" value="ajoutAuPanier">Ajouter au panier</button>
										</form>
                                    </div>
                                    <div class="btn_info btn">
                                        <button class="modal-open" data-modal="modal' . $i . '">En savoir plus</button>
                                    </div>
                                </div>
                            </div>
            
                            <div class="modal " id="modal' . $i . '">
                                <div class="modal_content">
                                    <div class="close-modal">
                                        <button class="modal-close"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 20.188l-8.315-8.209 8.2-8.282-3.697-3.697-8.212 8.318-8.31-8.203-3.666 3.666 8.321 8.24-8.206 8.313 3.666 3.666 8.237-8.318 8.285 8.203z"/></svg></button>
                                    </div>
                                    <div class="left">
                                        <img src="/~SAESYS11/uploads/' . $leProduit['IDPRODUIT'].'.png">
                                    </div>
                                    <div class="right">
                                        <div class="title">' . $leProduit['NOMPRODUIT'] . '</div>
                                        <div class="prix">
                                            <div class="prix_title">Prix au kilo</div>
                                            <div class="prix_data">' . $leProduit['PRIXPRODUIT'] . '€</div>
                                        </div>
                                        <div class="quantite">
                                            <div class="quantite_title">Quantité Disponible : ' . $leProduit['QUANTITESTOCK'] . '</div>
                                            <div class="quantite_data"></div>
                                        </div>
                                        <div class="composition">
                                            <div class="composition_title">Composition :</div>
                                            <div class="composition_data">
                                                ' . $leProduit['COMPOSITIONPRODUIT'] . '
                                            </div>
                                        </div>
                                        <div class="fournisseur">
                                            <div class="fournisseur_title">Fournisseur :</div>
                                            <div class="fournisseur_data">
                                                ' . $leProduit['FOURNISSEURPRODUIT'] . '
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ';
                }

                // libération du curseur
                // oci_free_statement($lesJoueursFr);
                ?>
            </div>

        </main>

        <?php include "../include/footer.php"; ?>

        <script>
            var btnOpen = document.querySelectorAll('.modal-open');

            btnOpen.forEach(function(btn) {
                btn.addEventListener('click', () => {
                    console.log('Open Modal');

                    var modal = btn.getAttribute('data-modal');
                    document.getElementById(modal).classList.add('visible');
                });
            });

            var closeBtn = document.querySelectorAll('.modal-close');

            closeBtn.forEach(function(btn) {
                btn.addEventListener('click', () => {
                    var modal = btn.closest('.modal').classList.remove('visible');
                });
            });
        </script>
    </body>

    </html>