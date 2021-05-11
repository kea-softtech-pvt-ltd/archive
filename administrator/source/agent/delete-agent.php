<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/agent.php");

    $agentObj = new Model_Agent();
	$agentArray['status'] = 0;
	$teamuserArray = $agentObj->deleteUserValueById($agentArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/agent");
?>