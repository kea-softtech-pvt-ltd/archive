<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

    $propertiesObj = new Model_Property();
	$propertiesArray['patnership'] = 0;
	$propertiesArray = $propertiesObj->patnership($propertiesArray,$_REQUEST['id']);
	

	if(isset($_SESSION['isLoggedIn'])){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/properties");
		}else{
			$smarty->assign('moduleName', 'login');
		$smarty->display(ADMIN_TEMPLATEDIR . '/login/login.tpl');
		}
	
	
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
?>