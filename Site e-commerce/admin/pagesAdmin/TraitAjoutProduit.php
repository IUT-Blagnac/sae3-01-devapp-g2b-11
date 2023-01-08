<?php
            include "../includeAdmin/secuPageAdmin.php";
            require_once("../includeAdmin/connect.inc.php");
            error_reporting(0);

            // On vérifie que l'utilisateur à saisies les informations
             // if((isset($_POST['idCategorie'])) && (isset($_POST['nomProduit'])) && (isset($_POST['mailClient'])) && (isset($_POST['motPasseClient'])))
            if((isset($_POST['idCategorie'], $_POST['nomProduit'], $_POST['prixProduit'], $_POST['fournisseurProduit'], $_POST['descriptionProduit'], $_POST['quantiteStock']))){

                // Regex qui vérifie que le prénom et le nom saisie sont valides
                //  Commence par une majuscule et peux contenir des lettres de l'alphabet ainsi que des tiret
                $regex = '/^[A-Z][A-Za-zÀ-ÖØ-öø-ÿ-]*$/';
                $regChiffre = '/^[-+]?[0-9]+(\.[0-9]+)?$/';
                $regCat = '/^(0*[1-9][0-9]*|[1-9][0-9]*)$/';

                if((!preg_match($regCat, $_POST['idCategorie']))){
                    echo '<br> Catégorie Invalide';
                }

                if((!preg_match($regChiffre,$_POST['prixProduit'])) || (!preg_match($regChiffre,$_POST['quantiteStock']))){
                    echo '<br> Valeur Invalide';
                }

                if(empty($_POST['compositionProduit'])){
                    $_POST['compositionProduit']=NULL;
                }

                // if ((!preg_match($regex,$_POST['nomProduit'])) || (!preg_match($regex,$_POST['fournisseurProduit'])) || (!preg_match($regex,$_POST['descriptionProduit']))){
                //     echo '<br> Saisie Invalide';
                // }

                // recherche des infos des clients dans la base de donnée
                $query = 'SELECT * FROM PRODUIT order by IDPRODUIT asc';
                $lesproduits = oci_parse($connect, $query);
                $result = oci_execute($lesproduits);

                $ajout = array('IDCATEGORIE'=>$_POST['idCategorie'], 'NOMPRODUIT'=>$_POST['nomProduit'], 'PRIXPRODUIT'=>sprintf("%"."."."2f", $_POST['prixProduit']), 'FOURNISSEURPRODUIT'=>$_POST['fournisseurProduit'], 'DESCRIPTIONPRODUIT'=>$_POST['descriptionProduit']);
                array_walk_recursive($ajout, function (&$value) {
                  $value = trim($value);
                });
                // var_dump($ajoutDef);

                $idProd = "0";
                while(($leproduit = oci_fetch_assoc($lesproduits))!=false){     
                    // on affecte la valeur du dernier ID produit à la variable idProduit
                    $idProduit = $leproduit['IDPRODUIT'];
                    $formattedValue = sprintf("%"."."."2f", $leproduit['PRIXPRODUIT']);

                    //creation d'un tableaux contenant les éléments comparables avec les champs de la page
                    $compare = array('IDCATEGORIE'=>$leproduit['IDCATEGORIE'], 'NOMPRODUIT'=> $leproduit['NOMPRODUIT'], 'PRIXPRODUIT'=> $formattedValue, 'FOURNISSEURPRODUIT'=>$leproduit['FOURNISSEURPRODUIT'], 'DESCRIPTIONPRODUIT'=> $leproduit['DESCRIPTIONPRODUIT']);
                    array_walk_recursive($compare, function (&$value) {
                      $value = trim($value);
                    });
                    
                    //comparaison qu'il n'existe pas un produit déjà existant
                    if(array_diff($ajout, $compare) ==[]){
                        header ('location: ./AjoutProduit?Error=Produit déjà existant.php');
                        break;
                    }
                    // on incrémente de la valeur de idproduit en comparant les autres identifiants qui sont des chaines de caractères donc qui ne sont pas arrangé de manière
                    // réellement incrémentale
                    if($idProd!=$idProduit AND $idProduit>$idProd){
                        $idProd = $idProduit+1;
                    }elseif($idProd!=$idProduit){
                        $idProd=$idProd;
                    }elseif ($idProd==$idProduit) {
                        $idProd=$idProd+1;
                    }
                }

                // Requête d'insertion d'un nouveau client dans la base de donnée
                $query = 'INSERT INTO produit VALUES (:idProduit, :idCategorie, :nomProduit, :prixProduit, :fournisseurProduit, :descriptionProduit, :compositionProduit, :quantiteProduit)';
                $insertion = oci_parse($connect, $query);

                // Variable bindé
                $idCat = htmlspecialchars($_POST['idCategorie']);
                $nomP = htmlspecialchars($_POST['nomProduit']);
                $prixP = htmlspecialchars($_POST['prixProduit']);
                $fourniP = htmlspecialchars($_POST['fournisseurProduit']);
                $descriP = htmlspecialchars($_POST['descriptionProduit']);
                $compoP = htmlspecialchars($_POST['compositionProduit']);
                $quantiteP = htmlspecialchars($_POST['quantiteStock']);

                oci_bind_by_name($insertion, ":idProduit", $idProd);         
                oci_bind_by_name($insertion, ":idCategorie", $idCat);
                oci_bind_by_name($insertion, ":nomProduit", $nomP );
                oci_bind_by_name($insertion, ":prixProduit", $prixP);
                oci_bind_by_name($insertion, ":fournisseurProduit", $fourniP);
                oci_bind_by_name($insertion, ":descriptionProduit", $descriP);
                oci_bind_by_name($insertion, ":compositionProduit", $compoP);
                oci_bind_by_name($insertion, ":quantiteProduit", $quantiteP);

                // on exécute la requête
                $result = oci_execute($insertion);
                
                // on vérifie les résultats
                if (!$result) {
                    $e = oci_error($insertion);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                    print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);    

                    // Redirection avec message d'erreur
                    // header ('location: /~SAESYS11/pages/connexion.php?error=Erreur inscription... Réessayer');
                    exit();  
                } else {
                    oci_commit($connect);
                    oci_free_statement($insertJoueur);

                    // Redirection vers la page d'accueil
                    header ('location: ./GestionProduits.php');
                }
            }
?>