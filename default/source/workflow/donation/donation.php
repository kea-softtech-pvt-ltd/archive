<?php
include_once(realpath(dirname('../../../../../')) . '/includefiles.php');

$smarty->assign('moduleName', 'donation');
$smarty->display(TEMPLATEDIR . '/modules/donation/donation.tpl');
?>