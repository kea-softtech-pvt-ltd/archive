<?php
/**************************************************/
## Class Name - Model_Membership
/**************************************************/

class Model_Membership extends Database 
{	
	## Constructor
	function Model_Membership() {
		$this->membership = MEMBERSHIP;
		$this->Database();
	}	
	## Add transaction in database
	function addMembershipValue($Array) {
		$this->InsertData( $this->membership , $Array );		
		$insertId = mysql_insert_id();
		return $insertId;
	}
	
}
?>
