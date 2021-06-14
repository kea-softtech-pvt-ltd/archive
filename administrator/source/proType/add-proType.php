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
		header("Location: " . SITE_URL . "admin/proType");

}
	
	if(isset($_SESSION['isLoggedIn'])){
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->display(ADMIN_TEMPLATEDIR . '/proType/add-proType.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		}
?>