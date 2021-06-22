<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
		
	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);
	$smarty->assign('moduleName', 'List of properties');

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/category.tpl');
	
		}else{
			header("Location: " . SITE_URL . "mikha/home.php");
		}
	
?>
