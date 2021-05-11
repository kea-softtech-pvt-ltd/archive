<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

    $propertyObj = new Model_Property();

   // $addressPropertiesArray = $builderObj->getAddressPropertiesById($_REQUEST['id']);
	$propertyArray = $propertyObj->getUserNameByUserId($_REQUEST['id']);
    $addressPropertiesArray = $propertyObj->getAddressPropertiesById($_REQUEST['id']);
    $unitsArray = $propertyObj->getUnitsByUserId($_REQUEST['id']);
    $wingArray = $propertyObj->getWingByUserId($_REQUEST['id']);
    $floorsArray = $propertyObj->getFloorsByUserId($_REQUEST['id']);
    $otherArray = $propertyObj->getOtherByUserId($_REQUEST['id']);


    $smarty->assign('propertyArray', $propertyArray);
	$smarty->assign('addressPropertiesArray', $addressPropertiesArray);
    $smarty->assign('unitsArray', $unitsArray);
    $smarty->assign('wingArray', $wingArray);
    $smarty->assign('floorsArray', $floorsArray);

    $smarty->assign('otherArray', $otherArray);
	// print_r(explode(',',$otherArray[0]['amenities']));die;
	if(!empty($otherArray)){
	$smarty->assign('amenities', explode(',',$otherArray[0]['amenities']));
	$smarty->assign('neighbourhoods',explode(',',$otherArray[0]['neighbourhoods']));
	}
	$smarty->assign('addressPropertiesArray', $addressPropertiesArray);

    $amenitiesListArray = $propertyObj->getAmenities();
	$smarty->assign('amenitiesListArray', $amenitiesListArray);

    $neighbourhoodListArray = $propertyObj->getNeighbourhoods();
	$smarty->assign('neighbourhoodListArray', $neighbourhoodListArray);

	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/view-properties.tpl');
?>