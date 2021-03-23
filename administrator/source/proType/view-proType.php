<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/wing.php");

    $wingObj = new Model_Wing();

	$wingArray = $wingObj->getUserNameByUserId($_REQUEST['id']);

    $smarty->assign('wingArray', $wingArray);
	
	$smarty->display(ADMIN_TEMPLATEDIR . '/wing/view-wing.tpl');
?>