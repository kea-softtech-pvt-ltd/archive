<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/proType.php");

    $proTypeObj = new Model_ProType();
	$proTypeArray['status'] = 0;
	$builderuserArray = $proTypeObj->deleteProTypeId($proTypeArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/proType");
?>