<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");
	
	$builderObj = new Model_Builders();
	$builderListArray = $builderObj->getAllBuilders();
	$buildersProListArray = $builderObj->getAllBuildersProperti();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){


	if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
	$smarty->assign('builderListArray', $builderListArray);
	$smarty->assign('buildersProListArray', $buildersProListArray);
	$smarty->assign('moduleName', 'List of builder');
	$smarty->display(ADMIN_TEMPLATEDIR . '/builder/builder.tpl');
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}

	}

?>