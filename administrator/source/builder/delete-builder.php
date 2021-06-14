<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();
	$builderArray['status'] = 0;
	$builderuserArray = $builderObj->deleteUserValueById($builderArray,$_REQUEST['id']);
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/builder");
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
	
		}
?>