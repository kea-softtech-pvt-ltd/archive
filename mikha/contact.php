<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/contact.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$contactObj = new Model_Contact();
	// $contactListArray = $contactObj->getAllContact();

	// $smarty->assign('contactListArray', $contactListArray);
	$smarty->assign('moduleName', 'List of contact');

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);

	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/contact.tpl');	
	
?>



