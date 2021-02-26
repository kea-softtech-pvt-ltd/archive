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

  //  print_r($data);

    $amenitiesArray['name'] = $data->name;
    $amenitiesArray['font_awaesome'] = $data->font_awaesome;
    $amenitiesArray['status'] = 1;
    $amenitiesArray['created_at'] = date('Y/m/d H:i:s');

    if($amenitiesObj->addAmenitiesByValue($amenitiesArray)){
        echo json_encode(array('status'=>'sucess','message'=>'Amenities add successfully.'));
        //echo 'Amenities add successfully.';
    } else{
         echo json_encode(array('status'=>'error','message'=>'Amenities could not be created.'));
       // echo 'Amenities could not be created.';
    }
?>