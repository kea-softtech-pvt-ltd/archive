<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/proType.php");

    $proTypeObj = new Model_ProType();
	$proTypeArray['status'] = 0;
	$builderuserArray = $proTypeObj->deleteProTypeId($proTypeArray,$_REQUEST['id']);

	if(isset($_SESSION['isLoggedIn'])){
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/proType");
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		}
?>