<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'booking');
$smarty->display(TEMPLATEDIR . '/modules/booking/booking.tpl');
?>