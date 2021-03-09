<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");

    $bannerObj = new Model_Banner();

	$bannerArray = $bannerObj->getUserNameByUserId($_REQUEST['id']);

    $smarty->assign('bannerArray', $bannerArray);
	
	$smarty->display(ADMIN_TEMPLATEDIR . '/banner/view-banner.tpl');
?>