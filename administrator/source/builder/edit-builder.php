<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();

	$builderuserArray = $builderObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('builderuserArray', $builderuserArray);

	if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
	{
		$filename = time().'_'.$_FILES["image"]["name"];
		$tempname = $_FILES["image"]["tmp_name"];
		$folder = '../upload/'.$filename;
		$res = move_uploaded_file($tempname,$folder);
		$_POST['image'] = $filename;
	}

	$builderObj = new Model_Builders();
	if(isset($_POST['builderSave'])) {
		
        $builderArray['id'] = $_POST['id'];
		$builderArray['name'] = $_POST['name'];
		$builderArray['telephone'] = $_POST['contact_number'];
		$builderArray['email'] = $_POST['email'];
		$builderArray['city'] = $_POST['city'];
		$builderArray['avatar'] = $_POST['image'];
		$builderArray['street_address'] = $_POST['address'];
		$builderArray['state'] = $_POST['state'];
	//	$builderArray['m_con'] = implode(',',$_POST['m_contact']) ; its use multiple contact add use this
		$builderArray['zip'] = $_POST['zipcode'];
		$builderArray['modified_at'] = date('Y/m/d H:i:s');
		$builderArray['status'] = 1;
		$builderArray['user_name'] = $_POST['name']; 
		$builderId = $builderObj->editUserValueById($builderArray,$_POST['id']);

		header("Location: " . SITE_URL . "/admin/builder");
	}

	$citiesListArray = $builderObj->getCities();
	$smarty->assign('citiesListArray', $citiesListArray);
	$statesListArray = $builderObj->getStates();
	$smarty->assign('statesListArray', $statesListArray);
	$smarty->assign('moduleName', 'Add builder');

	$smarty->display(ADMIN_TEMPLATEDIR . '/builder/edit-builder.tpl');
?>