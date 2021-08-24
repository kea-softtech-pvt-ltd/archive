<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/contact.php");

	$contactObj = new Model_Contact();
	$customerListArray = $contactObj->getAllUser();

	if(isset($_SESSION['isLoggedIn'])){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){

			$smarty->assign('customerListArray', $customerListArray);
			
			$smarty->assign('moduleName', 'List of customers');
			$smarty->display(ADMIN_TEMPLATEDIR . '/customers/list-customer.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
	
	
	}
?>