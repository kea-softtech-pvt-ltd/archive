<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/team.php");

    $teamObj = new Model_Team();
	$teamArray['status'] = 0;
	$teamuserArray = $teamObj->deleteUserValueById($teamArray,$_REQUEST['id']);

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
				
			header("Location: " . SITE_URL . "admin/team");

			
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
		
			}
?>