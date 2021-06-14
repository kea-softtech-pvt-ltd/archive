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


$userObj = new Model_login();
	
if(isset($_POST['login'])) {
	if($_POST['role'] == 'user')
	{
		$vali = $userObj->validationUser($_POST['email'],$_POST['password']);
	}
		$userId = $userObj->getUserValueByDetailsBuildernameAndPassword($_POST['email'],$_POST['password']);
		
		// echo '<pre>';print_r($builderId);die;
		
		if(count($userId) > 0) {
			$_SESSION['isLoggedIn'] = true;
			$_SESSION['user_id'] 	= $userId['user_id'];
			$_SESSION['name'] 	= $userId['name'];
			$_SESSION['username'] 	= $userId['username'];
			$_SESSION['email'] 	= $userId['email'];
			$_SESSION['role'] 	= $userId['role'];
			header("Location: " . SITE_URL . "mikha/category");
		}
	
}
		if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		$smarty->assign('moduleName', 'login');
		$smarty->display(FRONT_TEMPLATEDIR . '/mikha/index.tpl');

		}else{
			header("Location: " . SITE_URL . "mikha/home.php");
		}

	
?>