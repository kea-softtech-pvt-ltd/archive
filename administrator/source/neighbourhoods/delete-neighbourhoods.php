<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/neighbourhoods.php");

    $neighbourhoodsObj = new Model_Neighbourhoods();
	$neighbourhoodsArray['status'] = 0;
	$builderuserArray = $neighbourhoodsObj->deleteUserValueById($neighbourhoodsArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/neighbourhoods");
?>