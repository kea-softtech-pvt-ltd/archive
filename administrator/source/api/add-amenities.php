<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

  include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/vendor/autoload.php'); 
  include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/amenities.php");
  
  use \Firebase\JWT\JWT;
  $amenitiesObj = new Model_Amenities();

    $data = json_decode(file_get_contents("php://input"));
    $jwt = $data->token;
    $secret_key = "123456789abcdefgh";
    // if jwt is not empty
    if($jwt){
    
      // if decode succeed, show user details
      try {
          // decode jwt
          $decoded = JWT::decode($jwt, $secret_key, array('HS256'));

          $amenitiesArray['name'] = $data->name;
          $amenitiesArray['font_awaesome'] = $data->font_awaesome;
          $amenitiesArray['status'] = 1;
          $amenitiesArray['created_at'] = date('Y/m/d H:i:s');

          if($amenitiesObj->addAmenitiesByValue($amenitiesArray)){
              echo json_encode(array('status'=>'1','message'=>'Amenities add successfully.'));
              //echo 'Amenities add successfully.';
          } else{
              echo json_encode(array('status'=>'0','message'=>'Amenities could not be created.'));
            // echo 'Amenities could not be created.';
          }

      }
            // if decode fails, it means jwt is invalid
      catch (Exception $e){
      
        // tell the user access denied  & show error message
        echo json_encode(array(
            "message" => "Access denied.",
            "error" => $e->getMessage()
        ));
      }

      // catch will be here
    }
    // show error message if jwt is empty
    else{
    
      // set response code
      http_response_code(401);

      // tell the user access denied
      echo json_encode(array("message" => "Access denied."));
    }

  
?>