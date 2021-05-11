<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/contact.php");

 $contactObj = new Model_Contact();

if($_REQUEST['action']=="addContact")
{
	
    $contactArray['name'] = $_POST['name'];
    $contactArray['email'] = $_POST['email'];
    $contactArray['subject'] = $_POST['subject'];
    $contactArray['address'] = $_POST['address'];
 
	$result = $contactObj->addContactByValue($contactArray);
	
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



	

	                       
