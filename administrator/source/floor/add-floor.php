<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/floor.php");

	$floorObj = new Model_Floor();
	if(isset($_POST['floorSave'])) {
		
		$floorArray['name'] = $_POST['name'];
		$floorArray['flat'] = $_POST['flat'];
		$floorArray['specality'] = $_POST['specality'];
		$floorArray['created_date'] = date('Y/m/d H:i:s');
		$floorArray['status'] = 1;

		$success = "You have successfully add FLOOR.";
		$smarty->assign("success",$success);
		$builderId = $floorObj->addBuilderByValue($floorArray);		
		header("Location: " . SITE_URL . "/admin/properties");
	
	}
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	
	$smarty->assign('moduleName', 'Add builder');

	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/add-properties.tpl');

	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
	
?>