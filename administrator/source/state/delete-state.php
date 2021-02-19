<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/state.php");

    $stateObj = new Model_State();
	$stateArray['status'] = 0;
	$cityuserArray = $stateObj->deleteState($stateArray,$_REQUEST['s_id']);
	header("Location: " . SITE_URL . "/admin/city");
?>