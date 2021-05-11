<?php 
	 include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/user.php");

 $userObj = new Model_User();

if($_REQUEST['action']=="signup")
{
	
    $userArray['password'] = $_POST['password'];
    $userArray['email'] = $_POST['email'];
	$userArray['otp'] = rand(999999,6);
 
	$result = $userObj->addUserByValue($userArray);
	
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



	

	                       
