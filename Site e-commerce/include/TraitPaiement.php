<?php
     session_start();
    // Déclaration des expressions régulières pour la validation des champs
    $nomCarteRegex = '/^[a-zA-Z]+$/';
    $prenomCarteRegex = '/^[a-zA-Z]+$/';
    $numCarteRegex = '/^[0-9]{16}$/';
    $cryptogrammeRegex = '/^[0-9]{3}$/';
    $nomClientRegex = '/^[a-zA-Z]+$/';
    $villeRegex = '/^[a-zA-Z]+$/';
    $codePostalRegex = '/^[0-9]{5}$/';
    $adresseRegex = '/^[a-zA-Z0-9\s,#-]*$/';
    $telephoneRegex = '/^[0-9]{10}$/';

    // Initialisation d'un tableau d'erreurs vide
    $errors = array();

    // Récupération des données du formulaire
    $nomCarte = htmlspecialchars($_POST['nomCarte'], ENT_QUOTES, 'UTF-8');
    $prenomCarte = htmlspecialchars($_POST['prenomCarte'], ENT_QUOTES, 'UTF-8');
    $numCarte = htmlspecialchars($_POST['numCarte'], ENT_QUOTES, 'UTF-8');
    $dateExpiration = htmlspecialchars($_POST['dateExpiration'], ENT_QUOTES, 'UTF-8');
    $cryptogramme = htmlspecialchars($_POST['Cryptogramme'], ENT_QUOTES, 'UTF-8');
    $nomClient = htmlspecialchars($_POST['nomClient'], ENT_QUOTES, 'UTF-8');
    $ville = htmlspecialchars($_POST['ville'], ENT_QUOTES, 'UTF-8');
    $codePostal = htmlspecialchars($_POST['codePostal'], ENT_QUOTES, 'UTF-8');
    $adresse = htmlspecialchars($_POST['adresse'], ENT_QUOTES, 'UTF-8');
    $telephone = htmlspecialchars($_POST['Telephone'], ENT_QUOTES, 'UTF-8');

    $dateExpiration .= '-01';

    // Validation des champs
    if(!preg_match($nomCarteRegex, $nomCarte)) {
        $errors[] = "Le nom du titulaire de la carte n'est pas valide";
    }
    if(!preg_match($prenomCarteRegex, $prenomCarte)) {
        $errors[] = "Le prénom du titulaire de la carte n'est pas valide";
    }
    if(!preg_match($numCarteRegex, $numCarte)) {
        $errors[] = "Le numéro de la carte n'est pas valide";
    }
    if(!preg_match($cryptogrammeRegex, $cryptogramme)) {
    $errors[] = "Le cryptogramme n'est pas valide";
    }
    if(!preg_match($nomClientRegex, $nomClient)) {
    $errors[] = "Le nom du client n'est pas valide";
    }
    if(!preg_match($villeRegex, $ville)) {
    $errors[] = "Le nom de la ville n'est pas valide";
    }
    if(!preg_match($codePostalRegex, $codePostal)) {
    $errors[] = "Le code postal n'est pas valide";
    }
    if(!preg_match($adresseRegex, $adresse)) {
    $errors[] = "L'adresse n'est pas valide";
    }
    if(!preg_match($telephoneRegex, $telephone)) {
    $errors[] = "Le numéro de téléphone n'est pas valide";
    }
    if(strtotime($dateExpiration) < time()){
    $errors[] = "Date d'expiration non valide";
    }
    // Si il y a des erreurs, affichage du message d'erreur
    if(!empty($errors)) {
    echo "Erreurs de validation : <br>";
    foreach($errors as $error) {
    echo $error . "<br>";
    }
    }
    // Sinon, traitement des données (ex : enregistrement en base de données)
    else {
    
        $numCarte = substr(hash("sha1", $numCarte), 0, 20);
       require_once("connect.inc.php");
		error_reporting(0);
        $nomuti=$_SESSION['nomClient'];
    
        

        $query = 'SELECT IDCLIENT FROM clients WHERE NOMCLIENT = :nomcli';
        $leclient = oci_parse($connect, $query);
        oci_bind_by_name($leclient, ":nomcli", $nomuti);
        $result = oci_execute($leclient);
        
            while (($lesinfos = oci_fetch_assoc($leclient)) != false) {
             $idcli=$lesinfos['IDCLIENT'];
            }
        
        $query = "SELECT MAX(IDPAIEMENT) as MAX_ID FROM PAIEMENT";
        $stid = oci_parse($connect, $query);
        oci_execute($stid);
        $row = oci_fetch_array($stid, OCI_ASSOC);
        $max_id = $row['MAX_ID'];
        oci_free_statement($stid);

        
        $query = "INSERT INTO PAIEMENT (IDPAIEMENT, TYPEPAIEMENT) VALUES (:max_id+1, 'Carte Bleu')";
        $stid = oci_parse($connect, $query);
        oci_bind_by_name($stid, ':max_id', $max_id);
        $r = oci_execute($stid);
        oci_free_statement($stid);

    
        $dateinvalidite = date('Y-m-d', strtotime($dateExpiration));
        $query = "INSERT INTO DETAILPAIEMENT (IDCLIENT, IDPAIEMENT, NUMEROCARTE, DATEINVALIDITE, CRYPTOGRAMMECARTE) 
        VALUES (:idclient, :idpaiement+1, :numerocarte, TO_DATE(:dateinvalidite, 'yyyy-mm-dd'), :cryptogrammecarte)";
        $stid = oci_parse($connect, $query);
        oci_bind_by_name($stid, ':idclient', $idcli);
        oci_bind_by_name($stid, ':idpaiement', $max_id);
        oci_bind_by_name($stid, ':numerocarte', $numCarte);
        oci_bind_by_name($stid, ':dateinvalidite', $dateExpiration);
        oci_bind_by_name($stid, ':cryptogrammecarte', $cryptogramme);
        $r = oci_execute($stid);
        
        $query = "SELECT MAX(TO_NUMBER(IDCOMMANDE)) as max_number FROM COMMANDE";
        $stid = oci_parse($connect, $query);
        oci_execute($stid);
        $row = oci_fetch_array($stid, OCI_ASSOC);
        oci_free_statement($stid);
        
        $max_idcom = $row['MAX_NUMBER'];
        
        $datecommande = date('Y-m-d', strtotime($datecommande));

        $datecommande = date('Y-m-d');
        $idcommande = $max_idcom + 1;
        $idpaiement = $max_id+1;
        $fraislivraison = number_format($fraislivraison, 2, '.', '');
        $query = "INSERT INTO COMMANDE (IDCOMMANDE, IDPAIEMENT, IDCLIENT, DATECOMMANDE, FRAISLIVRAISON, ADRESSELIVRAISON, NOMLIVRAISON, CODEPOSTALLIVRAISON, VILLELIVRAISON, TELEPHONELIVRAISON) 
            VALUES (:idcommande, :idpaiement, :idclient, TO_DATE(:datecommande, 'yyyy-mm-dd'), :fraislivraison, :adresselivraison, :nomlivraison, :codepostallivraison, :villelivraison, :telephonelivraison)";
        $stid = oci_parse($connect, $query);
        oci_bind_by_name($stid, ':idcommande', $idcommande);
        oci_bind_by_name($stid, ':idpaiement', $idpaiement);
        oci_bind_by_name($stid, ':idclient', $idcli);
        oci_bind_by_name($stid, ':datecommande', $datecommande);
        oci_bind_by_name($stid, ':fraislivraison', $fraislivraison);
        oci_bind_by_name($stid, ':adresselivraison',$adresse);
        oci_bind_by_name($stid, ':nomlivraison', $nomClient);
        oci_bind_by_name($stid, ':codepostallivraison', $codePostal);
        oci_bind_by_name($stid, ':villelivraison', $ville);
        oci_bind_by_name($stid, ':telephonelivraison', $telephone);
        $r = oci_execute($stid);
        oci_free_statement($stid);


    $idclie = $_SESSION['idClient'];
    echo $idclie;
    $query = "SELECT idpanier FROM panier WHERE IDCLIENT = :idClient";
    $stmt = oci_parse($connect, $query);
    oci_bind_by_name($stmt, ':idClient', $idclie);
    oci_execute($stmt);
    
    $row = oci_fetch_assoc($stmt);
    $idPanier = $row['IDPANIER'];

    oci_free_statement($stmt);
    
    // Récupération des produits dans le panier
    $query = "SELECT * FROM contenupanier WHERE idpanier = :idPanier";
    $stmt = oci_parse($connect, $query);
    oci_bind_by_name($stmt, ':idPanier', $idPanier);
    oci_execute($stmt);
    //$produits = oci_fetch_all($stmt, $produits);
    
    while (($produit = oci_fetch_assoc($stmt)) != false) {
        $idProduit = $produit['IDPRODUIT'];
        $nbProduit = $produit['NBPRODUIT'];
        $query3 = "INSERT INTO QUANTITEPRODUIT (IDCOMMANDE, IDPRODUIT, NBPRODUIT) VALUES ('$idcommande', '$idProduit', '$nbProduit')";
        $stid3 = oci_parse($connect, $query3);
        oci_execute($stid3);
      
     
        $removeProc = oci_parse($connect, "BEGIN REMOVE_FROM_CART($idPanier, $idProduit); END;");
        oci_execute($removeProc);
    } 
        oci_close($connect);
        showAlert("Votre commande a été effectuée");
        header("Refresh: 0; URL=/~SAESYS11/index.php");
        exit();
    }



    function showAlert($msg)
{
    echo "<script>alert('$msg');</script>";
    
}
    ?>