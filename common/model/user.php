<?php
class Model_User extends Database 
{	
	public function __construct(){
		$this->user_login = USER_LOGIN;
		parent::__construct();

	}	
	 
	## Add user in database
	function addUserByValue($Array) {
		$this->InsertData( $this->user_login , $Array );		
		$insertId = $this->getLatestRecordId();
		return $insertId;
	}
	   ## Get all user details
	   function getAllContact($search='', $limit='',$offset='') {
		$fields=array();
	   	$tables=array($this->user_login);
	   	$where = array($this->user_login.".status = '1'");

		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
		$result= $this->FetchAll($result1); 
		return $result;		
	}
	
}
?>
