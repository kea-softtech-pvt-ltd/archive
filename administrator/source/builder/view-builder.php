<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();

	$builderuserArray = $builderObj->getUserNameByUserId($_REQUEST['id']);

    

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){	
	
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('builderuserArray', $builderuserArray);
	
			$smarty->display(ADMIN_TEMPLATEDIR . '/builder/view-builder.tpl');
			}else{
				header("Location: " . SITE_URL . "admin/login");
			}
	
		}
?>