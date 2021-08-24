<?php 
	 include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/contact.php");

 $contactObj = new Model_Contact();


if($_REQUEST['action']=="addChat")
{
	$contactArray['message'] = $_POST['message'];
    $contactArray['reciver'] = $_POST['reciver'];
	$contactArray['p_id'] = $_POST['p_id'];
    $contactArray['sender'] = $_SESSION['user_id'];
 
	$result = $contactObj->addChatByValue($contactArray);
	
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

if($_REQUEST['action']=="addChatGroup")
{
	$contactArray['message'] = $_POST['message'];
	$contactArray['p_id'] = $_POST['id'];
    $contactArray['reciver'] = '0';
    $contactArray['sender'] = $_SESSION['user_id'];
 
	$result = $contactObj->addChatByValue($contactArray);
	
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



	

	                       
