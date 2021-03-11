<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/properties.php");

     $builderObj = new Model_Property();
if($_REQUEST['action']=="addProperties")
{

	
    $propertyArray['name'] = $_POST['name'];
    $propertyArray['builder_name'] = $_POST['builder_name'];
    $propertyArray['started_date'] = $_POST['started_date'];
    $propertyArray['possession_date'] = $_POST['possession_date'];
    $propertyArray['rera_number'] = $_POST['rera_number'];

	if(isset($_POST['propertyID']) && !empty($_POST['propertyID'])){
		$builderObj->editUserValueById($propertyArray,$_POST['propertyID']);
		$result = $_POST['propertyID'];
	}else{
		$result = $builderObj->addPropertiesByValue($propertyArray);
	}

    
	if($result)

	{	

		$response['status'] = '1'; 

		$response['message'] = 'success'; 

		$response['propertyID'] = $result; 

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error'; 

		$response['propertyID'] = '';

	}
	echo json_encode($response);
}

if($_REQUEST['action']=="addPropertieAddress")
{
    $propertyArray['address'] = $_POST['address'];
    $propertyArray['description'] = $_POST['description'];
    $propertyArray['p_id'] = $_POST['propertyID'];
	// print_r($_POST);die;
	if(isset($_POST['propertyID']) && !empty($_POST['propertyID']) && isset($_POST['addressID']) && !empty($_POST['addressID'])){
		$builderObj->updatePropertieAddressByValue($propertyArray,$_POST['addressID']);
		$result = $_POST['addressID'];
	}else{
		$result = $builderObj->addPropertieAddressByValue($propertyArray);
	}

	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';
		$response['addressID'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['addressID'] = $result;

	}
	echo json_encode($response);
}
if($_REQUEST['action']=="addWing")
{

	$result = array();
	for($i=0; $i<count($_POST['wings']);$i++)
	{
	$propertyArray['p_id'] = $_POST['propertyID'];
    $propertyArray['name'] = $_POST['wings'][$i];
	$propertyArray['totalFloor'] = $_POST['totalFloor'][$i];

	if(isset($_POST['propertyID']) && !empty($_POST['propertyID']) && !empty($_POST['wingID'][$i])){
		$builderObj->editPropertieWingsById($propertyArray,$_POST['wingID'][$i]);
		array_push($result,$_POST['wingID'][$i]);
	}else{
		$wingID = $builderObj->addWingsByValue($propertyArray);
		array_push($result,$wingID);
	}

    
	}
	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';
		$response['wingID'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['wingID'] = $result;

	}
	echo json_encode($response);
}
if($_REQUEST['action']=="addFloor")
{
	$result = array();
	for($i=0; $i<count($_POST['floor']);$i++)
	{
	$propertyArray['p_id'] = $_POST['propertyID'];
	$propertyArray['wing'] = $_POST['wing'][$i];
    $propertyArray['flat'] = $_POST['flat'][$i];
	$propertyArray['floor'] = $_POST['floor'][$i];
	$propertyArray['specality'] = $_POST['specality'][$i];
    

	if(isset($_POST['propertyID']) && !empty($_POST['propertyID']) && !empty($_POST['floorID'][$i])){
		$builderObj->editFloorValueById($propertyArray,$_POST['floorID'][$i]);
		array_push($result,$_POST['floorID'][$i]);
	}else{
		$floorID = $builderObj->addFloorsByValue($propertyArray);
		array_push($result,$floorID);
	}

	}
	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';
		$response['floorID'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['floorID'] = $result;

	}
	echo json_encode($response);
}
if($_REQUEST['action']=="addUnits")
{
	$result = array();
	for($i=0; $i<count($_POST['name']);$i++)
	{
	$propertyArray['floor'] = $_POST['unitfloorsid'][$i];
	$propertyArray['wing'] = $_POST['unitwingsid'][$i];
	$propertyArray['p_id'] = $_POST['propertyID'];
    $propertyArray['title'] = $_POST['title'][$i];
	$propertyArray['type'] = $_POST['name'][$i];
	$propertyArray['size'] = $_POST['size'][$i];
	$propertyArray['price'] = $_POST['price'][$i];
	$propertyArray['carpet_area'] = $_POST['carpet_area'][$i];
	$propertyArray['built_area'] = $_POST['built_area'][$i];
	
	if(isset($_POST['propertyID']) && !empty($_POST['propertyID']) && !empty($_POST['unitsID'][$i])){
		$builderObj->editUnitsValueById($propertyArray,$_POST['unitsID'][$i]);
		array_push($result,$_POST['unitsID'][$i]);
	}else{
		$unitsID = $builderObj->addUnitsByValue($propertyArray);
		array_push($result,$unitsID[$i]);
	}
    
	}
	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';

		$response['unitsID'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['unitsID'] = $result;

	}
	echo json_encode($response);
}



if($_REQUEST['action']=="getWings")
{
    $result = $builderObj->getWingBypropertyId($_POST['propertyID']);

	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';
		$response['result'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['result'] = $result;

	}
	echo json_encode($response);
}


if($_REQUEST['action']=="getFloorWings")
{
    $result = $builderObj->getFloorWingBypropertyId($_POST['propertyID']);

	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';
		$response['result'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['result'] = $result;

	}
	echo json_encode($response);
}


if($_REQUEST['action']=="getFloors")
{
    $result = $builderObj->getFloorBypropertyId($_POST['propertyID'],$_POST['wingsID']);

	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';
		$response['result'] = $result;

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';
		$response['result'] = $result;

	}
	echo json_encode($response);
}
?>



	

	                       
