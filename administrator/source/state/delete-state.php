<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/state.php");

    $stateObj = new Model_State();
	$stateArray['status'] = 0;
	$cityuserArray = $stateObj->deleteState($stateArray,$_REQUEST['s_id']);
	

	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/state");
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		}
?>