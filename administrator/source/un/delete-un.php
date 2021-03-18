<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/unit.php");

    $unitTypeObj = new Model_Unit();
	$unitTypeArray['status'] = 0;
	$builderuserArray = $unitTypeObj->deleteUnitById($unitTypeArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/un");
?>