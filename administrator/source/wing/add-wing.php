<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/wing.php");


if(isset($_POST['typeSave']))
 {

		$buildingtypeObj = new Model_Wing();
		$buiTypeArray['name'] = $_POST['name'];
		$buiTypeArray['created_date'] = date('Y/m/d H:i:s');
		$buiTypeArray['status'] = 1;
		
		$buiTypeArray = $buildingtypeObj->addBuildingTypeByValue($buiTypeArray);
		header("Location: " . SITE_URL . "/admin/wing");

}
	$smarty->display(ADMIN_TEMPLATEDIR . '/wing/add-wing.tpl');
?>