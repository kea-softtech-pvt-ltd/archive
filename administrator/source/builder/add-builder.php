<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/city.php");

	if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
{
	$filename = time().'_'.$_FILES["image"]["name"];
	$tempname = $_FILES["image"]["tmp_name"];
	$folder = '../upload/'.$filename;
	$res = move_uploaded_file($tempname,$folder);
	$_POST['image'] = $filename;
}

	$builderObj = new Model_Builders();
	$cityObj = new Model_City();
	if(isset($_POST['builderSave'])) {
		
		$builderArray['name'] = $_POST['name'];
		$builderArray['avatar'] = $_POST['image'];
		$builderArray['telephone'] = $_POST['contact_number'];
		$builderArray['email'] = $_POST['email'];
		$builderArray['register_number'] = rand(6,9999);
		$builderArray['city'] = $_POST['city'];
	//	$builderArray['m_con'] = implode(',',$_POST['m_contact']) ; its use for multiple add contact
		$builderArray['street_address'] = $_POST['address'];
		$builderArray['state'] = $_POST['state'];
		$builderArray['zip'] = $_POST['zipcode'];
		$builderArray['create_at'] = date('Y/m/d H:i:s');
		$builderArray['modified_at'] = date('Y/m/d H:i:s');
		$builderArray['status'] = 1;
		$builderArray['user_name'] = $_POST['name'];
		$builderArray['password'] = rand(6,9999);
		$builderArray['properties'] = '';
		$builderId = $builderObj->addBuilderByValue($builderArray);
		header("Location: " . SITE_URL . "/admin/builder");
	}
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	
	$citiesListArray = $builderObj->getCities();
	$smarty->assign('citiesListArray', $citiesListArray);
	$statesListArray = $builderObj->getStates();
	$smarty->assign('statesListArray', $statesListArray);
	$smarty->assign('moduleName', 'Add builder');
	$smarty->display(ADMIN_TEMPLATEDIR . '/builder/add-builder.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
	
?>