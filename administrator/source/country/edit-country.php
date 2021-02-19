<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/country.php");

    $countryObj = new Model_Country();

	$countryArray = $countryObj->getUserNameByUserId($_REQUEST['c_id']);

	$smarty->assign('countryArray', $countryArray);

	if(isset($_POST['editcountry'])) {
		
        $countryArray['c_id'] = $_POST['c_id'];
		$countryArray['name'] = $_POST['name'];
		$countryArray['created_date'] = date('Y/m/d H:i:s');
		$countryArray['status'] = 1;
		$countryId = $countryObj->editCountry($countryArray,$_POST['c_id']);
		header("Location: " . SITE_URL . "/admin/country");
	}
	$smarty->assign('moduleName', 'Add country');
	$smarty->display(ADMIN_TEMPLATEDIR . '/country/edit-country.tpl');
?>