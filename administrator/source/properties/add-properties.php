<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	//print_r($_REQUEST);
	$builderObj = new Model_Property();
	if(isset($_POST['propetySave'])) {

		$targetDir = "../upload/properties/"; 
			$imagearray = array();
			foreach($_FILES['image']['name'] as $key=>$val){ 
			   
				$fileName =  time().'_'.basename($_FILES['image']['name'][$key]); 
				$targetFilePath = $targetDir . $fileName; 
				
			   $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
				if(move_uploaded_file($_FILES["image"]["tmp_name"][$key], $targetFilePath)){ 
					array_push($imagearray,$fileName);
				}
			} 
		   
		$imagelist = implode(",",$imagearray);

	//	$builderObj = new Model_Property();
		$propertyArray['name'] = $_POST['name'];
		$propertyArray['builder_name'] = $_POST['builder_name'];
		$propertyArray['started_date'] = $_POST['started_date'];
		$propertyArray['possession_date'] = $_POST['possession_date'];
		$propertyArray['rera_number'] = $_POST['rera_number'];
		$propertyArray['address'] = $_POST['address'];
		$propertyArray['specification'] = $_POST['specification'];
	//	$propertyArray['wing'] = $_POST['wing'];
		$propertyArray['floor'] = $_POST['floor'];
		$propertyArray['images'] = $imagelist;
		$propertyArray['status'] = 1;
		$propertyArray['created_date'] = date('Y/m/d H:i:s');
		$propertyArray['modified_date'] = date('Y/m/d H:i:s');
		$propertyArray['wing'] = implode(',',$_POST['wing']) ;

		$propertyId = $builderObj->addPropertiesByValue($propertyArray);


		header("Location: " . SITE_URL . "/admin/properties");
	}
	$statesListArray = $builderObj->getWing();
	$smarty->assign('statesListArray', $statesListArray);

	$smarty->assign('moduleName', 'Add properties');
	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/add-properties.tpl');
	
?>