<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'doctor-list');
$smarty->display(TEMPLATEDIR . '/modules/doctor/doctor-list.tpl');
?>