<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	$builderObj = new Model_Property();
	$builderListArray = $builderObj->getAllBuilders();
	//print_r($_REQUEST);
	//print_r($builderListArray);
	$smarty->assign('builderListArray', $builderListArray);
	$smarty->assign('moduleName', 'List of properties');
	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/properties.tpl');
?>