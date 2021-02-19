<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/country.php");

    $countryObj = new Model_Country();
	$countryArray['status'] = 0;
	$countryuserArray = $countryObj->deleteCountry($countryArray,$_REQUEST['c_id']);
	header("Location: " . SITE_URL . "/admin/country");
?>