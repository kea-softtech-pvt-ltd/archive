<?php
    if($_SESSION['isLoggedIn']) {
		header("Location: " . SITE_URL . "admin/dashboard");
	} else {
		header("Location: " . SITE_URL . "admin/login");
	}
?>