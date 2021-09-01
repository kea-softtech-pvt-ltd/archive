<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/vendor/autoload.php'); 
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/properties.php");
  
    use \Firebase\JWT\JWT;
    
    $proObj = new Model_Property();
    $data = json_decode(file_get_contents("php://input"));
    $jwt = $data->token;
    $secret_key = "1234567890seckeykeasofttech";
 
    if($jwt){
        try{
             $decoded = JWT::decode($jwt, $secret_key, array('HS256'));
        
            if($res =$proObj->getAllPropertiesAPI())
            {
              echo json_encode(array('data'=>$res,'status'=>'1','message'=>'View All Properties.'));
            } else
            {
              echo json_encode(array('status'=>'0','message'=>'Properties could not be created.'));
            }
    
        }
      catch (Exception $e){
        echo json_encode(array(
            "message" => "Access denied.",
            "error" => $e->getMessage()
        ));
      }
    }
    else{
      http_response_code(401);
      echo json_encode(array("message" => "Access denied."));
    }

  
?>