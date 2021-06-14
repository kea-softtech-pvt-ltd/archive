<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/state.php");

    $stateObj = new Model_State();

	$stateArray = $stateObj->getUserNameByUserId($_REQUEST['s_id']);

	$smarty->assign('stateArray', $stateArray);

	if(isset($_POST['editState'])) {
		
        $statesArray['s_id'] = $_POST['s_id'];
		$statesArray['name'] = $_POST['name'];
		$statesArray['c_id'] = $_POST['country'];
		$statesArray['created_date'] = date('Y/m/d H:i:s');
		$statesArray['status'] = 1;
		$stateId = $stateObj->editState($statesArray,$_POST['s_id']);

		header("Location: " . SITE_URL . "admin/state");
	}
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$countryListArray = $stateObj->getCountry();
	$smarty->assign('countryListArray', $countryListArray);
	$smarty->assign('moduleName', 'Add state');
	$smarty->display(ADMIN_TEMPLATEDIR . '/state/edit-state.tpl');
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		}
?>