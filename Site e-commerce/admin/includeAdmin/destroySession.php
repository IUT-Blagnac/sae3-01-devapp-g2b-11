<?php 
		session_start();
		if(isset($_SESSION['access'])){
			session_destroy();
			header("location: /~SAESYS11/");
			exit();
		}
