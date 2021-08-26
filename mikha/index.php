<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/login.php");
	
	$propertiesObj = new Model_Property();

	$propertiesListArray = $propertiesObj->getAllPropertiesIndex();
	$smarty->assign('propertiesListArray', $propertiesListArray);
	$smarty->assign('moduleName', 'List of properties');

	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray);

	$proListArray = $propertiesObj->getPropertiey();
	$smarty->assign('proListArray', $proListArray);

	$proBedsListArray = $propertiesObj->getPropertieyBeds();
	$smarty->assign('proBedsListArray', $proBedsListArray);

	$unitsTypeListArray = $propertiesObj->getUnitsType();
    $smarty->assign('unitsTypeListArray', $unitsTypeListArray);

	$proTypeListArray = $propertiesObj->getProType();
    $smarty->assign('proTypeListArray', $proTypeListArray);

	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);

	if(isset($_SESSION['user_id'])){
		$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
		$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
		
		$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
		$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	}else{
		$smarty->assign('userMessageCount1',''); 
		$smarty->assign('userMessageCount',''); 
	}

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);


$userObj = new Model_login();
	
if(isset($_POST['login'])) {
	if($_POST['role'] == 'user')
	{
		$vali = $userObj->validationUser($_POST['email'],$_POST['password']);
	}
		$userId = $userObj->getUserValueByDetailsBuildernameAndPassword($_POST['email'],$_POST['password']);
			
		if(count($userId) > 0) {
			$_SESSION['isLoggedIn'] = true;
			$_SESSION['user_id'] 	= $userId['user_id'];
			$_SESSION['name'] 		= $userId['name'];
			$_SESSION['username'] 	= $userId['username'];
			$_SESSION['email'] 	= $userId['email'];
			$_SESSION['role'] 	= $userId['role'];
			header("Location: " . SITE_URL . "mikha/category");
		}
	
}
	
		$smarty->assign('moduleName', 'login');
		$smarty->display(FRONT_TEMPLATEDIR . '/mikha/index.tpl');

	
?>