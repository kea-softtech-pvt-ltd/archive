<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/login.php");

	$builderObj = new Model_login();
	
	if(isset($_POST['login'])) {
		if($_POST['role'] == 'builder')
		{
		$vali = $builderObj->validation($_POST['mobile'],$_POST['password']);
		}else{
			$vali = $builderObj->validationBuilder($_POST['mobile'],$_POST['password']);
		}
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
			$builderId = $builderObj->getBuilderValueByDetailsBuildernameAndPassword($_POST['mobile'],$_POST['password']);
			// echo '<pre>';print_r($builderId);die;
			if(count($builderId) > 0) {
				$_SESSION['isLoggedIn'] = true;
				$_SESSION['id'] 	= $builderId['id'];
				$_SESSION['name'] 	= $builderId['name'];
				$_SESSION['email'] 	= $builderId['email'];
				$_SESSION['status'] = $builderId['status'];
				$_SESSION['role'] 	= $builderId['role'];
				// header("Location: " . SITE_URL . "/admin/dashboard");
			}
		}
	}
	if(isset($_SESSION['isLoggedIn'])){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			header("Location: " . SITE_URL . "admin/dashboard");
		}else{
			$smarty->assign('moduleName', 'login');
		$smarty->display(ADMIN_TEMPLATEDIR . '/builder/login.tpl');
		}
	//	header("Location: " . SITE_URL . "/admin/dashboard1");
	// header("Location: " . SITE_URL . "admin/dashboard"); 
	}else{
		$smarty->assign('moduleName', 'login');
		$smarty->display(ADMIN_TEMPLATEDIR . '/builder/login.tpl');
	}
	
?>