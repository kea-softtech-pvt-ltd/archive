<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/units.php");
	
	$unitsObj = new Model_Units();

	$builderListArray = $unitsObj->getAllUnits();

	$smarty->assign('builderListArray', $builderListArray);
	$smarty->assign('moduleName', 'List of units');
	$smarty->display(ADMIN_TEMPLATEDIR . '/units/units.tpl');
?>