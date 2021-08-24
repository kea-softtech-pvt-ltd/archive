<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	// print_r($_POST);

	if(isset($_SESSION['isLoggedIn'])) {
		session_destroy();

		//echo SITE_URL ;
		//die();
		header("Location: " . SITE_URL . "mikha/index.php");
	}
?>