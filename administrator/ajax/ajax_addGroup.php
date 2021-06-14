<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/properties.php");

 $contactObj = new Model_Property();

if($_REQUEST['action']=="addGroups")
{

    $contactArray['p_id'] = $_POST['pro_id'];
	$contactArray['sender'] = $_SESSION['user_id'];
	$contactArray['reciver'] = $_POST['pro_uid'];
	
	$result1 = $contactObj->chekuserGroup($_SESSION['user_id'],$_POST['pro_uid']);
	if(!empty($result1)== 0){
		
	$result = $contactObj->addGroup($contactArray);

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
}

if($_REQUEST['action']=="sendNotification")
{

    $contactArray['p_id'] = $_POST['pro_id'];
	$contactArray['sender'] = $_SESSION['user_id'];
	$contactArray['reciver'] = $_POST['pro_uid'];
	
	
	$result = $contactObj->sendNoti($contactArray);
	
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



	

	                       
