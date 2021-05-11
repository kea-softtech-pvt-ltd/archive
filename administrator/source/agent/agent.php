<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/agent.php");
	
	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();


	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	$smarty->assign('agentListArray', $agentListArray);
	$smarty->assign('moduleName', 'List of agent');

	$smarty->display(ADMIN_TEMPLATEDIR . '/agent/agent.tpl');
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
	//echo $_REQUEST['message'];

?>