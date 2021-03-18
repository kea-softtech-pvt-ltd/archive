<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/neighbourhoods.php");


if(isset($_POST['typeSave']))
 {
	
		$neighbourhoodsObj = new Model_Neighbourhoods();
		$neighbourhoodsArray['name'] = $_POST['name'];
		$neighbourhoodsArray['geolocations'] = $_POST['geolocations'];
		$neighbourhoodsArray['created_date'] = date('Y/m/d H:i:s');
		$neighbourhoodsArray['status'] = 1;
		
		$neighbourhoodsArray = $neighbourhoodsObj->addNeighbourhoods($neighbourhoodsArray);
		header("Location: " . SITE_URL . "/admin/neighbourhoods");
  
}
	$smarty->display(ADMIN_TEMPLATEDIR . '/neighbourhoods/add-neighbourhoods.tpl');
?>