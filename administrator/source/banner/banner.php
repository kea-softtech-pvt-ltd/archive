<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");
	
	$bannerObj = new Model_Banner();

	$bannerArray = $bannerObj->getAllBanner();
	
	$smarty->assign('bannerArray', $bannerArray);
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('moduleName', 'List of banner');
			$smarty->display(ADMIN_TEMPLATEDIR . '/banner/banner.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}

		}

?>
