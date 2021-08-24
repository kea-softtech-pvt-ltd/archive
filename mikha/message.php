
<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){

	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);


    $userMessage = $propertiesObj->getAllUserMessage($_SESSION['user_id']);
	$smarty->assign('userMessage', $userMessage);

	$userMessage1 = $propertiesObj->getAllUserMessage1($_SESSION['user_id']);
	$smarty->assign('userMessage1', $userMessage1);

	$proListArray = $propertiesObj->getPropertiey();
	$smarty->assign('proListArray', $proListArray);

	$proBedsListArray = $propertiesObj->getPropertieyBeds();
	$smarty->assign('proBedsListArray', $proBedsListArray);
	
	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray); // it use in show partaner 

	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist
	
	$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
	$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist

	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list

	 //print_r($userMessage);

	$smarty->assign('moduleName', 'List of message');
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/message.tpl');	

}else{
	header("Location: " . SITE_URL . "mikha/index.php");
}
	
?>
