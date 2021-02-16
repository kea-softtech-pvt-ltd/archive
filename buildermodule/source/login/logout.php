<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	// print_r($_POST);

	if(isset($_SESSION['isLoggedIn'])) {
		session_destroy();
		header("Location: " . SITE_URL . "admin/login");
	}
?>