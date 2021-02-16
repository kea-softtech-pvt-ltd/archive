<?php
	include_once(realpath(dirname('../../../../../')) . '/includefiles.php');
	include_once(realpath(dirname('../../../../../')) . '/common/model/donation.php');

	$donationObj = new Model_Donation();

	if($_POST['email'] != '' && $_POST['amount'] != ''){
		$payPalInfo = array();
		$donationInfo = array();

		$payPalInfo['paypal_id'] = DONATION_ID; //Test PayPal API URL
		$payPalInfo['paypal_url'] = PAYPAL_URL; //Business Email
		$payPalInfo['cancel_url'] = SITE_URL . "cancel";
		$payPalInfo['success_url'] = SITE_URL . "success";
		$payPalInfo['notify_url'] = SITE_URL . "notify";

		$donationInfo['name'] = $_POST['name'];
		$donationInfo['email'] = $_POST['email'];
		$donationInfo['phone'] = $_POST['phone'];
		$donationInfo['address'] = $_POST['address'];
		$donationInfo['amount'] = $_POST['amount'];
		$donationInfo['status'] = 0;
		$donationInfo['id'] = $donationObj->addDonationByValue($donationInfo);

		$smarty->assign("donationInfo", $donationInfo);
		$smarty->assign('payPalInfo', $payPalInfo);
		
	}
	else {
		header("Location: " . SITE_URL . "donation" ); 
	}
	


	$smarty->assign('moduleName', 'make payment');
	$smarty->display(TEMPLATEDIR . '/modules/donation/make-payment.tpl');
?>