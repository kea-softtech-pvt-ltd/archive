<?php
/**************************************************/
## Class Name - Model_Contact
/**************************************************/

class Model_Contact extends Database 
{	
	## Constructor
	function Model_Contact() {
		$this->contact_us = CONTACT_US;
		$this->Database();
	}	
	## Add transaction in database
	function addContact($Array) {
		$this->InsertData( $this->contact_us , $Array );		
		$insertId = mysqli_insert_id();
		return $insertId;
	}
	
}
?>
