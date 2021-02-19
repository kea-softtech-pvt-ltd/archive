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

// multiple image 

// if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '') {
// 	$targetDir = "../upload/"; 
// 	$imagearray = array();
// 	foreach($_FILES['image']['name'] as $key=>$val){ 
// 		// File upload path 
// 		$fileName =  time().'_'.basename($_FILES['image']['name'][$key]); 
// 		$targetFilePath = $targetDir . $fileName; 
		 
// 		// Check whether file type is valid 
// 		$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
// 		if(move_uploaded_file($_FILES["image"]["tmp_name"][$key], $targetFilePath)){ 
// 			array_push($imagearray,$fileName);
// 		}
// 	} 
	
// $imagelist = implode(",",$imagearray);
// }

// emd image

	//print_r($_REQUEST); 
	// fields -> id	name	partner_name	pan	telephone	email	avatar	city	street_address	state	zip	properties	create_at	modified_at	status
	$builderObj = new Model_Builders();
	$cityObj = new Model_City();
	if(isset($_POST['builderSave'])) {
		
		//echo "submitted";
		$builderArray['name'] = $_POST['name'];
		$builderArray['partner_name'] = $_POST['partner_name'];
		$builderArray['telephone'] = $_POST['contact_number'];
		$builderArray['email'] = $_POST['email'];
		$builderArray['pan'] = $_POST['pan_number'];
		$builderArray['city'] = $_POST['city'];
		$builderArray['street_address'] = $_POST['address'];
		$builderArray['state'] = $_POST['state'];
		$builderArray['zip'] = $_POST['zipcode'];
		$builderArray['avatar'] = $_POST['image'];
		//$builderArray['avatar'] = $imagelist; // multiple
		$builderArray['create_at'] = date('Y/m/d H:i:s');
		$builderArray['modified_at'] = date('Y/m/d H:i:s');
		$builderArray['status'] = 1;
		$builderArray['user_name'] = $_POST['name']; // user name add in name
		$builderArray['password'] = rand(6,9999);
		//$builderArray['avatar'] = '';
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
	//echo ADMIN_TEMPLATEDIR;
	$smarty->display(ADMIN_TEMPLATEDIR . '/builder/add-builder.tpl');
	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}
	

	// $citiesListArray = $builderObj->getCities();
	// $smarty->assign('citiesListArray', $citiesListArray);
	// $smarty->assign('moduleName', 'Add builder');
	// //echo ADMIN_TEMPLATEDIR;
	// $smarty->display(ADMIN_TEMPLATEDIR . '/builder/add-builder.tpl');
?>