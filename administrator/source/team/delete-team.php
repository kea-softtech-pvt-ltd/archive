<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/team.php");

    $teamObj = new Model_Team();
	$teamArray['status'] = 0;
	$teamuserArray = $teamObj->deleteUserValueById($teamArray,$_REQUEST['id']);
	header("Location: " . SITE_URL . "/admin/team");
?>