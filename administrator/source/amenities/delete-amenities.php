<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

    $amenitiesObj = new Model_Amenities();
	$amenitiesArray['status'] = 0;
	$builderuserArray = $amenitiesObj->deleteUserValueById($amenitiesArray,$_REQUEST['id']);


	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/amenities");
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}

		}
?>