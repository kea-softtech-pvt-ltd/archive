<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

    $propertyObj = new Model_Property();
  
	$propertyArray = $propertyObj->getUserNameByUserId($_REQUEST['id']);
    $addressPropertiesArray = $propertyObj->getAddressPropertiesById($_REQUEST['id']);
    $unitsArray = $propertyObj->getUnitsByUserId($_REQUEST['id']);
    $wingArray = $propertyObj->getWingByUserId($_REQUEST['id']);
    $floorsArray = $propertyObj->getFloorsByUserId($_REQUEST['id']);


    $smarty->assign('propertyArray', $propertyArray);
	$smarty->assign('addressPropertiesArray', $addressPropertiesArray);
    $smarty->assign('unitsArray', $unitsArray);
    $smarty->assign('wingArray', $wingArray);
    $smarty->assign('floorsArray', $floorsArray);

	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/view-properties.tpl');
?>