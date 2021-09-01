
<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();


	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);

	$userListArray = $propertiesObj->getAllUser($_REQUEST['id']);
	$smarty->assign('userListArray', $userListArray);

    if(isset($_SESSION['user_id'])){
		$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
		$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
		
		$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
		$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	}else{
		$smarty->assign('userMessageCount1',''); 
		$smarty->assign('userMessageCount',''); 
	}
    
	$proListArray = $propertiesObj->getPropertiey();
	$smarty->assign('proListArray', $proListArray);

	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list
	
	// show to asscepte group reques user show hear.

	if(isset($_SESSION['user_id'])){
		$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
		$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
		
		$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
		$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	}else{
		$smarty->assign('userMessageCount1',''); 
		$smarty->assign('userMessageCount',''); 
	}

	$userGroupListArray = $propertiesObj->getAllUserGroupAccept($_REQUEST['id']);
	$smarty->assign('userGroupListArray', $userGroupListArray);
	
	$proTypeListArray = $propertiesObj->getProType();
    $smarty->assign('proTypeListArray', $proTypeListArray);
	
	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);

	//print_r($userGroupListArray);

	$propertiesArray = $propertiesObj->getAllPropertiesView($_REQUEST['id']);
    $smarty->assign('propertiesArray', $propertiesArray);

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);


	$smarty->assign('moduleName', 'List of properties');
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/singles.tpl');	

	

	
?>
