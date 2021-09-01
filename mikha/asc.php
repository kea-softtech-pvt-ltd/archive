<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();

	$userArray['requestGroup'] = 1;
	//$userArray['reciver'] = 1;
	$builderuserArray = $propertiesObj->JoinPropertyGroup($userArray,$_REQUEST['id'],$_REQUEST['rid'],$_REQUEST['pro_id']);
	//$builderuserArray = $propertiesObj->JoinPropertyGroup($userArray,$_REQUEST['rid'],$_REQUEST['pro_id']);
	// print_r($builderuserArray);die();
	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);
	
	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist

	//die();
	header("Location: " . SITE_URL . "mikha/message.php");	
	
?>