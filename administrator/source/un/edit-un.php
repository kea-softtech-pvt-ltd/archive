<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/unit.php");

	$unitTypeObj = new Model_Unit();

	$unitArray = $unitTypeObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('unitArray', $unitArray);

	if(isset($_POST['typeEdit'])) {

        $unitTypeArray['id'] = $_POST['id'];
		$unitTypeArray['name'] = $_POST['name'];
		$unitTypeArray['created_date'] = date('Y/m/d H:i:s');
		
		
		$amenitiesId = $unitTypeObj->editUserValueById($unitTypeArray,$_POST['id']);

		header("Location: " . SITE_URL . "/admin/un");
	}
	$smarty->display(ADMIN_TEMPLATEDIR . '/un/edit-un.tpl');
?>