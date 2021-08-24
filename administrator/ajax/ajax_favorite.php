<?php 
	 include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
     include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/properties.php");

 $contactObj = new Model_Property();

if($_REQUEST['action']=="addFavorite")
{

    $contactArray['p_id'] = $_POST['product_id'];
	$contactArray['user_id'] = $_SESSION['user_id'];
	$contactArray['user_name'] = $_SESSION['username'];
	
	$result1 = $contactObj->chekuser($_SESSION['user_id'],$_POST['product_id']);
	//$resultc = mysqli_query($conn, "select * from emp_login where email = '".$email."'");
    //if(mysqli_num_rows($resultc) == 0)

	if(!empty($result1)== 0){
		$result = $contactObj->addFavByValue($contactArray);
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
	
	// else
	
	// 	{
	
	// 		$response['status'] = '0'; 
	
	// 		$response['message'] = 'error'; 
	
	// 	}
		
	
}



?>



	

	                       
