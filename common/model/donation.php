<?php
/**************************************************/
## Class Name - Model_Users
/**************************************************/

class Model_Donation extends Database 
{	
	## Constructor
	function Model_Donation() {
		$this->donation = DONATION;
		$this->Database();
	}	
	
	## Get transaction details by tranx id
	function getDetailsByDonationId($id) {
		$fields=array();	
		$tables=array($this->donation);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}

	## Add transaction in database
	function addDonationByValue($Array) {
		$this->InsertData( $this->donation , $Array );		
		$insertId = mysql_insert_id();
		return $insertId;
	}	
	
	
	## Update transaction status with multiple ids
	function updateDonationStatus($ids, $status) {
		$sql = "UPDATE ".$this->donation." SET status='".$status."' WHERE id IN (".$ids.")";
		$result1= $this->ExecuteQuery($sql);	 
	}
	
}
?>
