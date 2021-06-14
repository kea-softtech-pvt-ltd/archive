<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/team.php");
	
	$teamObj = new Model_Team();
	$teamListArray = $teamObj->getAllTeam();


	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
	$smarty->assign('teamListArray', $teamListArray);
	$smarty->assign('moduleName', 'List of team');
	$smarty->display(ADMIN_TEMPLATEDIR . '/team/team.tpl');
	}else{
	$smarty->assign('moduleName', 'login');
	header("Location: " . SITE_URL . "admin/login");
	}

	}
	 //else{
	// 	header("Location: " . SITE_URL . "admin/login");
	// }
	//echo $_REQUEST['message'];

?>