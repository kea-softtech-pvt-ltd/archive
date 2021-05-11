<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/agent.php");

    $agentObj = new Model_Agent();

	$agentuserArray = $agentObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('agentuserArray', $agentuserArray);

	if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
	{
		$filename = time().'_'.$_FILES["image"]["name"];
		$tempname = $_FILES["image"]["tmp_name"];
		$folder = '../upload/agent/'.$filename;
		$res = move_uploaded_file($tempname,$folder);
		$_POST['image'] = $filename;
	}

	$agentObj = new Model_Agent();
	if(isset($_POST['agentEdit'])) {
		
        $agentArray['id'] = $_POST['id'];
		$agentArray['name'] = $_POST['name'];
		$agentArray['description'] = $_POST['description'];
		$agentArray['phone'] = $_POST['phone'];
		$agentArray['email'] = $_POST['email'];
		$agentArray['fax'] = $_POST['fax'];
		$agentArray['office_phone'] = $_POST['office_phone'];
		$agentArray['img'] = $_POST['image'];
	
		$teamId = $agentObj->editUserValueById($agentArray,$_POST['id']);
		
		header("Location: " . SITE_URL . "/admin/agent");
	}

	
	$smarty->assign('moduleName', 'Edit agent');

	$smarty->display(ADMIN_TEMPLATEDIR . '/agent/edit-agent.tpl');
?>