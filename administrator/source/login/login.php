<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/login.php");

	$builderObj = new Model_login();
	
	if(isset($_POST['login'])) {
		$vali = $builderObj->validation($_POST['mobile'],$_POST['password']);
		//print_r($vali);
		
		$msg=array();
		$msg1=array();
		$msg2=array();
		if(trim($_POST['mobile'])== ''){
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
	
		$builderId = $builderObj->getUserValueByDetailsUsernameAndPassword($_POST['mobile'],$_POST['password']);

		// echo '<pre>';print_r($builderId);die;
		if(count($builderId) > 0) {
			$_SESSION['isLoggedIn'] = true;
			$_SESSION['admin_id'] 	= $builderId['admin_id'];
			$_SESSION['full_name'] 	= $builderId['full_name'];
			$_SESSION['is_active'] 	= $builderId['is_active'];
			header("Location: " . SITE_URL . "admin/dashboard");
		}

		}
	}
	if(isset($_SESSION['isLoggedIn'])){
		header("Location: " . SITE_URL . "admin/dashboard");
	}else{
		$smarty->assign('moduleName', 'login');
		$smarty->display(ADMIN_TEMPLATEDIR . '/login/login.tpl');
	}
	
?>