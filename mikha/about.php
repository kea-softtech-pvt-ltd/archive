<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/team.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	
	$teamObj = new Model_Team();
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){

	$teamListArray = $teamObj->getAllTeam();


	$smarty->assign('teamListArray', $teamListArray);
	$smarty->assign('moduleName', 'List of team');

	$propertiesObj = new Model_Property();

	$proListArray = $propertiesObj->getPropertiey();
	$smarty->assign('proListArray', $proListArray);

	$proBedsListArray = $propertiesObj->getPropertieyBeds();
	$smarty->assign('proBedsListArray', $proBedsListArray);
	
	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);
	
	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list

	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
	$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
	
	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);

	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/about.tpl');	

}else{
	header("Location: " . SITE_URL . "mikha/index.php");
}

	
?>
