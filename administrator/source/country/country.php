<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/country.php");

	$countryObj = new Model_Country();
	$countryListArray = $countryObj->getAllCountry();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('countryListArray', $countryListArray);
			$smarty->assign('moduleName', 'List of country');
			$smarty->display(ADMIN_TEMPLATEDIR . '/country/country.tpl');
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		}
	

?>