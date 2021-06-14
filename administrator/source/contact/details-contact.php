<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/contact.php");

	$contactObj = new Model_Contact();
	$contactListArray = $contactObj->getAllContact();

	$smarty->assign('contactListArray', $contactListArray);
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
		$smarty->assign('moduleName', 'List of contact');
		$smarty->display(ADMIN_TEMPLATEDIR . '/contact/details-contact.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
	
		}
?>