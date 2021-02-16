<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	//print_r($_REQUEST);

	if(isset($_POST['propetySave'])) {
		$builderObj = new Model_Property();
		//echo "submitted";
		$propertyArray['name'] = $_POST['name'];
		$propertyArray['builder_name'] = $_POST['builder_name'];
		$propertyArray['status'] = 1;
		
		$propertyId = $builderObj->addPropertiesByValue($propertyArray);
		header("Location: " . SITE_URL . "admin/properties");
	}

	$smarty->assign('moduleName', 'Add properties');
	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/add-properties.tpl');
?>