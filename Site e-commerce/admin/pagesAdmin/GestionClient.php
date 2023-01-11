<?php
	include "../includeAdmin/secuPageAdmin.php";
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexion.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
    <link rel="stylesheet" href="../styleAdmin/gestion.css">
</head>
<body>
    <?php include "../includeAdmin/headerAdmin.php"; ?>

    <main>
        <input type="submit" value="Retour" onclick="document.location.href='../indexAdmin.php'">

        <div class="recherche">
            <form method='POST' action="./GestionClient.php">
                <div class="icon"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></div>
                <div class="input"><input type="text" name="recherche" placeholder="Recherche un produit ..."></div>
            </form>
        </div>

        <div class="ajout container">
            <div class="button">
                <a href="./AjoutClient.php">Ajouter un client</a>
            </div>
        </div>

        <div class="tableClient container">
            <div class="tableClient table">
                <?php 
                    include "../includeAdmin/createTable.php";
                    //on effetue une requête pour avoir les informations des clients
                    if (isset($_POST['recherche'])) {
                        $query =  "
                            select *
                            from clients
                            where lower(IDCLIENT) LIKE lower('%".$_POST['recherche']."%') OR lower(NOMCLIENT) LIKE lower('%".$_POST['recherche']."%') OR lower(PRENOMCLIENT) LIKE lower('%".$_POST['recherche']."%')
                            OR lower(ADRESSECLIENT) LIKE lower('%".$_POST['recherche']."%') OR lower(MAILCLIENT) LIKE lower('%".$_POST['recherche']."%') OR lower(TELEPHONECLIENT) LIKE lower('%".$_POST['recherche']."%')
                        ";
                        createTableClient($query);
                        
                    }else{
                        $query = "SELECT * FROM CLIENTS";
                        createTableClient($query);
                    }

                    
                
                ?>
            </div>
        </div>

    </main>

    <?php include "../includeAdmin/footerAdmin.php"; ?>
</body>
</html>