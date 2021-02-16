<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/units.php");

    $unitsObj = new Model_Units();

	$unitsuserArray = $unitsObj->getUserNameByUserId($_REQUEST['id']);

    $smarty->assign('unitsuserArray', $unitsuserArray);
	
	$smarty->display(ADMIN_TEMPLATEDIR . '/units/view-units.tpl');
?>