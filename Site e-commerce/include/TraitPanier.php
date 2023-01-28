<?php session_start();

echo '<h1>Trait panier</h1>';

require_once("../include/connect.inc.php");
error_reporting(0);

$query = 'SELECT * FROM PANIER WHERE I';
