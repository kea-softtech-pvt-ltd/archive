
<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();

	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);

	$propertiesArray = $propertiesObj->getAllPropertiesView($_REQUEST['id']);
    $smarty->assign('propertiesArray', $propertiesArray);

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);


	$smarty->assign('moduleName', 'List of properties');
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/single.tpl');	
	
?>
