<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio - l'épicerie bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexions.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>

<body>
    <?php include "../include/header.php"; ?>
    <div class="container">
        <form action="../include/TraitPaiement.php" method="POST">
            <h1 class="title">1.Paiement</h1>

            <label class="subtitle"><b>Nom</b></label>
            <input type="text" placeholder="Entrer le nom du titulaire de la carte" name="nomCarte" required>

            <label class="subtitle"><b>Prénom</b></label>
            <input type="text" placeholder="Entrer le prénom du titulaire de la carte" name="prenomCarte" required>

            <label class="subtitle"><b>Numéro de la carte</b></label>
            <input type="text" minlength="16"maxlength="16" title="numCarte" name="numCarte"placeholder="XXXX XXXX XXXX XXXX"required />
            <label class="subtitle"><b>Date expiration</b></label>
            <input  type="month"name="dateExpiration"min="2023-01" max="2027-01"placeholder="2023-01"required>

            <label class="subtitle"><b>Cryptogramme</b></label>
            <input type="text" minlength="3"maxlength="3" title="Cryptogramme" name="Cryptogramme"placeholder="123"required />
            

        
            <h1 class="title">2.Livraison</h1>

            <label class="subtitle"><b>Nom de la personne à livré</b></label>
            <input type="text" placeholder="Entrer le nom" name="nomClient" required>

            <label class="subtitle"><b>Ville</b></label>
            <input type="text" placeholder="Entrer la ville de livraison" name="ville" required>

            <label class="subtitle"><b>Code postal</b></label>
            <input type="text" minlength="5"maxlength="5" title="poste" name="codePostal"placeholder="31000"required />

            <label class="subtitle"><b>Adresse</b></label>
            <input type="text" placeholder="Entrer l'adresse de livraison" name="adresse" required>
            
            <label class="subtitle"><b>Téléphone</b></label>
            <input type="text" minlength="10"maxlength="10" title="Telephone" name="Telephone"placeholder="0610203040"required />

            <div class="button">
                <div class="submit btn">
                    <input type="submit" id='submit' value='Valider'>
                </div>
            </div>
        </form>

    </div>

    <?php include "../include/footer.php"; ?>
    <script>
        document.getElementsByName("Cryptogramme")[0].addEventListener("input", function() {
    this.value = this.value.replace(/[^0-9]/g, "");
    });
    </script>
     <script>
        document.getElementsByName("codePostal")[0].addEventListener("input", function() {
    this.value = this.value.replace(/[^0-9]/g, "");
    });
    </script>
     <script>
        document.getElementsByName("Telephone")[0].addEventListener("input", function() {
    this.value = this.value.replace(/[^0-9]/g, "");
    });
    </script>
        <script>
        document.getElementsByName("numCarte")[0].addEventListener("input", function() {
    this.value = this.value.replace(/[^0-9]/g, "");
    });
    </script>
    
</body>

</html>