<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();


	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){



	    $smarty->display(FRONT_TEMPLATEDIR . '/mikha/chat.tpl');
	
		}else{
			header("Location: " . SITE_URL . "mikha/home.php");
		}
	
?>
