<?php
/* Smarty version 3.1.29, created on 2021-03-30 15:52:12
  from "C:\xampp\htdocs\archive\default\templates\administrator\common\top-bar.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_6062fbd48a3082_21253622',
  'file_dependency' => 
  array (
    '7d62145821d23f41f95d712fae5118f38fb809e5' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\common\\top-bar.tpl',
      1 => 1617099026,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6062fbd48a3082_21253622 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_replace')) require_once 'C:\\xampp\\htdocs\\archive\\default\\source\\common\\third-party\\smarty-3.1.29\\libs\\plugins\\modifier.replace.php';
?>
<style>
.breadcrumb {
  text-transform: capitalize;
}
</style>
<ol class="breadcrumb">
	<li class="breadcrumb-item active">

		<?php $_smarty_tpl->tpl_vars["uri"] = new Smarty_Variable(pathinfo($_SERVER['REQUEST_URI']), null);
$_smarty_tpl->ext->_updateScope->updateScope($_smarty_tpl, "uri", 0);?>

		<?php $_smarty_tpl->tpl_vars["exploded"] = new Smarty_Variable(explode("/",$_smarty_tpl->tpl_vars['uri']->value["dirname"]), null);
$_smarty_tpl->ext->_updateScope->updateScope($_smarty_tpl, "exploded", 0);?>

		<a href="http://<?php echo $_SERVER['HTTP_HOST'];?>
"></a>

		<?php
$_from = $_smarty_tpl->tpl_vars['exploded']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_element_0_saved_item = isset($_smarty_tpl->tpl_vars['element']) ? $_smarty_tpl->tpl_vars['element'] : false;
$_smarty_tpl->tpl_vars['element'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['element']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['element']->value) {
$_smarty_tpl->tpl_vars['element']->_loop = true;
$__foreach_element_0_saved_local_item = $_smarty_tpl->tpl_vars['element'];
?>

 			<?php if ($_smarty_tpl->tpl_vars['element']->value != '') {?> <?php }?>

		<?php
$_smarty_tpl->tpl_vars['element'] = $__foreach_element_0_saved_local_item;
}
if ($__foreach_element_0_saved_item) {
$_smarty_tpl->tpl_vars['element'] = $__foreach_element_0_saved_item;
}
?>
		
		<a href="#"><?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['element']->value,'-',' ');?>
</a> / <a href="#"> <?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['uri']->value["filename"],'-',' ');?>
</a>
	</li>
</ol>
<?php }
}
