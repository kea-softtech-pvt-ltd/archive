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

		header("Location: " . SITE_URL . "/admin/proType");
	}
	$smarty->display(ADMIN_TEMPLATEDIR . '/proType/edit-proType.tpl');
?>