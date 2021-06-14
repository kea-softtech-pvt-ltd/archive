<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/neighbourhoods.php");

    $neighbourhoodsObj = new Model_Neighbourhoods();

	$neighbourhoodsArray = $neighbourhoodsObj->getUserNameByUserId($_REQUEST['id']);

    

	if(isset($_SESSION['isLoggedIn'])){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('neighbourhoodsArray', $neighbourhoodsArray);
			$smarty->display(ADMIN_TEMPLATEDIR . '/neighbourhoods/view-neighbourhoods.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		
		}
?>