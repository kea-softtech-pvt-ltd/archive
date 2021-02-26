<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    //$amenitiesuserArray = $amenitiesObj->getUserNameByUserId($_REQUEST['id']);

	//$smarty->assign('amenitiesuserArray', $amenitiesuserArray);

    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

    $amenitiesObj = new Model_Amenities();

    $data = json_decode(file_get_contents("php://input"));

    $amenitiesArray['name'] = $data->name;
  //  $amenitiesArray['id'] = $_POST['id'];
    $amenitiesArray['id'] = $data->id;

    $res =$amenitiesObj->editUserValueById($amenitiesArray,$data->id);

    // echo $res;
    // var_dump($res);
    if($res){
          
        echo json_encode("Amenities data updated.");
    } else{
        echo json_encode("Data could not be updated");
    }
?>