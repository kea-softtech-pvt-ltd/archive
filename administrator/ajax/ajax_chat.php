<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/contact.php");

 $contactObj = new Model_Contact();


if($_REQUEST['action']=="addChat")
{
	$contactArray['message'] = $_POST['message'];
    $contactArray['reciver'] = $_POST['reciver'];
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



	

	                       
