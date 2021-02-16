<?php
class Model_builderlogin extends Database 
{		
    public function __construct(){
        $this->builders = BUILDERS;
        parent::__construct();
    }	
	## Check Admin login
	function getUserValueByDetailsUsernameAndPassword($username, $password) {
		$fields=array();	
		$tables=array($this->admin);
		$where=array("(email='".$username."'  AND  password='".md5($password)."')");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}	
	function validation($username, $password) { 
		$fields=array('id');	
		$tables=array($this->admin);
		$where=array("(email='".$username."'  AND  password='".md5($password)."')");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}	
	
}
?>
