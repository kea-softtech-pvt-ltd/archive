<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();
	$propertiesListArray = $propertiesObj->getAllProperties();
	if(isset($_SESSION['isLoggedIn'])){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('propertiesListArray', $propertiesListArray);
			$smarty->assign('moduleName', 'List of properties');
			$smarty->display(ADMIN_TEMPLATEDIR . '/properties/details-properties.tpl');
		}else{
			$smarty->assign('moduleName', 'login');
		$smarty->display(ADMIN_TEMPLATEDIR . '/login/login.tpl');
		}
	
	
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
?>