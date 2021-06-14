<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/city.php");

    $cityObj = new Model_City();
	$cityArray['status'] = 0;
	$cityuserArray = $cityObj->deleteCity($cityArray,$_REQUEST['id']);
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/city");
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		}
?>