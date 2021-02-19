<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/state.php");

	$stateObj = new Model_State();
	$stateListArray = $stateObj->getAllStates();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
	$smarty->assign('stateListArray', $stateListArray);
	$smarty->assign('moduleName', 'List of city');
	$smarty->display(ADMIN_TEMPLATEDIR . '/state/state.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
	

?>