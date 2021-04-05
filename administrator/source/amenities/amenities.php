<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");
	
	$amenitiObj = new Model_Amenities();

	$amenitiListArray = $amenitiObj->getAllAmenities();
	
	$smarty->assign('amenitiListArray', $amenitiListArray);


	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
		$smarty->assign('moduleName', 'List of Amenities');
		$smarty->display(ADMIN_TEMPLATEDIR . '/amenities/amenities.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}

?>
