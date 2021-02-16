<?php
	include_once(realpath(dirname('../../../../../')) . '/includefiles.php');
	include_once(realpath(dirname('../../../../../')) . '/common/model/donation.php');
	include_once(realpath(dirname('../../../../../')) . '/common/model/payment.php');

	$donationObj = new Model_Donation();
	$paymentObj = new Model_Payment();

	
	
	//Store transaction information from PayPal
	$payment = array();
	$payment['donation_number'] = $_GET['item_number']; 
	$payment['txn_id'] = $_GET['tx'];
	$payment['payment_gross'] = $_GET['amt'];
	$payment['currency_code'] = $_GET['cc'];
	$payment['payment_status'] = $_GET['st'];

	$donationData= $donationObj->getDetailsByDonationId($payment['donation_number']);
	

	if(!empty($payment['txn_id']) && $payment['payment_gross'] == $donationData['amount']){

	    //Check if payment data exists with the same TXN ID.
	    $prevPaymentResult = $paymentObj->getDetailsByTransactionId($payment['txn_id']);

	    if(count($prevPaymentResult) > 0){
	        $last_insert_id = $prevPaymentResult['payment_id'];
	    }else{
	       $last_insert_id = $paymentObj->addTransactionByValue($payment);
	    }
		$payResult = 1;
		$donationObj->updateDonationStatus($donationData['id'], 1);

		$fromname='panchasheel charitable trust'; 
				
		$fromaddress='donation@panchasheelcharitrust.org';
		$to=$donationData['email'];
		$headers = "MIME-Version: 1.0\n";
		$headers .= "Content-type: text/html; charset=utf-8\n";
		$headers .= "From: '/panchasheelcharitrust.org'  \n";
		$subject = "Thanks for helping us !!!  \n";
		$message = "We have received amount of $". $payment['payment_gross']. '. Our executive will help you with donation receipt shortly.';
		
		mail($to, $subject, $message, $headers);
	} else {
		$payResult = 0;
	}
	
	$smarty->assign('moduleName', 'success payment');
	$smarty->assign('payResult', $payResult);
	$smarty->display(TEMPLATEDIR . '/modules/donation/payment-success.tpl');
?>