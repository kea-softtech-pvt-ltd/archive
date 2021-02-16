<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/units.php");


 if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '' && isset($_FILES["2d_plan"]["name"]) && $_FILES["2d_plan"]["name"] != '' && (isset($_FILES["3d_plan"]["name"]) && $_FILES["3d_plan"]["name"] != ''))  {
 	$targetDir = "../upload/units/"; 
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

	$targetDir = "../upload/units/2d/"; 
	$imagessaarray = array();
	foreach($_FILES['2d_plan']['name'] as $key=>$val){ 
		// File upload path 
		$fileName =  time().'_'.basename($_FILES['2d_plan']['name'][$key]); 
		$targetFilePath = $targetDir . $fileName; 
		
	   // Check whether file type is valid 
		$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
		if(move_uploaded_file($_FILES["2d_plan"]["tmp_name"][$key], $targetFilePath)){ 
			array_push($imagessaarray,$fileName);
	   }
	} 
   
   $imagessslist = implode(",",$imagessaarray);

   $targetDir = "../upload/units/3d/"; 
   $imagearray = array();
   foreach($_FILES['3d_plan']['name'] as $key=>$val){ 
	   // File upload path 
	   $fileName =  time().'_'.basename($_FILES['3d_plan']['name'][$key]); 
	   $targetFilePath = $targetDir . $fileName; 
	   
	  // Check whether file type is valid 
	   $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
	   if(move_uploaded_file($_FILES["3d_plan"]["tmp_name"][$key], $targetFilePath)){ 
		   array_push($imagearray,$fileName);
	  }
   } 
  
  $img = implode(",",$imagearray);

 }

if(isset($_POST['builderSave'])) {
		$unitsObj = new Model_Units();
		$unitsArray['type'] = $_POST['name'];
		$unitsArray['title'] = $_POST['title'];
		$unitsArray['size'] = $_POST['size'];
		$unitsArray['price'] = $_POST['price'];
		$unitsArray['carpet_area'] = $_POST['carpet_area'];
		$unitsArray['built_area'] = $_POST['built_area'];
		$unitsArray['images'] = $imagelist; 
		$unitsArray['3d_plan_images'] = $img; 
		$unitsArray['2d_plan_images'] = $imagessslist; 
		$unitsArray['created_at'] = date('Y/m/d H:i:s');
		$unitsArray['modified_at'] = date('Y/m/d H:i:s');
		$unitsArray['status'] = 1;
		$unitsId = $unitsObj->addUnitsByValue($unitsArray);
		header("Location: " . SITE_URL . "admin/units");
	}

	$smarty->assign('moduleName', 'Add units');
	//echo ADMIN_TEMPLATEDIR;
	$smarty->display(ADMIN_TEMPLATEDIR . '/units/add-units.tpl');
?>