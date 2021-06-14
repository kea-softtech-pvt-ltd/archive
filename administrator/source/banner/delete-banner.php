<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");

    $bannerObj = new Model_Banner();
	$bannerArray['status'] = 0;
	$bannerArray = $bannerObj->deleteUserValueById($bannerArray,$_REQUEST['id']);
	
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/banner");
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}

		}
?>