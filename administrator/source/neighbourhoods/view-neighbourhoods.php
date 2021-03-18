<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/neighbourhoods.php");

    $neighbourhoodsObj = new Model_Neighbourhoods();

	$neighbourhoodsArray = $neighbourhoodsObj->getUserNameByUserId($_REQUEST['id']);

    $smarty->assign('neighbourhoodsArray', $neighbourhoodsArray);
	
	$smarty->display(ADMIN_TEMPLATEDIR . '/neighbourhoods/view-neighbourhoods.tpl');
?>