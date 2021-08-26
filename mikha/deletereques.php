<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	$userArray['noti_type'] = 2;
	$builderuserArray = $propertiesObj->deletePurchesPropertiesRequest($userArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "mikha/message.php");
    
?>