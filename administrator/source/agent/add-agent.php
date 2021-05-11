<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/agent.php");
	

	if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
{
	$filename = time().'_'.$_FILES["image"]["name"];
	$tempname = $_FILES["image"]["tmp_name"];
	$folder = '../upload/agent/'.$filename;
	$res = move_uploaded_file($tempname,$folder);
	$_POST['image'] = $filename;
}

	$teamObj = new Model_Agent();

	if(isset($_POST['agentSave'])) {
		
		$teamArray['name'] = $_POST['name'];
		$teamArray['img'] = $_POST['image'];
		$teamArray['fax'] = $_POST['fax'];
		$teamArray['email'] = $_POST['email'];
		$teamArray['office_phone'] = $_POST['office_phone'];
		$teamArray['phone'] = $_POST['phone'];
		$teamArray['description'] = $_POST['description'];

		$success = "You have successfully add agent.";
		$smarty->assign("success",$success);
		$teamId = $teamObj->addTeamByValue($teamArray);

		$_SESSION['message_add_b']=$success;  // its use to session show message
		unset($_SESSION['message_add_b']);
	
		header("Location: " . SITE_URL . "/admin/agent");
	
	}
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	

	$smarty->assign('moduleName', 'Add agent');

	$smarty->display(ADMIN_TEMPLATEDIR . '/agent/add-agent.tpl');

	}else{
		header("Location: " . SITE_URL . "/admin/login");
	}


	
?>