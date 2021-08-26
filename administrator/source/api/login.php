<?php
    //require "vendor/autoload.php";
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, X-Auth-Token");

    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/vendor/autoload.php');
    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/login.php");

    use \Firebase\JWT\JWT;
    
    $loginObj = new Model_login();

    $data = json_decode(file_get_contents("php://input"));

    $loginArray['mobile'] = $data->mobile;
    $loginArray['password'] = $data->password;

    $res =$loginObj->getUserValueByDetailsUsernameAndPassword($data->mobile,$data->password);

    if($res){
        $secret_key = "123456789abcdefgh";
        $issuer_claim = $_SERVER['HTTP_HOST']; // this can be the servername
        $audience_claim = $_SERVER['HTTP_HOST'];
        $issuedat_claim = time(); // issued at
        $notbefore_claim = $issuedat_claim + 10; //not before in seconds
        $expire_claim = $issuedat_claim + 5000; // expire time in seconds
        $token = array(
            "iss" => $issuer_claim,
            "aud" => $audience_claim,
            "iat" => $issuedat_claim,
            "nbf" => $notbefore_claim,
            "exp" => $expire_claim,
            "data" => array(
                "id" => $res['admin_id'],
                "firstname" => $res['full_name'],
                "mobile" => $res['mobile'],
                "email" => $res['email']
        ));


        $jwt = JWT::encode($token, $secret_key);
        echo json_encode(
        array(
            "status"  => 1,
            "message" => "Successful login.",
            "token" => $jwt,
            "email" => $res['email'],
            "mobile" => $res['mobile'],
            "expireAt" => $expire_claim
        ));
       } else{
        echo json_encode(
            array(
                "status"  => 0,
                "message" => "Login Failed.",
            ));
    }
?>