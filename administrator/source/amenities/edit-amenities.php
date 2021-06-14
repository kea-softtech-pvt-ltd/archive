<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

	$amenitiesObj = new Model_Amenities();

	$amenitiesuserArray = $amenitiesObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('amenitiesuserArray', $amenitiesuserArray);

	if(isset($_POST['amenitiesEdit'])) {

		// $amenitiesObj = new Model_Amenities();
		// $targetDir = "../upload/amenities/"; 
		// if($_FILES['image']['error'][0] ==  0){

		// 	$imagearray = array();
		// 	foreach($_FILES['image']['name'] as $key=>$val){ 
		// 	// File upload path 
		// 		$fileName =  time().'_'.basename($_FILES['image']['name'][$key]); 
		// 		$targetFilePath = $targetDir . $fileName; 
				
		// 		// Check whether file type is valid 
		// 	$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
		// 		if(move_uploaded_file($_FILES["image"]["tmp_name"][$key], $targetFilePath)){ 
		// 			array_push($imagearray,$fileName);
		// 		}
		// 	} 
		// 	$imagelist = implode(",",$imagearray);
		// }else{
		// 	$imagelist = $_POST['imageold'];
		// }

        $amenitiesArray['id'] = $_POST['id'];
		$amenitiesArray['name'] = $_POST['name'];
		$amenitiesArray['font_awaesome'] = $_POST['font_awaesome'];
	//	$amenitiesArray['images'] = $imagelist; // multiple
		
		$amenitiesId = $amenitiesObj->editUserValueById($amenitiesArray,$_POST['id']);

		header("Location: " . SITE_URL . "admin/amenities");
	}
	

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->display(ADMIN_TEMPLATEDIR . '/amenities/edit-amenities.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}

		}
?>