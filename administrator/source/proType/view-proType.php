<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/wing.php");

    $wingObj = new Model_Wing();

	$wingArray = $wingObj->getUserNameByUserId($_REQUEST['id']);


	if(isset($_SESSION['isLoggedIn'])){
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('wingArray', $wingArray);
			$smarty->display(ADMIN_TEMPLATEDIR . '/wing/view-wing.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		}
?>