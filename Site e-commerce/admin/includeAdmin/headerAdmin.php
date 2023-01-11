<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="/~SAESYS11/admin/styleAdmin/headerAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <header>
        <?php
        if (isset($_SESSION['access']) && $_SESSION['access'] == 'accessAdmin') {
        ?>
            <div class="header">
                <div class="navlogo">
                    <div class="logo">
                        <img src="/~SAESYS11/img/logo.png" alt="Logo de la start'up">
                    </div>
                </div>
            </div>


            <div class="subheader">
                <ul class="menu">
                    <li><a href="/~SAESYS11/admin/includeAdmin/destroySession.php">Accueil</a></li>
                </ul>
            </div>
        <?php
        } else {
        ?>
            <div class="header">
                <div class="navlogo">
                    <div class="logo">
                        <img src="/~SAESYS11/img/logo.png" alt="Logo de la start'up">
                    </div>
                </div>
            </div>


            <div class="subheader">
                <ul class="menu">
                    <li><a href="/~SAESYS11/index.php">Accueil</a></li>
                </ul>
            </div>
        <?php
        }
        ?>
    </header>

    <script src="/~SAESYS11/include/script.js"></script>
</body>

</html>