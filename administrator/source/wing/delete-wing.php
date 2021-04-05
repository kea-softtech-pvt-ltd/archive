<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/wing.php");

    $wingTypeObj = new Model_Wing();
	$wingTypeArray['status'] = 0;
	$builderuserArray = $wingTypeObj->deleteUserValueById($wingTypeArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/wing");
?>