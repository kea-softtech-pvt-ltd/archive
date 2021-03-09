<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

    $propertiesObj = new Model_Property();
	$propertiesArray['status'] = 0;
	$propertiesArray = $propertiesObj->deleteUserValueById($propertiesArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/properties");
?>