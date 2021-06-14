<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/proType.php");

	$proTypeObj = new Model_ProType();

	$proTypeArray = $proTypeObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('proTypeArray', $proTypeArray);

	if(isset($_POST['typeEdit'])) {

        $propertyTypeArray['id'] = $_POST['id'];
		$propertyTypeArray['name'] = $_POST['name'];
		$propertyTypeArray['created_date'] = date('Y/m/d H:i:s');
		
		
		$amenitiesId = $proTypeObj->editProTypeId($propertyTypeArray,$_POST['id']);

		header("Location: " . SITE_URL . "admin/proType");
	}

	if(isset($_SESSION['isLoggedIn'])){
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->display(ADMIN_TEMPLATEDIR . '/proType/edit-proType.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		}
?>