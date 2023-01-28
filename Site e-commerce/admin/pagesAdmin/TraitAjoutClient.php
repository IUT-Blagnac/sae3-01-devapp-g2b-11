<?php
    include "../includeAdmin/secuPageAdmin.php";
    require_once("../includeAdmin/connect.inc.php");//connexion à la base de données
    error_reporting(0);//on enlève l'affichage des erreurs php

    // On vérifie que l'utilisateur à saisies les informations
    if((isset($_POST['nomClient'])) && (isset($_POST['prenomClient'])) && (isset($_POST['mailClient'])) && (isset($_POST['motPasseClient']))){

        // Regex qui vérifie que le prénom et le nom saisie sont valides
        //  Commence par une majuscule et peux contenir des lettres de l'alphabet ainsi que des tiret
        $regex = '/^[A-Z][A-Za-zÀ-ÖØ-öø-ÿ-]*$/';

        if ((!preg_match($regex,$_POST['nomClient'])) || (!preg_match($regex,$_POST['prenomClient']))){
            echo '<br> Le nom ou le prénom saisie ne sont pas valide';
        }

        // Regex qui vérifie que le mot de passe est valide:
        // Contient au minimum 8 caractère dont au minimum : 1 maj, 1 min, 1 chiffre et 1 caractère spécial
        $regex2 = '/^(?=.*[!@#$%^&*-])(?=.*[0-9])(?=.*[A-Z]).{8,20}$/';

        if ((!preg_match($regex2,$_POST['motPasseClient']))){
            echo '<br> Le mot de passe est trop faible <br>';
        }

        // recherche des infos des clients dans la base de donnée
        $query = 'SELECT * FROM CLIENTS order by IDCLIENT asc';
        $lesclients = oci_parse($connect, $query);
        $result = oci_execute($lesclients);

        
        while($leclient = oci_fetch_array($lesclients)){     
            // on affecte la valeur du dernier ID client à la variable idClient
            $idClient = $leclient['IDCLIENT'];
            
            // On vérifie que l'adresse mail saisie n'appartient pas déjà à un compte
            if($_POST['mailClient'] == $leclient['MAILCLIENT']){
                echo 'le mail appartient déjà à un compte';
            } else {

            }
        }
        // on incrémente de 1 la valeur de l'id client
        $idClient = $idClient+1;

        // Requête d'insertion d'un nouveau client dans la base de donnée
        $query = 'INSERT INTO clients VALUES (:idClient, :motPasseClient, :nomClient, :prenomClient, :adresseClient, :telephoneClient, :mailClient)';
        $insertion = oci_parse($connect, $query);

        // Variable bindé
        $motPasseClient = password_hash(htmlspecialchars($_POST['motPasseClient'],ENT_QUOTES, 'UTF-8'), PASSWORD_DEFAULT);
        $nomClient = htmlspecialchars($_POST['nomClient'],ENT_QUOTES, 'UTF-8'); 
        $prenomClient = htmlspecialchars($_POST['prenomClient'],ENT_QUOTES, 'UTF-8'); 
        $adresseClient = htmlspecialchars($_POST['adresseClient'],ENT_QUOTES, 'UTF-8'); 
        $telephoneClient = htmlspecialchars($_POST['telClient'],ENT_QUOTES, 'UTF-8'); 
        $mailClient = htmlspecialchars($_POST['mailClient'],ENT_QUOTES, 'UTF-8'); 

        oci_bind_by_name($insertion, ":idClient", $idClient);         
        oci_bind_by_name($insertion, ":motPasseClient", $motPasseClient);
        oci_bind_by_name($insertion, ":nomClient", $nomClient );
        oci_bind_by_name($insertion, ":prenomClient", $prenomClient);
        oci_bind_by_name($insertion, ":adresseClient", $adresseClient);
        oci_bind_by_name($insertion, ":telephoneClient", $telephoneClient);
        oci_bind_by_name($insertion, ":mailClient", $mailClient);

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

            // Redirection vers la page d'accueil avec un message de reussite dans l'url
            header ('location: ./GestionProduits.php?mssg=Ajout effectué');
        }
    }
?>