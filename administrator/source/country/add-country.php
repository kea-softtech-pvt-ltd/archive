<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/country.php");

		$countryObj = new Model_Country();

		if(isset($_POST['countrySave'])) {
		$countryArray['name'] = $_POST['name'];
		$countryArray['created_date'] = date('Y/m/d H:i:s');
		$countryArray['status'] = 1;
		$countryId = $countryObj->addCountry($countryArray);
		header("Location: " . SITE_URL . "/admin/country");
	}
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
	$smarty->assign('moduleName', 'Add country');
	$smarty->display(ADMIN_TEMPLATEDIR . '/country/add-country.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
?>