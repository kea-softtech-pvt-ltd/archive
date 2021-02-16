<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'register');
$smarty->display(TEMPLATEDIR . '/modules/login/register.tpl');
?>