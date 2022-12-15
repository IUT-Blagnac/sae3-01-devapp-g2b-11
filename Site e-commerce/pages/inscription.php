<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio</title>
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles/connexions.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles.css">
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles/heade.css">
    <link rel="stylesheet" href="http://193.54.227.164/~SAESYS11/styles/footer.css">
</head>
<body>
    <?php include "../include/header.php"; ?>
    <div class="container">
        <form action="inscription.php" method="POST">
        <h1>Inscription</h1>
        
        <label><b>Nom</b></label>
        <input type="text" placeholder="Entrer le nom" name="nomClient" required>

        <label><b>Prénom</b></label>
        <input type="text" placeholder="Entrer le prébom" name="prenomClient" required>

        <label><b>Adresse mail</b></label>
        <input type="text" placeholder="Entrer l'adresse mail" name="mailClient" required>

        <label><b>Mot de passe</b></label>
        <input type="password" placeholder="Entrer le mot de passe" name="motPasseClient" required>

        <div id="mdp"><p>Au moins 8 caractères, dont 1 majuscule, 1 minuscule et 1 chiffre. Parce qu'on sait jamais.</p></div>


        <input type="submit" id='submit' value='Cette action aura des conséquences' >
        <br>

        </form>
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
                    $req3=('INSERT INTO clients VALUES (:idClient, :motPasseClient, :nomClient, :prenomClient, :adresseClient, :telephoneClient, :mailClient,:cookie)');


                    $insertClient = oci_parse($connect, $req3);
                    
                    
                    $motPasseClient = password_hash($_POST['motPasseClient'], PASSWORD_DEFAULT);$nomClient = $_POST['nomClient'];$prenomClient = $_POST['prenomClient'];$adresseClient = "bonjour";$telephoneClient = "06";$mailClient = $_POST['mailClient'];$cookie="az";
                            
                    oci_bind_by_name($insertClient, ":idClient", $idClient);
                        
                    oci_bind_by_name($insertClient, ":motPasseClient", $motPasseClient);
                    oci_bind_by_name($insertClient, ":nomClient", $nomClient );
                    oci_bind_by_name($insertClient, ":prenomClient", $prenomClient);
                    oci_bind_by_name($insertClient, ":adresseClient", $adresseClient);
                    oci_bind_by_name($insertClient, ":telephoneClient", $telephoneClient);
                    oci_bind_by_name($insertClient, ":mailClient", $mailClient);
                    oci_bind_by_name($insertClient, ":cookie", $cookie);
                                

                                
                    $result = oci_execute($insertClient);

                    if (!$result) {
                                    $e = oci_error($insertClient);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
                                    print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);       
                    }else{
                        echo tortue;
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