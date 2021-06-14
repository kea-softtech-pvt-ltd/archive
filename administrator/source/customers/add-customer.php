<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');

	//print_r($_REQUEST);
	if(isset($_SESSION['isLoggedIn'])){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('moduleName', 'Add customer');
			$smarty->display(ADMIN_TEMPLATEDIR . '/customers/add-customer.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
	
	
	}
?>