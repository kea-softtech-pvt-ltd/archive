<?php 
	 include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/user.php");


	//  include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/archive/includefiles.php');
    //  include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/archive/common/model/user.php");
 $userObj = new Model_User();

 if (isset($_FILES["image"]["name"]) && $_FILES["image"]["name"] != '')  
 {
	 
	 $filename = time().'_'.$_FILES["image"]["name"];
	 $tempname = $_FILES["image"]["tmp_name"];
	 $folder = '../../mikha/img/'.$filename;
	 $res = move_uploaded_file($tempname,$folder);
	 $_POST['image'] = $filename;
 }
if($_REQUEST['action']=="signup")
{
	
    $userArray['password'] = $_POST['password'];
    $userArray['email'] = $_POST['email'];
	$userArray['username'] = $_POST['user_name'];
	$userArray['image'] = $_POST['image'];
	$userArray['otp'] = rand(999999,6);
 
	$result = $userObj->addUserByValue($userArray);
	
	if($result > 0)

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



	

	                       
