<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();
	$builderArray['status'] = 0;
	$builderuserArray = $builderObj->deleteUserValueById($builderArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/builder");
?>