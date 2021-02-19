<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/state.php");

		$stateObj = new Model_State();

	if(isset($_POST['StateSave'])) {
		$stateArray['name'] = $_POST['name'];
		$stateArray['c_id'] = $_POST['country'];
		$stateArray['created_date'] = date('Y/m/d H:i:s');
		$stateArray['status'] = 1;
		$stateId = $stateObj->addState($stateArray);
		header("Location: " . SITE_URL . "/admin/state");
	}
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
	$countryListArray = $stateObj->getCountry();
	$smarty->assign('countryListArray', $countryListArray);
	$smarty->assign('moduleName', 'Add city');
	$smarty->display(ADMIN_TEMPLATEDIR . '/state/add-state.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
?>