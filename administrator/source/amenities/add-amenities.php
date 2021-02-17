<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

 $msg=array();
 $msg1=array();

if(isset($_POST['amenitiesSave']))
 {

	$targetDir = "../upload/amenities/"; 
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



	if (trim($_POST['name'])== '' || trim($imagelist)==''){
		if (trim($_POST['name'])== '') {
		$msg = "user name cant be emty.";
		$smarty->assign('message', $msg);
	   }
	   if (trim($imagelist)== '') {
		$msg1 = "Image cant be emty.";
		$smarty->assign('message1', $msg1);
		
	}
    }
	else {
		$amenitiesObj = new Model_Amenities();
		$amenitiesArray['name'] = $_POST['name'];
		$amenitiesArray['images'] = $imagelist; // multiple
		$amenitiesArray['created_at'] = date('Y/m/d H:i:s');
		$amenitiesArray['modified_at'] = date('Y/m/d H:i:s');
		$amenitiesArray['status'] = 1;
		
		$amenitiesArray = $amenitiesObj->addAmenitiesByValue($amenitiesArray);
		header("Location: " . SITE_URL . "/admin/amenities");
  }
}
	$smarty->display(ADMIN_TEMPLATEDIR . '/amenities/add-amenities.tpl');
?>