<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/wing.php");
	
	$buildingtypeObj = new Model_Wing();

	$buildingtypeListArray = $buildingtypeObj->getAllWing();
	
	$smarty->assign('buildingtypeListArray', $buildingtypeListArray);


	$smarty->assign('moduleName', 'List of wing type');

	$smarty->display(ADMIN_TEMPLATEDIR . '/wing/wing.tpl');

?>
