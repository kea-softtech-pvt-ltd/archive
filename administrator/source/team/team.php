<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/team.php");
	
	$teamObj = new Model_Team();
	$teamListArray = $teamObj->getAllTeam();


	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	$smarty->assign('teamListArray', $teamListArray);
	$smarty->assign('moduleName', 'List of team');

	$smarty->display(ADMIN_TEMPLATEDIR . '/team/team.tpl');
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
	//echo $_REQUEST['message'];

?>