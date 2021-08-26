<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    

    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");

    $amenitiesObj = new Model_Amenities();

    $data = json_decode(file_get_contents("php://input"));
    $amenitiesArray['id'] = $data->id;
    $amenitiesArray['status'] = 0;

    $res =$amenitiesObj->deleteUserValueById($amenitiesArray,$data->id);


    if($res){
        echo json_encode(array('status'=>'sucess','message'=>'Amenities data deleted.'));
    } else{
        echo json_encode("Data could not be updated");
    }
?>