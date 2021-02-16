<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'doctor-details');
$smarty->display(TEMPLATEDIR . '/modules/doctor/doctor-details.tpl');
?>