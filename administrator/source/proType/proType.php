<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/proType.php");
	
	$proTypeObj = new Model_ProType();

	$proTypeListArray = $proTypeObj->getAllProType();
	
	$smarty->assign('proTypeListArray', $proTypeListArray);


	$smarty->assign('moduleName', 'List of ProType');

	$smarty->display(ADMIN_TEMPLATEDIR . '/proType/proType.tpl');

?>
