<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'login');
$smarty->display(TEMPLATEDIR . '/modules/login/login.tpl');
?>