<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');
print_r($_REQUEST);
include_once(realpath(dirname('../../../../../')) . '/common/model/contact.php');

$memberObj = new Model_Contact();
$success = 0;

if(isset($_POST['name']) && $_POST['name'] != '') {
	$memberInfo = array();

	$memberInfo['name'] = $_POST['name'];
	$memberInfo['email'] = $_POST['emal'];
	$memberInfo['phone_no'] = $_POST['mobile'];
	$memberInfo['Query'] = $_POST['query'];
	$memberInfo['id'] = $memberObj->addContact($memberInfo);
	
	$name=$_POST['name'];
	$contact=$_POST['mobile'];
	$email=$_POST['emal'];
	$msg=$_POST['query'];
	$fromaddress=$email;
	$fromname=$name;
	$em=CONTACT_ID;
	$to=$em;
	$headers = "MIME-Version: 1.0\n";
	$headers .= "Content-type: text/html; charset=utf-8\n";
	$headers .= "From: '/panchasheelcharitrust.org' <$email> \n";
	$subject = $name." is trying to contact";
	$message = "Following are the details of new user<br/> ";
	$message .= "Name:&nbsp;&nbsp;$name<br/>";
	$message .= "Contact No:&nbsp;&nbsp;$contact<br/>";
	$message .= "Email:&nbsp;&nbsp;$email<br/>";
	$message .= "Message:&nbsp;&nbsp; $msg";

	send_mail($to, $message, $subject, $fromaddress, $fromname);
	$success = 1;
	
}
$smarty->assign('moduleName', 'contact');
$smarty->assign('isSucees', $success);

$smarty->display(TEMPLATEDIR . '/modules/contact/contact-us.tpl');
?>