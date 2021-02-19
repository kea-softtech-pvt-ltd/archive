<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/city.php");

    $cityObj = new Model_City();
	$cityArray['status'] = 0;
	$cityuserArray = $cityObj->deleteCity($cityArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/city");
?>