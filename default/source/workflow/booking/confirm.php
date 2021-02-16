<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'confirm');
$smarty->display(TEMPLATEDIR . '/modules/booking/confirm.tpl');
?>