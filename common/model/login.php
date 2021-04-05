<?php
class Model_login extends Database 
{		
    public function __construct(){
        $this->admin = ADMIN;
        parent::__construct();
    }	
	## Check Admin login
	function getUserValueByDetailsUsernameAndPassword($username, $password) {
		$fields=array();	
		$tables=array($this->admin);
		$where=array("(mobile='".$username."'  AND  password='".md5($password)."')");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}	
	function validation($username, $password) { 
		$fields=array('admin_id');	
		$tables=array($this->admin);
		$where=array("(mobile='".$username."'  AND  password='".md5($password)."')");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
	function validationBuilder($username, $password) { 
		$fields=array('id');	
		$tables=array('builders');
		$where=array("(email='".$username."'  AND  password='".$password."')");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
	function getBuilderValueByDetailsBuildernameAndPassword($username, $password) {
		$fields=array();	
		$tables=array('builders');
		$where=array("(email='".$username."'  AND  password='".$password."')");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}	
}
?>
