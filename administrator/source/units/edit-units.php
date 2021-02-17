<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/units.php");

    $unitsObj = new Model_Units();

	$unitsuserArray = $unitsObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('unitsuserArray', $unitsuserArray);

	
	if(isset($_POST['builderEdit'])) {
		$unitsObj = new Model_Units();
		$unitsArray['id'] = $_POST['id'];
		$unitsArray['type'] = $_POST['name'];
		$unitsArray['title'] = $_POST['title'];
		$unitsArray['size'] = $_POST['size'];
		$unitsArray['price'] = $_POST['price'];
		$unitsArray['carpet_area'] = $_POST['carpet_area'];
		$unitsArray['built_area'] = $_POST['built_area'];
		//$unitsArray['images'] = $imagelist; 
		//$unitsArray['3d_plan_images'] = $img; 
		//$unitsArray['2d_plan_images'] = $imagessslist; 
		$unitsArray['modified_at'] = date('Y/m/d H:i:s');
		$unitsArray['status'] = 1;
		$unitsId = $unitsObj->editUserValueById($unitsArray,$_POST['id']);
		header("Location: " . SITE_URL . "/admin/units");
	}

	$smarty->assign('moduleName', 'edit units');

	$smarty->display(ADMIN_TEMPLATEDIR . '/units/edit-units.tpl');
?>