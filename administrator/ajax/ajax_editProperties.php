<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/properties.php");

$builderObj = new Model_Property();
if($_REQUEST['action']=="addPropertiesUpdate")
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
		$result = $builderObj->editUserValueById($propertyArray);
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

if($_REQUEST['action']=="updatePropertieAddress")
{
    $propertyArray['address'] = $_POST['address'];
    $propertyArray['description'] = $_POST['description'];
    $propertyArray['a_id'] = $_POST['propertyID'];
	$result = $builderObj->updatePropertieAddressByValue($propertyArray,$_POST['propertyID']);


	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';

	}
	echo json_encode($response);
}
if($_REQUEST['action']=="updateWing")
{

	for($i=0; $i<count($_POST['wings']);$i++)
	{
	$propertyArray['w_id'] = $_POST['w_id'];
    $propertyArray['name'] = $_POST['wings'][$i];
	$propertyArray['totalFloor'] = $_POST['totalFloor'][$i];
    $result = $builderObj->editWingValueById($propertyArray,$_POST['w_id']);
	}
	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';

	}
	echo json_encode($response);
}
if($_REQUEST['action']=="addFloor")
{
	for($i=0; $i<count($_POST['floor']);$i++)
	{
	$propertyArray['p_id'] = $_POST['propertyID'];
	$propertyArray['wing'] = $_POST['wing'][$i];
    $propertyArray['flat'] = $_POST['flat'][$i];
	$propertyArray['floor'] = $_POST['floor'][$i];
	$propertyArray['specality'] = $_POST['specality'][$i];
    $result = $builderObj->addFloorsByValue($propertyArray);
	}
	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';

	}
	echo json_encode($response);
}
if($_REQUEST['action']=="addUnits")
{
	for($i=0; $i<count($_POST['name']);$i++)
	{
	$propertyArray['p_id'] = $_POST['propertyID'];
    $propertyArray['title'] = $_POST['title'][$i];
	$propertyArray['type'] = $_POST['name'][$i];
	$propertyArray['size'] = $_POST['size'][$i];
	$propertyArray['price'] = $_POST['price'][$i];
	$propertyArray['carpet_area'] = $_POST['carpet_area'][$i];
	$propertyArray['built_area'] = $_POST['built_area'][$i];
    $result = $builderObj->addUnitsByValue($propertyArray);
	}
	if($result)
	{	
		$response['status'] = '1'; 

		$response['message'] = 'success';

	}

	else

	{

		$response['status'] = '0'; 

		$response['message'] = 'error';

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
?>



	

	                       
