<?php
	include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

	$smarty->assign('moduleName', 'About us');
	$smarty->display(TEMPLATEDIR . '/modules/about-us/certificates.tpl');
?>