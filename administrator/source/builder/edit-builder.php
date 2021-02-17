<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();

	$builderuserArray = $builderObj->getUserNameByUserId($_REQUEST['id']);
//print_r($builderuserArray);
//echo $builderuserArray['id'];
//die;
$smarty->assign('builderuserArray', $builderuserArray);

if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
{
	$filename = time().'_'.$_FILES["image"]["name"];
	$tempname = $_FILES["image"]["tmp_name"];
	$folder = '../upload/'.$filename;
	$res = move_uploaded_file($tempname,$folder);
	$_POST['image'] = $filename;
}

	if(isset($_POST['builderSave'])) {
		$builderObj = new Model_Builders();
        $builderArray['id'] = $_POST['id'];
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
		$builderArray['create_at'] = date('Y/m/d H:i:s');
		$builderArray['modified_at'] = date('Y/m/d H:i:s');
		$builderArray['status'] = 1;
		$builderArray['user_name'] = $_POST['name']; 
		$builderArray['password'] = rand(6,9999);
		$builderArray['properties'] = '';
		$builderId = $builderObj->editUserValueById($builderArray,$_POST['id']);

     //  print_r($builderArray);
		header("Location: " . SITE_URL . "/admin/builder");
	}

	$smarty->assign('moduleName', 'Add builder');

    echo "moduleName" ;
	//echo ADMIN_TEMPLATEDIR;
	$smarty->display(ADMIN_TEMPLATEDIR . '/builder/edit-builder.tpl');
?>