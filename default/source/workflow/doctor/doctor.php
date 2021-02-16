<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'doctor');
$smarty->display(TEMPLATEDIR . '/modules/doctor/doctor.tpl');
?>