<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/city.php");

		$cityObj = new Model_City();

		if(isset($_POST['citySave'])) {
		$cityArray['name'] = $_POST['name'];
		$cityArray['s_id'] = $_POST['state'];
		$cityArray['created_date'] = date('Y/m/d H:i:s');
		$cityArray['status'] = 1;
		$builderId = $cityObj->addCity($cityArray);
		header("Location: " . SITE_URL . "admin/city");
	}
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
		$statesListArray = $cityObj->getStates();
		$smarty->assign('statesListArray', $statesListArray);	
		$smarty->assign('moduleName', 'Add city');
		$smarty->display(ADMIN_TEMPLATEDIR . '/city/add-city.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
	}
?>