<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/unit.php");


if(isset($_POST['typeSave']))
 {

		$unitTypeObj = new Model_Unit();
		$unitTypeArray['name'] = $_POST['name'];
		$unitTypeArray['created_date'] = date('Y/m/d H:i:s');
		$unitTypeArray['status'] = 1;
		
		$unitTypeArray = $unitTypeObj->addUnitTypeByValue($unitTypeArray);
		header("Location: " . SITE_URL . "/admin/un");

}
	$smarty->display(ADMIN_TEMPLATEDIR . '/un/add-un.tpl');
?>