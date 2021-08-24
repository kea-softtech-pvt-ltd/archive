<?php
/**************************************************/
## Class Name - Model_Contact
/**************************************************/

class Model_Contact extends Database 
{	
	## Constructor
	// function Model_Contact() {
	// 	$this->contact_us = CONTACT_US;
	// 	$this->Database();
	// }	
	// ## Add transaction in database
	// function addContact($Array) {
	// 	$this->InsertData( $this->contact_us , $Array );		
	// 	$insertId = mysqli_insert_id();
	// 	return $insertId;
	// }

	public function __construct(){
		$this->contact = CONTACT;
		parent::__construct();

	}	
	 
	## Add Properties in database
	function addContactByValue($Array) 
	{
		$this->InsertData( $this->contact , $Array );		
		$insertId = $this->getLatestRecordId();
		return $insertId;
	}
	   ## Get all Properties details
	   function getAllContact($search='', $limit='',$offset='') 
	   {
		$fields=array();
	   	$tables=array($this->contact);
	   	$where = array($this->contact.".status = '1'");

		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
		$result= $this->FetchAll($result1); 
		return $result;		
	}

	 ## Get all USER
	 function getAllUser($search='', $limit='',$offset='') 
	 {
	  	$fields=array('user_login.*');
		$tables=array('user_login');
		$where = array("status = '1'");	

	  $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
	  $result= $this->FetchAll($result1); 
	  return $result;		
  }
   ## Get all USER limit
   function getAllUserLimit($search='', $limit='',$offset='') 
   {
		$fields=array('user_login.*');
	  $tables=array('user_login');
	  $where = array("status = '1'");	

	$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit=3,0,0);
	$result= $this->FetchAll($result1); 
	return $result;		
}
#delete users
function deleteUserValueById($array, $Id){
	$this->UpdateData('user_login',$array,"user_id",$Id,0);
  //  echo $Id; where
 }


		// ## Add favroite in database
		// function addFavByValue($Array) 
		// {
		// 	$this->InsertData('favorite' , $Array );		
		// 	$insertId = $this->getLatestRecordId();
		// 	return $insertId;
		// }

	## Add Properties in database
	function addChatByValue($Array) 
	{
		$this->InsertData('user_chat' , $Array );		
		$insertId = $this->getLatestRecordId();
		return $insertId;
	}

	
	
}
?>
