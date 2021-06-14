<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/neighbourhoods.php");

	$neighbourhoodsObj = new Model_Neighbourhoods();

	$neighbourhoodArray = $neighbourhoodsObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('neighbourhoodArray', $neighbourhoodArray);

	if(isset($_POST['typeEdit'])) {

        $neighbourhoodsArray['id'] = $_POST['id'];
		$neighbourhoodsArray['name'] = $_POST['name'];
		$neighbourhoodsArray['geolocations'] = $_POST['geolocations'];
		$neighbourhoodsArray['created_date'] = date('Y/m/d H:i:s');
		
		
		$amenitiesId = $neighbourhoodsObj->editNeighbourhoods($neighbourhoodsArray,$_POST['id']);

		header("Location: " . SITE_URL . "admin/neighbourhoods");
	}

	if(isset($_SESSION['isLoggedIn'])){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->display(ADMIN_TEMPLATEDIR . '/neighbourhoods/edit-neighbourhoods.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}
		
		}
?>