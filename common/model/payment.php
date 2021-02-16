<?php
/**************************************************/
## Class Name - Model_Users
/**************************************************/

class Model_Payment extends Database 
{	
	## Constructor
	function Model_Payment() {
		$this->payment = PAYMENT;
		$this->Database();
	}	
	
	## Get transaction details by tranx id
	function getDetailsByTransactionId($id) {
		$fields=array();	
		$tables=array($this->payment);
		$where=array("txn_id='".$id . "'");		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}

	## Add transaction in database
	function addTransactionByValue($Array) {
		//print_r($Array); die;
		$this->InsertData( $this->payment , $Array );		
		$insertId = mysql_insert_id();
		return $insertId;
	}	
	
	
	## Update transaction status with multiple ids
	function updateTransactionStatus($ids, $status) {
		$sql = "UPDATE ".$this->payment." SET payment_status='".$status."' WHERE txn_id IN (".$ids.")";
		$result1= $this->ExecuteQuery($sql);	 
	}
	
}
?>
