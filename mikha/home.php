<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");
    include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/login.php");

	// $propertiesObj = new Model_Property();
	// $propertiesListArray = $propertiesObj->getAllProperties1();


	// if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

	// $smarty->assign('propertiesListArray', $propertiesListArray);
	// $smarty->assign('moduleName', 'List of properties');


	// $smarty->display(FRONT_TEMPLATEDIR . '/mikha/home.tpl');
	
	// 	}else{
	// 		header("Location: " . SITE_URL . "mikha/index.php");
	// 	}


        $builderObj = new Model_login();
	
        if(isset($_POST['login'])) {
            if($_POST['role'] == 'user')
            {
            $vali = $builderObj->validation($_POST['mobile'],$_POST['password']);
            }else{
                $vali = $builderObj->validationUser($_POST['mobile'],$_POST['password']);
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
                $builderId = $builderObj->getUserValueByDetailsBuildernameAndPassword($_POST['mobile'],$_POST['password']);
                // echo '<pre>';print_r($builderId);die;
                if(count($builderId) > 0) {
                    $_SESSION['isLoggedIn'] = true;
                    $_SESSION['user_id'] 	= $builderId['user_id'];
                    $_SESSION['name'] 	= $builderId['name'];
                    $_SESSION['username'] 	= $builderId['username'];
                    $_SESSION['email'] = $builderId['email'];
                    $_SESSION['role'] 	= $builderId['role'];
                    // header("Location: " . SITE_URL . "/admin/dashboard");
                }
            }
        }
        if(isset($_SESSION['isLoggedIn'])){
            if($_SESSION['role']== 4) {
                header("Location: " . SITE_URL . "mikha/category"); 
            }
        //	header("Location: " . SITE_URL . "/admin/dashboard1");
         
        }else{
            $smarty->assign('moduleName', 'login');
            $smarty->display(FRONT_TEMPLATEDIR . '/mikha/home.tpl');
        }
	
?>