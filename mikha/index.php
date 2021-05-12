<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/login.php");
	
	$propertiesObj = new Model_Property();
	$propertiesListArray = $propertiesObj->getAllPropertiesIndex();
	$smarty->assign('propertiesListArray', $propertiesListArray);
	$smarty->assign('moduleName', 'List of properties');

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);

//	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/index.tpl');


$builderObj = new Model_login();
	
if(isset($_POST['login'])) {
	if($_POST['role'] == 'user')
	{
	$vali = $builderObj->validation($_POST['mobile'],$_POST['password']);
	}else{
		$vali = $builderObj->validationUser($_POST['email'],$_POST['password']);
	}
	$msg=array();
	$msg1=array();
	$msg2=array();
	if(trim($_POST['email'])== ''){
	$msg = "user name cant be emty.";
	$smarty->assign('message', $msg);
//	die;
	}
	else if($_POST['password']==''){
	$msg1 = "password cant be emty.";
	$smarty->assign('message1', $msg1);
	}
	else if
	 (empty($vali)) 
	 {
		$msg1= "username and password are not match";
		  $smarty->assign('message1', $msg1);
	}
	
else
	{
		$userId = $builderObj->getUserValueByDetailsBuildernameAndPassword($_POST['email'],$_POST['password']);
		// echo '<pre>';print_r($builderId);die;
		if(count($userId) > 0) {
			$_SESSION['isLoggedIn'] = true;
			$_SESSION['user_id'] 	= $userId['user_id'];
			$_SESSION['name'] 	= $userId['name'];
			$_SESSION['username'] 	= $userId['username'];
			$_SESSION['email'] 	= $userId['email'];
			$_SESSION['status'] = $userId['status'];
			$_SESSION['role'] 	= $userId['role'];
			header("Location: " . SITE_URL . "mikha/category");
			// header("Location: " . SITE_URL . "admin/dashboard");
		}
	}
}

		$smarty->assign('moduleName', 'login');
		$smarty->display(FRONT_TEMPLATEDIR . '/mikha/index.tpl');

	

	
?>