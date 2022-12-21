<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexion.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>
<body>
    <?php include "../include/header.php"; ?>
    <div class="container">
        <form action="inscription.php" method="POST">
            <h1 class="title">Inscription</h1>
            
            <label class="subtitle"><b>Nom</b></label>
            <input type="text" placeholder="Entrer le nom" name="nomClient" required>

            <label class="subtitle"><b>Prénom</b></label>
            <input type="text" placeholder="Entrer le prébom" name="prenomClient" required>

            <label class="subtitle"><b>Adresse mail</b></label>
            <input type="email" placeholder="Entrer l'adresse mail" name="mailClient" required>

            <label class="subtitle"><b>Mot de passe*</b></label>
            <input type="password" placeholder="Entrer le mot de passe" name="motPasseClient" required>

            <div class="button">
                <div class="submit btn">
                    <input type="submit" id='submit' value='Valider' >
                </div>
            </div>
        </form>
        <div class="info">
            <p>*Le mot de passe doit contenir :</p>
                <ul>
                    <li>Au moins 8 caractères</li>
                    <li>Au moins 1 minuscule</li>
                    <li>Au moins 1 majuscule</li>
                    <li>Au moins 1 chiffre</li>
                </ul>
            </div>

        <?php
            
            require_once("../include/connect.inc.php");
            error_reporting(0);


            if((isset($_POST['nomClient'])) && (isset($_POST['prenomClient'])) && (isset($_POST['mailClient'])) && (isset($_POST['motPasseClient']))){
                $isValide=true;

                $req1 = "select MAILCLIENT from clients where MAILCLIENT=:MAILCLIENT ";

                $lemdps = oci_parse($connect, $req1);
                $MAILCLIENTT=$_POST['mailClient'];
                oci_bind_by_name($lemdps, ":MAILCLIENT", $MAILCLIENTT);
                    
                $result = oci_execute($lemdps);

                while($row=oci_fetch_array($lemdps)){
                    
                    $mailverif = $row[0];
                        
                }

                $regex = '/^[A-Z][\p{L}-]*$/';

                if ((!preg_match($regex,$_POST['nomClient'])) || (!preg_match($regex,$_POST['prenomClient']))){
                    echo "<br>Nom ou prénom invalide";
                    $isValide=false;
                }
                
                $pattern = '/^(?=.*[!@#$%^&*-])(?=.*[0-9])(?=.*[A-Z]).{8,20}$/';
                if (!preg_match($pattern,$_POST['motPasseClient'])) {
                    echo "<br>Mot de passe trop faible";
                    $isValide=false;
                }
                          
                if ((!preg_match('#[@]#i',$_POST['mailClient'])) || ($_POST['mailClient']==$mailverif)){
                    echo "<br>Adresse mail incorrecte";
                    $isValide=false;
                }
                
                if($isValide==true){
                    $req2 = "SELECT IDCLIENT FROM clients order by idclient asc";

                    $lemdps = oci_parse($connect, $req2);
                    
                    $result = oci_execute($lemdps);

                    while($row=oci_fetch_array($lemdps)){
                    
                        $idClient = $row[0];
                        
                    }
                    $idClient= $idClient+1;
                    $req3=('INSERT INTO clients VALUES (:idClient, :motPasseClient, :nomClient, :prenomClient, :adresseClient, :telephoneClient, :mailClient)');


                    $insertClient = oci_parse($connect, $req3);
                    
                    
                    $motPasseClient = password_hash(htmlspecialchars($_POST['motPasseClient']), 
                                    PASSWORD_DEFAULT);
                                    $nomClient = htmlspecialchars($_POST['nomClient']);
                                    $prenomClient = htmlspecialchars($_POST['prenomClient']);
                                    $adresseClient = "vide";
                                    $telephoneClient = "06";
                                    $mailClient = htmlspecialchars($_POST['mailClient']);
                            
                    oci_bind_by_name($insertClient, ":idClient", $idClient);
                        
                    oci_bind_by_name($insertClient, ":motPasseClient", $motPasseClient);
                    oci_bind_by_name($insertClient, ":nomClient", $nomClient );
                    oci_bind_by_name($insertClient, ":prenomClient", $prenomClient);
                    oci_bind_by_name($insertClient, ":adresseClient", $adresseClient);
                    oci_bind_by_name($insertClient, ":telephoneClient", $telephoneClient);
                    oci_bind_by_name($insertClient, ":mailClient", $mailClient);
                                

                                
                    $result = oci_execute($insertClient);

                    if (!$result) {
                                    $e = oci_error($insertClient);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                                    print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);       
                    }else{
                        header ('location: ../index.php');
                    }

                    // vérifiez l'insertion dans SQL developer avec cette requete : select * from joueur where nj > 299;
                    // on commit les modifs faites
                    oci_commit($connect);
            
                    // Libère toutes les ressources réservées par un résultat Oracle
                    oci_free_statement($insertJoueur);
                                
                    }


                }
        ?>
    </div>
    <?php include "../include/footer.php"; ?>
</body>
</html>