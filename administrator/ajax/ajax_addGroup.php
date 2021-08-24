<?php 
	 include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/properties.php");

 $contactObj = new Model_Property();

if($_REQUEST['action']=="addGroups")
{

    $contactArray['p_id'] = $_POST['pro_id'];
	$contactArray['sender'] = $_SESSION['user_id'];
	$contactArray['reciver'] = $_POST['pro_uid'];

	$result1 = $contactObj->chekuserGroup($_SESSION['user_id'],$_POST['pro_uid'],$_POST['pro_id']);
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

if($_REQUEST['action']=="sendRequest")
{

	//$array = explode(',',$_POST['pro_uid']);
	// print_r($_POST['pro_uid']);
	// die;
	for($i=0;$i<count($_POST['pro_uid']);$i++){
		// $contactArray['p_id'] = $_POST['pro_id'];
		// $contactArray['sender'] = '01';
		// $contactArray['reciver'] = $_POST['pro_uid'][$i];
		// $contactArray['requestGroup'] = '0';
		// $contactArray['status'] = '0';
		// $contactArray['admin_noti'] = '1';


		$contactArray['p_id'] = $_POST['pro_id'];
		$contactArray['user'] = $_POST['pro_uid'][$i];
		// $contactArray['requestGroup'] = '0';
		// $contactArray['status'] = '0';
		// $contactArray['admin_noti'] = '1';

		
		$result1 = $contactObj->chekparchesRequest($_POST['pro_uid'],$_POST['pro_id']);
		if(!empty($result1)== 0){
		
		$result = $contactObj->sendNotiAdmin($contactArray);
		}
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

?>



	

	                       
