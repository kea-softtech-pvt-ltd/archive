<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/builder.php");

	// include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '../includefiles.php');
	 //include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "../common/model/builder.php");

//echo realpath(dirname(dirname(dirname(dirname(__FILE__))))). '/includefiles.php';

//die;
//exit;
$builderObj = new Model_Builders();

if($_REQUEST['action']=="getModels")

{	

	$s_id = $_POST['s_id'];

	//$result = $builderObj->getModels($state);
	$result = $builderObj->getModels($s_id);
	

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

		$response['result'] = '';

	}
	echo json_encode($response);
}

?>



	

	                       
