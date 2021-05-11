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
	function addContactByValue($Array) {
		$this->InsertData( $this->contact , $Array );		
		$insertId = $this->getLatestRecordId();
		return $insertId;
	}
	   ## Get all Properties details
	   function getAllContact($search='', $limit='',$offset='') {
		$fields=array();
	   	$tables=array($this->contact);
	   	$where = array($this->contact.".status = '1'");

		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
		$result= $this->FetchAll($result1); 
		return $result;		
	}
	
}
?>
