<?php session_start();

// Destruction des valeurs de la SESSION
session_unset();
$_SESSION['access'] = 'non';

header("Location: ../index.php?message=Déconnexion réussite");
