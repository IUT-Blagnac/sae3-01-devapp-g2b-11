    <!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/produit.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>
<body>
    <?php include "../include/header.php"; ?>

    <main class="produits">
        <div class="produit_header">
            <div class="title">Votre rechercher : <?php echo $_GET['recherche']?></div>
            <div class="input_trie"> 
                <form action="#">
                    <select name="choix" class="slct" value="Trier par">
                        <option value="choix1">Prix croissant</option>
                        <option value="choix1">Prix décroissant</option>
                    </select>
                </form>
            </div>
        </div>

        <div class="product_container">
            <?php
                require_once("../include/connect.inc.php"); 
                error_reporting(0);

                switch($_GET['recherche']){
                    // CATÉGORIES MÈRES
                    case 'Produit':
                        $query = "
                            select *
                            from produit
                        ";
                        break;
                    case 'Aliments':
                            $query = "
                                select * 
                                from produit 
                                where idcategorie in ('1', '01', '02', '03', '04', '05', '06', '001', '002', '003', '004', '005', '006')
                            ";
                            break;
                    case 'Hygiène':
                            $query = "
                                select *
                                from produit
                                where idcategorie in ('2','07','08', '09', '007', '008', '009')
                            ";
                            break;
                    case 'Entretien':
                            $query = "
                                select * 
                                from produit
                                where idcategorie in ('3', '10', '11', '12', '010', '13', '14', '15', '16', '17', '18', '19') 
                            ";
                            break;

                    // CATÉGORIES FILLES
                    case 'Fruits':
                            $query = "
                                select *
                                from produit
                                where idcategorie = '01'
                                    or idcategorie = '001'
                            ";
                            break;
                    case 'Légumes':
                            $query = "
                                select *
                                from produit
                                where idcategorie = '02'
                                    or idcategorie = '002'
                            ";
                            break;
                    case 'Salé':
                            $query = "
                                select *
                                from produit
                                where idcategorie = '06'
                                    or idcategorie = '006';
                            ";
                            break;
                    case 'Sucré':
                            $query = "
                                select *
                                from produit
                                where idcategorie = '05'
                                    or idcategorie = '005'
                            ";
                            break;
                    case 'Crémerie':
                            $query = "
                                select *
                                from produit
                                where idcategorie = '04'
                                    or idcategorie = '004'
                            ";
                            break;
                    case 'Viandes':
                            $query = "
                                select *
                                from produit
                                where idcategorie = '03'
                                    or idcategorie = '003'
                            ";
                            break;
                    case 'Savons':
                            $query = "
                                select *
                                from produit 
                                where idcategorie = '07'
                                    or idcategorie = '007'
                            ";
                            break;
                    case 'Shampoings':
                            $query = "
                                select *
                                from produit 
                                where idcategorie = '08'
                                    or idcategorie = '008'
                            ";
                            break;
                    case 'Visage':
                            $query = "
                                select *
                                from produit 
                                where idcategorie = '09'
                                    or idcategorie = '009'
                            ";
                            break;
                    case 'Linge':
                            $query = "
                                select *
                                from produit 
                                where idcategorie = '11'
                            ";
                            break;
                    case 'Menage':
                            $query = "
                                select *
                                from produit 
                                where idcategorie in ('12', '010', '13', '14', '15', '16', '17', '18', '19')
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
                            where lower(nomproduit) LIKE '%$_GET[recherche]%'
                        ";
                        
                }

                // préparation de la requête
                $lesProduits = oci_parse($connect, $query);

                // exécution de la requête
                $result = oci_execute($lesProduits);

                // Si aucune ligne trouve ...
                if (!$result) {	
                    echo 'Aucun produit correspond à votre recherche';
                }

                // Affichage des produits 
                while (($leProduit = oci_fetch_assoc($lesProduits)) != false) {
                    // echo 'Nom : ' . $leProduit['NOMPRODUIT'] . '     ; ' . ' ID : ' . $leProduit['IDPRODUIT']; 
                    echo '
                        <div class="product_card">
                            <div class="product_img">
                                <img src="/~SAESYS11/img/'.$leProduit['NOMPRODUIT'].'.png" alt="image du produit">
                            </div>
                            <div class="product_title">'. $leProduit['NOMPRODUIT'] .'</div>
                            <div class="product_data">
                                <div class="product_description">'. $leProduit['DESCRIPTIONPRODUIT'] .'</div>
                                <div class="product_prix">
                                    prix au kg : <br />
                                    <span class="prix">'. $leProduit['PRIXPRODUIT'] . '€</span>
                                </div>
                            </div>
                            <div class="product_btn">
                                <div class="btn_add btn">
                                    <a href="#">Ajouté au panier</a>
                                </div>
                                <div class="btn_info btn">
                                    <a href="#">voir + d\'info</a>
                                </div>
                            </div>
                        </div>

                    ';
                }

                // libération du curseur
                oci_free_statement($lesJoueursFr);
            ?>
        </div>
        
    </main>
   
    <?php include "../include/footer.php"; ?>
</body>
</html>
            

