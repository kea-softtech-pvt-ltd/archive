<?php
	include_once(realpath(dirname('../../../../../')) . '/includefiles.php');
	

	
	
	$smarty->assign('moduleName', 'cancel payment');
	$smarty->display(TEMPLATEDIR . '/modules/donation/payment-cancel.tpl');
?>