<?php
/* Smarty version 3.1.29, created on 2021-06-28 12:45:12
  from "C:\xampp\htdocs\archive\default\templates\administrator\builder\view-builder.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_60d977007167d3_94899244',
  'file_dependency' => 
  array (
    'cbb62c26990ebbd1ed986ce7e9cacc75611b67c5' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\builder\\view-builder.tpl',
      1 => 1624864508,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:administrator/common/header.tpl' => 1,
    'file:administrator/common/sidebar.tpl' => 1,
    'file:administrator/common/top-bar.tpl' => 1,
    'file:administrator/common/footer.tpl' => 1,
    'file:administrator/common/scripts.tpl' => 1,
  ),
),false)) {
function content_60d977007167d3_94899244 ($_smarty_tpl) {
?>
    <!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
			
		<div class="content-wrapper">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Builder information</h2>
						</div>
						<center><img class="" src="<?php echo SITE_URL;?>
/administrator/source/upload/<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
" style="height:100px;width:100px" /></center><hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['name'];?>
</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>User name</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['user_name'];?>
</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['email'];?>
</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Telephone</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['telephone'];?>
</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Register number</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['register_number'];?>
</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Zip code</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['zip'];?>
</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /box_general-->
					
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Address</h2>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label>Address</label>
									<div><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>City</label>
									<div><?php
$_from = $_smarty_tpl->tpl_vars['citiesListArray']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_v_0_saved_item = isset($_smarty_tpl->tpl_vars['v']) ? $_smarty_tpl->tpl_vars['v'] : false;
$__foreach_v_0_saved_key = isset($_smarty_tpl->tpl_vars['k']) ? $_smarty_tpl->tpl_vars['k'] : false;
$_smarty_tpl->tpl_vars['v'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['k'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['v']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
$__foreach_v_0_saved_local_item = $_smarty_tpl->tpl_vars['v'];
?>
										 <?php if (($_smarty_tpl->tpl_vars['v']->value['id'] == $_smarty_tpl->tpl_vars['builderuserArray']->value['city'])) {?> <?php echo $_smarty_tpl->tpl_vars['v']->value['name'];
}?> 
										<?php
$_smarty_tpl->tpl_vars['v'] = $__foreach_v_0_saved_local_item;
}
if ($__foreach_v_0_saved_item) {
$_smarty_tpl->tpl_vars['v'] = $__foreach_v_0_saved_item;
}
if ($__foreach_v_0_saved_key) {
$_smarty_tpl->tpl_vars['k'] = $__foreach_v_0_saved_key;
}
?>	
									</div>
								</div>
							</div>
                            <div class="col-md-4">
								<div class="form-group">
									<label>State</label>
									<div><?php
$_from = $_smarty_tpl->tpl_vars['statesListArray']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_v_1_saved_item = isset($_smarty_tpl->tpl_vars['v']) ? $_smarty_tpl->tpl_vars['v'] : false;
$__foreach_v_1_saved_key = isset($_smarty_tpl->tpl_vars['k']) ? $_smarty_tpl->tpl_vars['k'] : false;
$_smarty_tpl->tpl_vars['v'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['k'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['v']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
$__foreach_v_1_saved_local_item = $_smarty_tpl->tpl_vars['v'];
?>
										 <?php if (($_smarty_tpl->tpl_vars['v']->value['s_id'] == $_smarty_tpl->tpl_vars['builderuserArray']->value['state'])) {?> <?php echo $_smarty_tpl->tpl_vars['v']->value['name'];
}?>
										<?php
$_smarty_tpl->tpl_vars['v'] = $__foreach_v_1_saved_local_item;
}
if ($__foreach_v_1_saved_item) {
$_smarty_tpl->tpl_vars['v'] = $__foreach_v_1_saved_item;
}
if ($__foreach_v_1_saved_key) {
$_smarty_tpl->tpl_vars['k'] = $__foreach_v_1_saved_key;
}
?>
									</div>	
								</div>
							</div>
						</div>
						
					</div>
					<!-- /box_general-->
			</div>
	  <!-- /.container-fluid-->
   		</div>	
    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	
</body>
</html><?php }
}
