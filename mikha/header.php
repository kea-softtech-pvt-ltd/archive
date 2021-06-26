
<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);

	
	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray);

	// $userMessage = $propertiesObj->getAllUserMessage($_SESSION['user_id']);

	// $smarty->assign('userMessage',count($userMessage));

	//print_r($userMessage);

	$smarty->assign('moduleName', 'List of message');
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/header.tpl');	
	
?>
