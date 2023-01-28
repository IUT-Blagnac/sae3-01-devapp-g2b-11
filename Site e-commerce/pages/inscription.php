<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Royal Bio</title>
    <link rel="stylesheet" href="/~SAESYS11/styles/connexions.css">

    <!-- INCLUDES LINKS -->
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
</head>

<body>
    <?php include "../include/header.php"; ?>
    <div class="container">
        <form action="../include/TraitInscription.php" method="POST">
            <h1 class="title">Inscription</h1>

            <label class="subtitle"><b>Nom</b></label>
            <input type="text" placeholder="Entrer votre nom" name="nomClient" required>

            <label class="subtitle"><b>Prénom</b></label>
            <input type="text" placeholder="Entrer votre prénom" name="prenomClient" required>

            <label class="subtitle"><b>Adresse email</b></label>
            <input type="email" placeholder="Entrer votre adresse email" name="mailClient" required>

            <label class="subtitle"><b>Numéro de téléphone</b></label>
            <input type="text" placeholder="Entrer votre numéro" name="numeroClient" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="10" required>

            <label class="subtitle"><b>Adresse postale</b></label>
            <input type="text" placeholder="Entrer votre adresse" name="adresseClient" required>

            <label class="subtitle"><b>Mot de passe*</b></label>
            <input type="password" placeholder="Entrer un mot de passe" name="motPasseClient" required>

            <div class="button">
                <div class="submit btn">
                    <input type="submit" id='submit' value='Valider'>
                </div>
            </div>
        </form>

        <div class="info">
            <div class="title">Validité des champs*</div>
            <div class="info-data">
                <div class="prenom-nom">
                    Pour être valide, le nom et le prénom doivent commencés par une majuscule
                </div>
                <div class="email">
                    Pour être valide, l'email doit se terminer par @ suivi d'une chaîne de caractère et d'un point suivi d'une chaîne de caractère
                </div>
                <div class="motPasse">
                    Pour être valide, le mot de passe doit respecter ces conditions : <br>
                    - Au moins 8 caractères <br>
                    - Au moins 1 minuscule <br>
                    - Au moins 1 majuscules <br>
                    - Au moins 1 chiffre <br>
                    - Au moins 1 caractère spécial
                </div>
            </div>
        </div>

    </div>
    <?php include "../include/footer.php"; ?>
</body>

</html>