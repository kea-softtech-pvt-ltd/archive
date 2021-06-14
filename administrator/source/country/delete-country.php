<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/country.php");

    $countryObj = new Model_Country();
	$countryArray['status'] = 0;
	$countryuserArray = $countryObj->deleteCountry($countryArray,$_REQUEST['c_id']);
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/country");
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		}
?>