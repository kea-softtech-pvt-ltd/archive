<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/unit.php");
	
	$unitTypeObj = new Model_Unit();

	$unitListArray = $unitTypeObj->getAllUnit();
	
	$smarty->assign('unitListArray', $unitListArray);


	if(isset($_SESSION['isLoggedIn'])){
	$smarty->assign('moduleName', 'List of UNIT type');
	$smarty->display(ADMIN_TEMPLATEDIR . '/un/un.tpl');
	
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}

?>
