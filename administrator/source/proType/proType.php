<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/proType.php");
	
	$proTypeObj = new Model_ProType();

	$proTypeListArray = $proTypeObj->getAllProType();
	
	$smarty->assign('proTypeListArray', $proTypeListArray);

	if(isset($_SESSION['isLoggedIn'])){
	
	if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
	$smarty->assign('moduleName', 'List of ProType');
	$smarty->display(ADMIN_TEMPLATEDIR . '/proType/proType.tpl');
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
	}

?>
