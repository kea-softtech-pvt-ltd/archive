<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/units.php");

    $unitsObj = new Model_Units();
	$unitsArray['status'] = 0;
	$unitsuserArray = $unitsObj->deleteUserValueById($unitsArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/units");
?>