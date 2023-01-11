<?php session_start();

session_destroy();
$_SESSION['access'] = 'non';

header("Location: ../index.php?message=Déconnexion réussite");
