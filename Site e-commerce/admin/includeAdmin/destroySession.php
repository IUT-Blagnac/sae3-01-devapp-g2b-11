<?php 
	function destroySession(){
		if(isset($_SESSION['access']) and $_SESSION['access']='accessAdmin'){
			session_destroy();
		}
	}

	destroySession();
?>