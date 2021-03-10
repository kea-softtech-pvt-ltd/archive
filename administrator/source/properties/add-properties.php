<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	//print_r($_REQUEST);
	$builderObj = new Model_Property();
	if(isset($_POST['propetySave'])) 
	{

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

		$propertyArray['name'] = $_POST['name'];
		$propertyArray['builder_name'] = $_POST['builder_name'];
		$propertyArray['started_date'] = $_POST['started_date'];
		$propertyArray['possession_date'] = $_POST['possession_date'];
		$propertyArray['rera_number'] = $_POST['rera_number'];
		$propertyArray['address'] = $_POST['address'];
		//$propertyArray['specification'] = $_POST['specification'];
		$propertyArray['images'] = $imagelist;
		$propertyArray['status'] = 1;
		$propertyArray['created_date'] = date('Y/m/d H:i:s');
		$propertyArray['modified_date'] = date('Y/m/d H:i:s');
		// $propertyArray['wing'] = implode(',',$_POST['wing']) ;
		// $propertyArray['floor'] = implode(',',$_POST['floor']);
		// $propertyArray['flat'] = $_POST['flat'];
		// $propertyArray['specality'] = $_POST['specality'];
		$propertyId = $builderObj->addPropertiesByValue($propertyArray);
		
		for($i=0; $i<count($_POST['wing']);$i++){

			$wingArray['p_id']		= $propertyId;
			$wingArray['wing'] 		= $_POST['wing'][$i];
			$wingArray['floor'] 	= $_POST['floor'][$i];
			$wingArray['flat'] 		= $_POST['flat'][$i];
			$wingArray['specality'] = $_POST['specality'][$i];
			// print_r($wingArray);
			$builderObj->addFloorsByValue($wingArray);
		}
		for($i=0; $i<count($_POST['wings']);$i++){
			
			$wingsArray['p_id']		= $propertyId;
			$wingsArray['name'] 	= $_POST['wings'][$i];
			$wingsArray['totalFloor'] 	= $_POST['totalFloor'][$i];
			// print_r($wingsArray);
			// die();
			$builderObj->addWingsByValue($wingsArray);
			
		}
		//header("Location: " . SITE_URL . "/admin/properties");
	}
	else if(isset($_POST['unitSave'])) 
	{
		$unitArray['p_id']	= $propertyId;
		$unitArray['title'] = $_POST['title'];

		$builderObj->addUnitsByValue($unitArray);

		 header("Location: " . SITE_URL . "/admin/properties");

	}
	
	$statesListArray = $builderObj->getWing();
	$smarty->assign('statesListArray', $statesListArray);

	$smarty->assign('moduleName', 'Add properties');
	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/add-properties.tpl'); // its work 

//	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/test-properties.tpl');
	
?>