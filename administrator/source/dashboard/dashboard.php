<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");
	//print_r($_REQUEST);
	$builderObj = new Model_Builders();
	$builderListArray = $builderObj->getAllBuilderscount();
	//echo count($builderListArray);
	$smarty->assign('builderListArray',count($builderListArray));
	
	//print_r($_REQUEST);
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
		$smarty->assign('moduleName', 'dashboard');
		$smarty->display(ADMIN_TEMPLATEDIR . '/dashboard/dashboard.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
	
?>