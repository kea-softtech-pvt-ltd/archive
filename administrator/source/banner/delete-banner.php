<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");

    $bannerObj = new Model_Banner();
	$bannerArray['status'] = 0;
	$bannerArray = $bannerObj->deleteUserValueById($bannerArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/banner");
?>