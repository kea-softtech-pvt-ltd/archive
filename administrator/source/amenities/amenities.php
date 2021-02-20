<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");
	
	$amenitiObj = new Model_Amenities();

	$amenitiListArray = $amenitiObj->getAllAmenities();
	
	$smarty->assign('amenitiListArray', $amenitiListArray);


	$smarty->assign('moduleName', 'List of Amenities');

	$smarty->display(ADMIN_TEMPLATEDIR . '/amenities/amenities.tpl');

?>
