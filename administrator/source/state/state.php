<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/state.php");

	$stateObj = new Model_State();
	$stateListArray = $stateObj->getAllStates();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('stateListArray', $stateListArray);
			$smarty->assign('moduleName', 'List of city');
			$smarty->display(ADMIN_TEMPLATEDIR . '/state/state.tpl');
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		}
	

?>