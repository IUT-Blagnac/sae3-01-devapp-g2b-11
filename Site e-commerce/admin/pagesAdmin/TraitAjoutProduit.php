<?php
    include "../includeAdmin/secuPageAdmin.php";
    require_once("../includeAdmin/connect.inc.php");//connexion à la base de données
    error_reporting(0);//on enlève l'affichage des erreurs php

    // On vérifie que l'utilisateur à saisies les informations
     // if((isset($_POST['idCategorie'])) && (isset($_POST['nomProduit'])) && (isset($_POST['mailClient'])) && (isset($_POST['motPasseClient'])))
    if((isset($_POST['idCategorie'], $_POST['nomProduit'], $_POST['prixProduit'], $_POST['fournisseurProduit'], $_POST['descriptionProduit'], $_POST['quantiteStock']))){

        // Regex qui vérifie que les chiffres dnnées sont soit des entiers, soit des réels et permet d'écrire les chiffres entre 0 et 1 sans le 0 (ex : .2 au lieu de 0.2)
        $regChiffre = '/^[-+]?[0-9]+(\.[0-9]+)?$/';

        //Regex qui vérifie qu'une chaîne de caractères contient un nombre entier positif (qui peut commencer par un ou plusieurs zéros), , suivi d'un chiffre compris entre 1 et 9, suivi de zéros ou de chiffres compris entre 0 et 9 (n'importe quelle longueur).
        $regCat = '/^(0*[1-9][0-9]*|[1-9][0-9]*)$/';

        //verifie que le champ pour la catégorie est correct
        if((!preg_match($regCat, $_POST['idCategorie']))){
            echo '<br> Catégorie Invalide';
        }

        //vérifie que le champ pour la prix et la quantité sont correct
        if((!preg_match($regChiffre,$_POST['prixProduit'])) || (!preg_match($regChiffre,$_POST['quantiteStock']))){
            echo '<br> Valeur Invalide';
        }

        //si le champ de la composition est vide, elle associe NULL au champ
        if(empty($_POST['compositionProduit'])){
            $_POST['compositionProduit']=NULL;
        }

        // recherche des infos des produits dans la base de donnée
        $query = 'SELECT * FROM PRODUIT order by IDPRODUIT asc';
        $lesproduits = oci_parse($connect, $query);
        $result = oci_execute($lesproduits);

        //création d'un tableau contenant les données des différents champs du formulaire
        $ajout = array('IDCATEGORIE'=>$_POST['idCategorie'], 'NOMPRODUIT'=>$_POST['nomProduit'], 'PRIXPRODUIT'=>sprintf("%"."."."2f", $_POST['prixProduit']), 'FOURNISSEURPRODUIT'=>$_POST['fournisseurProduit'], 'DESCRIPTIONPRODUIT'=>$_POST['descriptionProduit']);
        //La fonction array_walk_recursive parcourt chaque élément du tableau $ajout et applique la fonction anonyme passée en second argument à chaque élément. La fonction anonyme supprime les espaces en début et fin de chaque valeur du tableau.Cela permet de s'assurer que les valeurs du tableau n'ont pas d'espaces inutiles en début ou fin de chaîne de caractères.
        array_walk_recursive($ajout, function (&$value) {
          $value = trim($value);
        });

        $idProd = "0"; //identifiant de comparaison
        while(($leproduit = oci_fetch_assoc($lesproduits))!=false){     
            // on affecte la valeur du dernier ID produit à la variable idProduit
            $idProduit = $leproduit['IDPRODUIT'];
            //on crée une variable qui transforme le format numérique du prix extrait de la base de donnée en s'arrêtant 2 chiffres après la virgule 
            $formattedValue = sprintf("%"."."."2f", $leproduit['PRIXPRODUIT']);
            
            //creation d'un tableaux contenant les éléments comparables présent dans les produits parcouru avec les champs de la page
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

        //on vérifie si il n'y a pas de problème avec l'image uplaodé
        // Testons si le fichier a bien été envoyé et s'il n'y a pas d'erreur
        if ( !empty($_FILES['monfichier']) AND $_FILES['monfichier']['error'] == 0) {
            // Testons si la taille du fichier est bonne
            if (5000000 > $_FILES["monfichier"]["size"]) {
                $nom = htmlentities($idProd);
                // On peut valider le fichier et le stocker définitivement
                copy($_FILES["monfichier"]['tmp_name'], '../../uploads/'.$nom.'.png');
                
            }else {
                echo "Le fichier n'est pas du bon type ou il est trop volumineux !<BR>";
            }
        }


        // Requête d'insertion d'un nouveau client dans la base de donnée
        $query = 'INSERT INTO produit VALUES (:idProduit, :idCategorie, :nomProduit, :prixProduit, :fournisseurProduit, :descriptionProduit, :compositionProduit, :quantiteProduit, :promotion, :prixpromo)';
        $insertion = oci_parse($connect, $query);

        // Variable bindé
        $idCat = htmlspecialchars($_POST['idCategorie'],ENT_QUOTES, 'UTF-8'); 
        $nomP = htmlspecialchars($_POST['nomProduit'],ENT_QUOTES, 'UTF-8'); 
        $prixP = htmlspecialchars($_POST['prixProduit'],ENT_QUOTES, 'UTF-8'); 
        $fourniP = htmlspecialchars($_POST['fournisseurProduit'],ENT_QUOTES, 'UTF-8'); 
        $descriP = htmlspecialchars($_POST['descriptionProduit'],ENT_QUOTES, 'UTF-8'); 
        $compoP = htmlspecialchars($_POST['compositionProduit'],ENT_QUOTES, 'UTF-8'); 
        $quantiteP = htmlspecialchars($_POST['quantiteStock'],ENT_QUOTES, 'UTF-8'); 
        $promo = 'n';
        $prixPromo = NULL;

        oci_bind_by_name($insertion, ":idProduit", $idProd);         
        oci_bind_by_name($insertion, ":idCategorie", $idCat);
        oci_bind_by_name($insertion, ":nomProduit", $nomP );
        oci_bind_by_name($insertion, ":prixProduit", $prixP);
        oci_bind_by_name($insertion, ":fournisseurProduit", $fourniP);
        oci_bind_by_name($insertion, ":descriptionProduit", $descriP);
        oci_bind_by_name($insertion, ":compositionProduit", $compoP);
        oci_bind_by_name($insertion, ":quantiteProduit", $quantiteP);
        oci_bind_by_name($insertion, ":promotion", $promo);
        oci_bind_by_name($insertion, ":prixpromo", $prixPromo);

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
            header ('location: ./GestionProduits.php?mssg=Ajout effectué');
        }
    }
?>