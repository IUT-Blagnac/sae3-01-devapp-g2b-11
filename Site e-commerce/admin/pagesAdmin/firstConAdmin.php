<?php
    include "../includeAdmin/secuPageAdmin.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/~SAESYS11/styles.css">
    <link rel="stylesheet" href="../styleAdmin/firstCon.css">
</head>

<body>
    <?php include "../includeAdmin/headerAdmin.php"; ?>

    <div class="container">
        <div class="content">
            <div class="formulaire">
                <div class="title">Veuillez saisir le mot de passe</div>
                <form action="firstConAdmin.php" method="POST">
                    <input type="password" placeholder="Entrer le mot de passe" name="password" autofocus required>
                    <input type="submit" id='submit' value='Me connecter'>
                </form>
            </div>
        </div>
    </div>

    <?php
    if (isset($_POST['password'])) {

        $realPSWD = password_hash(htmlspecialchars("monlaitestdelicieux"), PASSWORD_DEFAULT);

        if (password_verify($_POST['password'], $realPSWD)) {
            header('location: /~SAESYS11/admin/pagesAdmin/connexionAdmin.php');
        } else {
            session_destroy();
            header('location: /~SAESYS11/pages/connexion.php');
        }
    }
    ?>



</body>

</html>