<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/team.php");
	

	if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
{
	$filename = time().'_'.$_FILES["image"]["name"];
	$tempname = $_FILES["image"]["tmp_name"];
	$folder = '../upload/team/'.$filename;
	$res = move_uploaded_file($tempname,$folder);
	$_POST['image'] = $filename;
}

	$teamObj = new Model_Team();

	if(isset($_POST['teamSave'])) {
		
		$teamArray['name'] = $_POST['name'];
		$teamArray['img'] = $_POST['image'];
		$teamArray['title'] = $_POST['title'];
		$teamArray['description'] = $_POST['description'];

		$success = "You have successfully add team.";
		$smarty->assign("success",$success);
		$teamId = $teamObj->addTeamByValue($teamArray);

		$_SESSION['message_add_b']=$success;  // its use to session show message
		unset($_SESSION['message_add_b']);
	
		header("Location: " . SITE_URL . "/admin/team");
	
	}
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	

	$smarty->assign('moduleName', 'Add team');

	$smarty->display(ADMIN_TEMPLATEDIR . '/team/add-team.tpl');

	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}


	
?>