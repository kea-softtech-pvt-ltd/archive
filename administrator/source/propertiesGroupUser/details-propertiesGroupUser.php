<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	$userGroupListArray = $propertiesObj->getAllUserGroupAccept1();
	$smarty->assign('userGroupListArray', $userGroupListArray);
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
		$smarty->assign('moduleName', 'List of contact');
		$smarty->display(ADMIN_TEMPLATEDIR . '/propertiesGroupUser/details-propertiesGroupUser.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
	
		}
?>