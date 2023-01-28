<?php 
		session_start();
		if(isset($_SESSION['access'])){
			header("location: /~SAESYS11/admin/indexAdmin.php");
			exit();
		}
		header("location: /~SAESYS11/");
		exit();
?>