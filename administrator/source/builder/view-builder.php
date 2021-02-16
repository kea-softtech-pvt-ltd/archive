<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();

	$builderuserArray = $builderObj->getUserNameByUserId($_REQUEST['id']);

    $smarty->assign('builderuserArray', $builderuserArray);
	
	$smarty->display(ADMIN_TEMPLATEDIR . '/builder/view-builder.tpl');
?>