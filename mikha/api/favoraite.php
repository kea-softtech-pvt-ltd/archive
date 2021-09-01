<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/vendor/autoload.php'); 
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(__FILE__)))) . "/common/model/properties.php");
    include_once(realpath(dirname(dirname(__FILE__))) . '/api/commonApi.php');
    
    use \Firebase\JWT\JWT;
    $favObj = new Model_Property();
    $data = json_decode(file_get_contents("php://input"));
    $jwt = $data->token;

    if($jwt){
        try{
             $decoded = JWT::decode($jwt, $secret_key, array('HS256'));
             //print_r($decoded->data->id);die;
            // print_r($decoded->data->firstname);die;
             $favArray['user_id'] = $decoded->data->id;
             $favArray['p_id'] = $data->p_id;
             $favArray['user_name'] = $decoded->data->firstname;
             
             $result1 = $favObj->chekuser($decoded->data->id,$data->p_id);
            if(!empty($result1)== 0){
            if($favObj->addFavByValue($favArray))
            {
              echo json_encode(array('status'=>'1','message'=>'Favorait properti add successfully.'));
            } else
            {
              echo json_encode(array('status'=>'0','message'=>'Favorait properti could not be created.'));
            }
        }
        else{
            echo json_encode(array('status'=>'0','message'=>'you are already like this property'));
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