<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/proType.php");


if(isset($_POST['typeSave']))
 {

		$proTypeObj = new Model_ProType();
		$proTypeArray['name'] = $_POST['name'];
		$proTypeArray['created_date'] = date('Y/m/d H:i:s');
		$proTypeArray['status'] = 1;
		
		$proTypeArray = $proTypeObj->addProTypeByValue($proTypeArray);
		header("Location: " . SITE_URL . "/admin/proType");

}
	$smarty->display(ADMIN_TEMPLATEDIR . '/proType/add-proType.tpl');
?>