<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, X-Auth-Token");

    
    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
    include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/login.php");


    $loginObj = new Model_login();

    $data = json_decode(file_get_contents("php://input"));

    $loginArray['mobile'] = $data->mobile;
    $loginArray['password'] = $data->password;

    $res =$loginObj->getUserValueByDetailsUsernameAndPassword($data->mobile,$data->password);

    // if($num > 0){
    if($res > 0){
      //  $row = $loginObj->fetch(PDO::FETCH_ASSOC);
        // $id = $row['admin_id'];
        // $firstname = $row['full_name'];
        // $password2 = $row['password'];

        if(password_verify($password, $password2))
        {
            $secret_key = "YOUR_SECRET_KEY";
            $issuer_claim = "THE_ISSUER"; // this can be the servername
            $audience_claim = "THE_AUDIENCE";
            $issuedat_claim = time(); // issued at
            $notbefore_claim = $issuedat_claim + 10; //not before in seconds
            $expire_claim = $issuedat_claim + 60; // expire time in seconds
            $token = array(
                "iss" => $issuer_claim,
                "aud" => $audience_claim,
                "iat" => $issuedat_claim,
                "nbf" => $notbefore_claim,
                "exp" => $expire_claim,
                "data" => array(
                    "admin_id" => $id,
                    "full_name" => $firstname,
                    "mobile" => $mobile
            ));
    
            http_response_code(200);
    
            $jwt = JWT::encode($token, $secret_key);
            echo json_encode(
                array(
                    "message" => "Successful login.",
                    "jwt" => $jwt,
                    "mobile" => $mobile,
                    "expireAt" => $expire_claim
                ));
        }

        echo json_encode(array('status'=>'sucess','message'=>'Login successfully.'));
       } else{
        echo json_encode("Data could not be updated");
    }
?>