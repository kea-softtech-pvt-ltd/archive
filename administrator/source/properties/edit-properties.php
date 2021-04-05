<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	$builderObj = new Model_Property();

	$builderuserArray = $builderObj->getUserNameByUserId($_REQUEST['id']);
	$addressPropertiesArray = $builderObj->getAddressPropertiesById($_REQUEST['id']);
	$floorsArray = $builderObj->getFloorsByUserId($_REQUEST['id']);
	$wingArray = $builderObj->getWingByUserId($_REQUEST['id']);
	$unitsArray = $builderObj->getUnitsByUserId($_REQUEST['id']);
	$otherArray = $builderObj->getOtherByUserId($_REQUEST['id']);

	//error_reporting(0);

	// print_r($unitsArray);
	// die();

	$smarty->assign('builderuserArray', $builderuserArray);
	$smarty->assign('floorsArray', $floorsArray);
	$smarty->assign('wingArray', $wingArray);
	$smarty->assign('unitsArray', $unitsArray);
	$smarty->assign('otherArray', $otherArray);
	// print_r(explode(',',$otherArray[0]['amenities']));die;
	if(!empty($otherArray)){
	$smarty->assign('amenities', explode(',',$otherArray[0]['amenities']));
	$smarty->assign('neighbourhoods',explode(',',$otherArray[0]['neighbourhoods']));
	}
	$smarty->assign('addressPropertiesArray', $addressPropertiesArray);
	//print_r($_REQUEST);
	
	if(isset($_POST['propetyEdit'])) {

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

		$builderObj = new Model_Property();
		$propertyArray['id'] = $_POST['id'];
		$propertyArray['name'] = $_POST['name'];
		$propertyArray['builder_name'] = $_POST['builder_name'];
		$propertyArray['started_date'] = $_POST['started_date'];
		$propertyArray['possession_date'] = $_POST['possession_date'];
		$propertyArray['rera_number'] = $_POST['rera_number'];
		$propertyArray['address'] = $_POST['address'];
		$propertyArray['specification'] = $_POST['specification'];	
		$propertyArray['images'] = $imagelist;
		$propertyArray['status'] = 1;
		$propertyArray['created_date'] = date('Y/m/d H:i:s');
		$propertyArray['modified_date'] = date('Y/m/d H:i:s');
		// $propertyArray['wing'] = implode(',',$_POST['wing']) ;
		// $propertyArray['floor'] = implode(',',$_POST['floor']) ;

		$propertyId = $builderObj->editUserValueById($propertyArray,$_POST['id']);
		// echo '<pre>';
		// print_r($_POST);die;
		for($i=0; $i<count($_POST['wing']);$i++){

			$wingArray['p_id'] 		= $_POST['id'];
			$wingArray['wing'] 		= $_POST['wing'][$i];
			$wingArray['floor'] 	= $_POST['floor'][$i];
			$wingArray['flat'] 		= $_POST['flat'][$i];
			$wingArray['specality'] = $_POST['specality'][$i];
			// print_r($wingArray);
			// $builderObj->addFloorsByValue($wingArray);
			if(empty($_POST['f_id'][$i])){
				$builderObj->addFloorsByValue($wingArray);
			}else{
				$propertyId = $builderObj->editFloorValueById($wingArray,$_POST['f_id'][$i]);
			}
			
		}
		for($i=0; $i<count($_POST['wing']);$i++){

			$wingsArray['p_id'] 		= $_POST['id'];
			$wingsArray['name'] 		= $_POST['wings'][$i];

			
			if(empty($_POST['w_id'][$i])){
				$builderObj->addWingsByValue($wingsArray);
			}else{
				$propertyId = $builderObj->editWingValueById($wingsArray,$_POST['w_id'][$i]);
			}
			
		}

		header("Location: " . SITE_URL . "/admin/properties");
	}

	$amenitiesListArray = $builderObj->getAmenities();
	$smarty->assign('amenitiesListArray', $amenitiesListArray);

	$builderListArray = $builderObj->getBuilders();
	$smarty->assign('builderListArray', $builderListArray);

	$unitsTypeListArray = $builderObj->getUnitsType();
	$smarty->assign('unitsTypeListArray', $unitsTypeListArray);

	$proTypeListArray = $builderObj->getProType();
	$smarty->assign('proTypeListArray', $proTypeListArray);
	
	$neighbourhoodListArray = $builderObj->getNeighbourhoods();
	$smarty->assign('neighbourhoodListArray', $neighbourhoodListArray);

	$statesListArray = $builderObj->getWing();
	$smarty->assign('statesListArray', $statesListArray);

	$smarty->assign('moduleName', 'Add properties');
	$smarty->display(ADMIN_TEMPLATEDIR . '/properties/edit-properties.tpl');
	
?>