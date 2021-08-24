
<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);

	$userListArray = $propertiesObj->getAllUser($_REQUEST['id']);
	$smarty->assign('userListArray', $userListArray);

	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
	$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
	
	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list
	
	// show to asscepte group reques user show hear.

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
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/single.tpl');	

	
}else{
	header("Location: " . SITE_URL . "mikha/index.php");
}
	
?>
