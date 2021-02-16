<?php
	include_once(realpath(dirname('../../../../../')) . '/includefiles.php');
	include_once(realpath(dirname('../../../../../')) . '/common/model/donation.php');
	include_once(realpath(dirname('../../../../../')) . '/common/model/payment.php');

	$donationObj = new Model_Donation();
	$paymentObj = new Model_Payment();

	
	
	//Store transaction information from PayPal
	$payment = array();
	print_r($_GET);
	$payment['donation_number'] = $_GET['item_number']; 
	$payment['txn_id'] = $_GET['tx'];
	$payment['payment_gross'] = $_GET['amt'];
	$payment['currency_code'] = $_GET['cc'];
	$payment['payment_status'] = $_GET['st'];

	$donationData= $donationObj->getDetailsByDonationId($payment['donation_number']);
	

	if(!empty($txn_id) && $payment_gross == $donationData['amount']){

	    //Check if payment data exists with the same TXN ID.
	    $prevPaymentResult = $paymentObj->getDetailsByTransactionId($txn_id);

	    if(count($prevPaymentResult) > 0){
	        $last_insert_id = $prevPaymentResult['payment_id'];
	    }else{
	       $last_insert_id = $paymentObj->addTransactionByValue($payment);
	    }
		$payResult = true;

	}else{
		$payResult = false;
	}
	
	$smarty->assign('moduleName', 'notify payment');
	$smarty->assign('paymentResult', $payResult);
	$smarty->display(TEMPLATEDIR . '/modules/donation/payment-notify.tpl');
?>