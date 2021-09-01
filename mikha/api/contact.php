<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/vendor/autoload.php'); 
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/contact.php");
    include_once(realpath(dirname(dirname(__FILE__))) . '/api/commonApi.php');

    use \Firebase\JWT\JWT;

    $contactObj = new Model_Contact();

    $data = json_decode(file_get_contents("php://input"));
    $jwt = $data->token;

    // if jwt is not empty
    if($jwt){
      // if decode succeed, show user details
      try {
          // decode jwt
            $decoded = JWT::decode($jwt, $secret_key, array('HS256'));
             $contactArray['name'] = $data->name;
             $contactArray['email'] = $data->email;
             $contactArray['subject'] = $data->subject;
             $contactArray['address'] = $data->address;

          if($contactObj->addContactByValue($contactArray)){
              echo json_encode(array('status'=>'1','message'=>'Contact details add successfully.'));
          } else{
              echo json_encode(array('status'=>'0','message'=>'Contact could not be created.'));
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
    
      // set response code
      http_response_code(401);
      // tell the user access denied
      echo json_encode(array("message" => "Access denied."));
    }

  
?>