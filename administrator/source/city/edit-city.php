<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/city.php");

    $cityObj = new Model_City();

	$cityArray = $cityObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('cityArray', $cityArray);


	$cityObj = new Model_City();

	if(isset($_POST['editcity'])) {
		
        $cityArray['id'] = $_POST['id'];
		$cityArray['name'] = $_POST['name'];
		$cityArray['created_date'] = date('Y/m/d H:i:s');
		$cityArray['status'] = 1;
		$builderId = $cityObj->editCity($cityArray,$_POST['id']);

		header("Location: " . SITE_URL . "/admin/city");
	}
	$statesListArray = $cityObj->getStates();
	$smarty->assign('statesListArray', $statesListArray);
	$smarty->assign('moduleName', 'Add city');
	$smarty->display(ADMIN_TEMPLATEDIR . '/city/edit-city.tpl');
?>