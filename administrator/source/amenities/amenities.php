<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");
	
	$builderObj = new Model_Amenities();

	$builderListArray = $builderObj->getAllAmenities();
	
	$smarty->assign('builderListArray', $builderListArray);


	$smarty->assign('moduleName', 'List of Amenities');

	$smarty->display(ADMIN_TEMPLATEDIR . '/amenities/amenities.tpl');

?>
