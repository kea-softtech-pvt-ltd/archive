<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	$userArray['requestGroup'] = 1;
	//$userArray['reciver'] = 1;
	$builderuserArray = $propertiesObj->JoinPropertyGroup($userArray,$_REQUEST['id']);
	$builderuserArray = $propertiesObj->JoinPropertyGroup($userArray,$_REQUEST['rid']);
	header("Location: " . SITE_URL . "mikha/message.php");	
	
?>