<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie bio</title>
</head>

<body>
</body>

<?php
session_start();

if (isset($_POST['submit'])) {
    switch ($_POST['submit']) {
        case 'ajoutAuPanier':
            $idProduit = htmlspecialchars($_POST['idProduit'], ENT_QUOTES, 'UTF-8');
            $idClient = htmlspecialchars($_POST['idClient'], ENT_QUOTES, 'UTF-8');
            ajoutAuPanier($idProduit, $idClient);
            break;
        case 'removePanier':
            $idProduit = htmlspecialchars($_POST['idProduit'], ENT_QUOTES, 'UTF-8');
            $idClient = htmlspecialchars($_POST['idClient'], ENT_QUOTES, 'UTF-8');
            removePanier($idProduit, $idClient);
            break;
        case 'redirectCommande':
            if(!isset($_POST['total']) || $_POST['total'] == 0){
                showAlert("Votre panier est vide");
                $idClient = htmlspecialchars($_POST['idClient'], ENT_QUOTES, 'UTF-8');
                header("Refresh: 0; URL=/~SAESYS11/pages/affichagePanier.php?panier=$idClient");
                exit();
            }else{
                header("Refresh: 0; URL=/~SAESYS11/pages/paiement.php");
                exit();
            }
            break;
        case 'updateProduct' :
            $idProduit = htmlspecialchars($_POST['idProduit'], ENT_QUOTES, 'UTF-8');
            $idClient = htmlspecialchars($_POST['idClient'], ENT_QUOTES, 'UTF-8');
            $quantite = htmlspecialchars($_POST['quantite'], ENT_QUOTES, 'UTF-8');
            updatePanier($idProduit, $idClient, $quantite);
            break;
    }
}


function showAlert($msg)
{
    echo "<script>alert('$msg');</script>";
    
}

function updatePanier($idProduit, $idClient, $Quantity)
{
    require_once("connect.inc.php");
    if (!isset($_SESSION['access']) || $_SESSION['access'] != 'oui') {
        header('Location: /../~SAESYS11/pages/connexion.php');
        exit();
    } else {
        // Validate and sanitize user input
        $idProduit = filter_var($idProduit, FILTER_VALIDATE_INT);
        $idClient = filter_var($idClient, FILTER_VALIDATE_INT);
        $Quantity = filter_var($Quantity, FILTER_VALIDATE_INT);

        // Check if input is valid
        if ($idProduit === false || $idClient === false || $Quantity == false) {
            showAlert("Erreur : entrée non valide");
        } else {
            try {
                $query = "begin
                                update_quantity_in_cart(
                                    P_ID_PANIER => :idpanier,
                                    P_ID_PRODUIT => :idproduit,
                                    P_QUANTITY => :quantity
                                );
                            end;";
                $stid = oci_parse($connect, $query);
                oci_bind_by_name($stid, ':quantity', $Quantity);
                oci_bind_by_name($stid, ':idproduit', $idProduit);
                oci_bind_by_name($stid, ':idpanier', $idClient);
                oci_execute($stid);
                oci_free_statement($stid);
                oci_close($connect);

                header("Refresh: 0; URL=/~SAESYS11/pages/affichagePanier.php?panier=$idClient");
                exit();
            } catch (PDOException $e) {
                echo $e->getMessage();
            }
        }
    }
}

function ajoutAuPanier($idProduit, $idClient)
{
    require_once("connect.inc.php");
    if (!isset($_SESSION['access']) || $_SESSION['access'] != 'oui') {
        header('Location: /../~SAESYS11/pages/connexion.php');
        exit();
    } else {
        // Validate and sanitize user input
        $idProduit = filter_var($idProduit, FILTER_VALIDATE_INT);
        $idClient = filter_var($idClient, FILTER_VALIDATE_INT);

        // Check if input is valid
        if ($idProduit === false || $idClient === false) {
            showAlert("Erreur : entrée non valide");
        } else {
            try {
                $query = "begin
                                ADD_TO_CART(
                                    P_ID_PANIER => :p_id_panier,
                                    P_ID_CLIENT => :p_id_client,
                                    P_ID_PRODUIT => :p_id_produit
                                );
                            end;";
                $stid = oci_parse($connect, $query);
                oci_bind_by_name($stid, ':p_id_panier', $idClient);
                oci_bind_by_name($stid, ':p_id_client', $idClient);
                oci_bind_by_name($stid, ':p_id_produit', $idProduit);
                oci_execute($stid);
                oci_free_statement($stid);
                oci_close($connect);

                showAlert("Produit ajouté au panier !");
                header("Refresh: 0; URL=/~SAESYS11/pages/produit.php" . htmlspecialchars($_POST['url'], ENT_QUOTES, 'UTF-8'));
                exit();
            } catch (PDOException $e) {
                echo $e->getMessage();
            }
        }
    }
}

function removePanier($idProduit, $idClient)
{
    require_once("connect.inc.php");
    if (!isset($_SESSION['access']) || $_SESSION['access'] != 'oui') {
        header('Location: /../~SAESYS11/pages/connexion.php');
        exit();
    } else {
        // Validate and sanitize user input
        $idProduit = filter_var($idProduit, FILTER_VALIDATE_INT);
        $idClient = filter_var($idClient, FILTER_VALIDATE_INT);

        // Check if input is valid
        if ($idProduit === false || $idClient === false) {
            showAlert("Erreur : entrée non valide");
        } else {
            try {
                $query = "begin
                                remove_from_cart(
                                    P_ID_PANIER => :p_id_panier,
                                    P_ID_PRODUIT => :p_id_produit
                                );
                            end;";
                $stid = oci_parse($connect, $query);
                oci_bind_by_name($stid, ':p_id_panier', $idClient);
                oci_bind_by_name($stid, ':p_id_produit', $idProduit);
                oci_execute($stid);
                oci_free_statement($stid);
                oci_close($connect);

                header("Refresh: 0; URL=/~SAESYS11/pages/affichagePanier.php?panier=$idClient");
                exit();
            } catch (PDOException $e) {
                echo $e->getMessage();
            }
        }
    }
}

?>