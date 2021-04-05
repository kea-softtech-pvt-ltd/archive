<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();
	$propertiesListArray = $propertiesObj->getAllProperties();

	// echo'<pre>';
	// print_r($propertiesListArray);
	// echo'</pre>';
	// die();   // use to debag sathi
	if(isset($_SESSION['isLoggedIn'])){
		$smarty->assign('propertiesListArray', $propertiesListArray);
		$smarty->assign('moduleName', 'List of properties');
		$smarty->display(ADMIN_TEMPLATEDIR . '/properties/properties.tpl');
	
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
?>