<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/banner.php");

if(isset($_POST['bannerSave']))
 {
	$targetDir = "../upload/banner/"; 
	$imagearray = array();
	foreach($_FILES['image']['name'] as $key=>$val)
	{ 
		$fileName =  time().'_'.basename($_FILES['image']['name'][$key]); 
		$targetFilePath = $targetDir . $fileName; 
	   	$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
		if(move_uploaded_file($_FILES["image"]["tmp_name"][$key], $targetFilePath))
		{ 
			array_push($imagearray,$fileName);
		}
	} 
   
	$imagelist = implode(",",$imagearray);
	
		$bannerObj = new Model_Banner();
		$bannerArray['title'] = $_POST['title'];
		$bannerArray['image'] = $imagelist; // multiple
		$bannerArray['created_date'] = date('Y/m/d H:i:s');
		//$bannerArray['modified_at'] = date('Y/m/d H:i:s');
		$bannerArray['status'] = 1;
		
		$bannerArray = $bannerObj->addBanner($bannerArray);
		header("Location: " . SITE_URL . "admin/banner");

}

	if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){

		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->display(ADMIN_TEMPLATEDIR . '/banner/add-banner.tpl');
		}else{
			header("Location: " . SITE_URL . "admin/login");
		}

		}
?>