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
		$builderArray['landmark'] = $_POST['landmark'];
		$builderArray['email'] = $_POST['email'];
		$builderArray['register_number'] = $_POST['register_number'];
		$builderArray['city'] = $_POST['city'];
		$builderArray['street_address'] = $_POST['address'];
		$builderArray['state'] = $_POST['s_id'];
		$builderArray['zip'] = $_POST['zipcode'];
		$builderArray['create_at'] = date('Y/m/d H:i:s');
		$builderArray['modified_at'] = date('Y/m/d H:i:s');
		$builderArray['status'] = 1;
		$builderArray['user_name'] = $_POST['name'];
		$builderArray['password'] = rand(6,9999);
		$builderArray['properties'] = '';
	//	$builderArray['m_con'] = implode(',',$_POST['m_contact']) ; its use for multiple add contact

		$success = "You have successfully add builder.";
		$smarty->assign("success",$success);
		$builderId = $builderObj->addBuilderByValue($builderArray);

		//$_SESSION['message_add_b']=$success;  // its use to session show message
		
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