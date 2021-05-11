<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/team.php");

    $teamObj = new Model_Team();

	$teamuserArray = $teamObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('teamuserArray', $teamuserArray);

	if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
	{
		$filename = time().'_'.$_FILES["image"]["name"];
		$tempname = $_FILES["image"]["tmp_name"];
		$folder = '../upload/team/'.$filename;
		$res = move_uploaded_file($tempname,$folder);
		$_POST['image'] = $filename;
	}

	$teamObj = new Model_Team();
	if(isset($_POST['teamEdit'])) {
		
        $teamArray['id'] = $_POST['id'];
		$teamArray['name'] = $_POST['name'];
		$teamArray['description'] = $_POST['description'];
		$teamArray['title'] = $_POST['title'];
		$teamArray['img'] = $_POST['image'];
	
		$teamId = $teamObj->editUserValueById($teamArray,$_POST['id']);
		
		header("Location: " . SITE_URL . "/admin/team");
	}

	
	$smarty->assign('moduleName', 'Edit team');

	$smarty->display(ADMIN_TEMPLATEDIR . '/team/edit-team.tpl');
?>