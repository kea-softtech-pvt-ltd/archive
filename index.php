<?php
include_once('includefiles.php');
$smarty->assign('siteTitle', 'Find out Property');
$smarty->assign('siteName', 'Find out Property');
$smarty->assign('moduleName', 'home');

$smarty->display(TEMPLATEDIR . '/index.tpl');
?>