<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');

	//print_r($_REQUEST);
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
		$smarty->assign('moduleName', 'dashboard');
		$smarty->display(ADMIN_TEMPLATEDIR . '/dashboard/dashboard.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
	
?>