<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builderlogin.php");

	$builderObj = new Model_builderlogin();
	
	if(isset($_POST['login'])) {
		$vali = $builderObj->validation($_POST['email'],$_POST['password']);
		//print_r($vali);
		
		$msg=array();
		$msg1=array();
		$msg2=array();
		if(trim($_POST['email'])== ''){
		$msg = "user name cant be emty.";
		$smarty->assign('message', $msg);
	//	die;
		}
		else if($_POST['password']==''){
		$msg1 = "password cant be emty.";
		$smarty->assign('message1', $msg1);
		}
        else if (empty($vali)) {
			$msg1= "username and password are not match";
			  $smarty->assign('message1', $msg1);
		}
		else{
	
		$builderId = $builderObj->getUserValueByDetailsUsernameAndPassword($_POST['email'],$_POST['password']);

		// echo '<pre>';print_r($builderId);die;
		if(count($builderId) > 0) {
			$_SESSION['isLoggedIn'] = true;
			$_SESSION['id'] 	= $builderId['id'];
			$_SESSION['name'] 	= $builderId['name'];
			$_SESSION['status'] 	= $builderId['status'];
			header("Location: " . SITE_URL . "dashboard/dashboard");
		}

		}
	}
	if(isset($_SESSION['isLoggedIn'])){
		header("Location: " . SITE_URL1 . "dashboard/dashboard");
	}else{
		$smarty->display(BUILDER_TEMPLATEDIR . '/login/login.tpl');
	}
	
?>