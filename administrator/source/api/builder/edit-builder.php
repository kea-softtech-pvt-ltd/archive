<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    include_once(realpath(dirname(dirname(dirname(dirname(dirname(__FILE__)))))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(dirname(dirname(__FILE__)))))) . "/common/model/builder.php");

    $builderObj = new Model_Builders();

    $data = json_decode(file_get_contents("php://input"));

    
    $builderArray['name'] = $data->name;
    $builderArray['avatar'] = $data->avatar;
    $builderArray['telephone'] = $data->telephone;
    $builderArray['landmark'] = $data->landmark;
    $builderArray['email'] = $data->email;
    $builderArray['password'] = $data->password;
    $builderArray['register_number'] = $data->register_number;
    $builderArray['id'] = $data->id;

    $res =$builderObj->editUserValueById($builderArray,$data->id);

    if($res){
        echo json_encode(array('status'=>'sucess','message'=>'Builder update successfully.'));
    } else{
        echo json_encode("Data could not be updated");
    }
?>