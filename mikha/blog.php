<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){
	
	$propertiesObj = new Model_Property();
	$propertiesListArray = $propertiesObj->getAllProperties1();
	$smarty->assign('propertiesListArray', $propertiesListArray);

	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist

	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);
	
	$smarty->assign('moduleName', 'List of blog');
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/blog.tpl');
	
	
}else{
	header("Location: " . SITE_URL . "mikha/index.php");
}
	
?>