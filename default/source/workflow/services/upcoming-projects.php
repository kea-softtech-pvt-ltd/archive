<?php
	include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

	$smarty->assign('moduleName', 'Upcoming projects');
	$smarty->display(TEMPLATEDIR . '/modules/services/upcoming-projects.tpl');
?>