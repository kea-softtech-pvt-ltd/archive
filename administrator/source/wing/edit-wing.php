<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/wing.php");

	$buildingtypeObj = new Model_Wing();

	$winguserArray = $buildingtypeObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('winguserArray', $winguserArray);

	if(isset($_POST['typeEdit'])) {

        $buiTypeArray['id'] = $_POST['id'];
		$buiTypeArray['name'] = $_POST['name'];
		$buiTypeArray['created_date'] = date('Y/m/d H:i:s');
		
		
		$amenitiesId = $buildingtypeObj->editUserValueById($buiTypeArray,$_POST['id']);

		header("Location: " . SITE_URL . "/admin/wing");
	}
	$smarty->display(ADMIN_TEMPLATEDIR . '/wing/edit-wing.tpl');
?>