<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	 $propertiesObj = new Model_Property();

	 if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){

		$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
		$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
		$smarty->display(FRONT_TEMPLATEDIR . '/mikha/blog_single.tpl');	

	}else{
	header("Location: " . SITE_URL . "mikha/index.php");
	}
	
?>
