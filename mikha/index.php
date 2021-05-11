<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");
	
	$propertiesObj = new Model_Property();
	$propertiesListArray = $propertiesObj->getAllPropertiesIndex();
	$smarty->assign('propertiesListArray', $propertiesListArray);
	$smarty->assign('moduleName', 'List of properties');

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);

	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/index.tpl');	
	
?>