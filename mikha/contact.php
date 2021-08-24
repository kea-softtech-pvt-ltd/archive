<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/contact.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$contactObj = new Model_Contact();

	// $contactListArray = $contactObj->getAllContact();
   // $smarty->assign('contactListArray', $contactListArray);

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){

	//if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	$smarty->assign('moduleName', 'List of contact');

	$propertiesObj = new Model_Property();

	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
	$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
	
	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);
	
	$proListArray = $propertiesObj->getPropertiey();
	$smarty->assign('proListArray', $proListArray);

	$proBedsListArray = $propertiesObj->getPropertieyBeds();
	$smarty->assign('proBedsListArray', $proBedsListArray);
	
	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/contact.tpl');	

}else{
	header("Location: " . SITE_URL . "mikha/index.php");
}
	
?>



