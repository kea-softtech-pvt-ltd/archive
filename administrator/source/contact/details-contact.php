<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/contact.php");

	$contactObj = new Model_Contact();
	$contactListArray = $contactObj->getAllContact();

	$smarty->assign('contactListArray', $contactListArray);
	$smarty->assign('moduleName', 'List of contact');
	$smarty->display(ADMIN_TEMPLATEDIR . '/contact/details-contact.tpl');
?>