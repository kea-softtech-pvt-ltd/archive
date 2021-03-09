<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");

	$bannerObj = new Model_Banner();

	$banneruserArray = $bannerObj->getUserNameByUserId($_REQUEST['id']);

	$smarty->assign('banneruserArray', $banneruserArray);

	if(isset($_POST['amenitiesEdit'])) {

		$bannerObj = new Model_Banner();
		$targetDir = "../upload/banner/"; 
		if($_FILES['image']['error'][0] ==  0){

			$imagearray = array();
			foreach($_FILES['image']['name'] as $key=>$val){ 
			// File upload path 
				$fileName =  time().'_'.basename($_FILES['image']['name'][$key]); 
				$targetFilePath = $targetDir . $fileName; 
				
				// Check whether file type is valid 
			$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
				if(move_uploaded_file($_FILES["image"]["tmp_name"][$key], $targetFilePath)){ 
					array_push($imagearray,$fileName);
				}
			} 
			$imagelist = implode(",",$imagearray);
		}else{
			$imagelist = $_POST['imageold'];
		}

        $bannerArray['id'] = $_POST['id'];
		$bannerArray['title'] = $_POST['title'];
		$bannerArray['image'] = $imagelist; // multiple
		
		$bannerId = $bannerObj->editBanner($bannerArray,$_POST['id']);

		header("Location: " . SITE_URL . "/admin/banner");
	}
	$smarty->display(ADMIN_TEMPLATEDIR . '/banner/edit-banner.tpl');
?>