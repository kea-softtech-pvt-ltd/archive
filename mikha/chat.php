<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		$userArray = $propertiesObj->getUserForChat($_REQUEST['id']);
    	$smarty->assign('userArray', $userArray);

		$usersArray = $propertiesObj->getUserForChat1($_REQUEST['id']);
    	$smarty->assign('usersArray', $usersArray);

		$propertiesListArray = $propertiesObj->getUserChatMessage();
		$smarty->assign('propertiesListArray', $propertiesListArray);

	    $smarty->display(FRONT_TEMPLATEDIR . '/mikha/chat.tpl');
	
		}else{
			header("Location: " . SITE_URL . "mikha/home.php");
		}
	
?>
