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
    $result = $builderObj->addPropertiesByValue($propertyArray);
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
    $result = $builderObj->addPropertieAddressByValue($propertyArray);
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

?>



	

	                       
