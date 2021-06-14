<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/neighbourhoods.php");

    $neighbourhoodsObj = new Model_Neighbourhoods();
	$neighbourhoodsArray['status'] = 0;
	$builderuserArray = $neighbourhoodsObj->deleteUserValueById($neighbourhoodsArray,$_REQUEST['id']);
	
	if(isset($_SESSION['isLoggedIn'])){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/neighbourhoods");
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		
		}
?>