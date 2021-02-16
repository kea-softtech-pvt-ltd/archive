<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

    $amenitiesObj = new Model_Amenities();

	$amenitiesArray = $amenitiesObj->getUserNameByUserId($_REQUEST['id']);

    $smarty->assign('amenitiesArray', $amenitiesArray);
	
	$smarty->display(ADMIN_TEMPLATEDIR . '/amenities/view-amenities.tpl');
?>