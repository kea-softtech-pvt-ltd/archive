<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");
	
	$bannerObj = new Model_Banner();

	$bannerArray = $bannerObj->getAllBanner();
	
	$smarty->assign('bannerArray', $bannerArray);


	$smarty->assign('moduleName', 'List of banner');

	$smarty->display(ADMIN_TEMPLATEDIR . '/banner/banner.tpl');

?>
