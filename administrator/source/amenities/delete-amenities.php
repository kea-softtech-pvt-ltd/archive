<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

    $amenitiesObj = new Model_Amenities();
	$amenitiesArray['status'] = 0;
	$builderuserArray = $amenitiesObj->deleteUserValueById($amenitiesArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "admin/amenities");
?>