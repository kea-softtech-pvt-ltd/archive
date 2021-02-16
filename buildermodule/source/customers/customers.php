<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');

	print_r($_REQUEST);

	$smarty->assign('moduleName', 'List of customers');
	$smarty->display(ADMIN_TEMPLATEDIR . '/customers/customers.tpl');
?>