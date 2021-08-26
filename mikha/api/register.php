<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");


    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/user.php");

    $userObj = new Model_User();

    $data = json_decode(file_get_contents("php://input"));

   // $userArray['name'] = $data->name;
    $userArray['username'] = $data->username;
    $userArray['email'] = $data->email;
    $userArray['password'] = $data->password;
    $userArray['image'] = $data->image;
    $userArray['otp'] = rand(999999,6);
    
    if($userObj->addUserByValue($userArray)){
        echo json_encode(array('status'=>'sucess','message'=>'User register successfully.'));
    } else{
         echo json_encode(array('status'=>'error','message'=>'User could not be created.'));
    }
?>