<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/contact.php");

    $contactObj = new Model_Contact();
	$builderArray['status'] = 0;
	$builderuserArray = $contactObj->deleteUserValueById($builderArray,$_REQUEST['id']);
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/customers/list");
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
	
		}
?>