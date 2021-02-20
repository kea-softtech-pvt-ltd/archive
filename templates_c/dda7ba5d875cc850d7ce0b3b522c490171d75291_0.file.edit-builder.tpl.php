<?php
/* Smarty version 3.1.29, created on 2021-02-20 13:53:18
  from "C:\xampp\htdocs\archive\default\templates\administrator\builder\edit-builder.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_6030c6f6361253_71267250',
  'file_dependency' => 
  array (
    'dda7ba5d875cc850d7ce0b3b522c490171d75291' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\builder\\edit-builder.tpl',
      1 => 1613809391,
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
function content_6030c6f6361253_71267250 ($_smarty_tpl) {
?>
    <!doctype html>
<html>
<style>
label.error {
    color: red !important;
}
</style>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
			
		<div class="content-wrapper">
		<form name="addBuilderForm" id="registration" action="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/builder/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['id'];?>
">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Builder information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<input type="text" class="form-control" name="name" placeholder="Builder name" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['name'];?>
" required>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<label>Telephone</label>
									<input type="text" class="form-control" name="contact_number" placeholder="Builder telephone number" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['telephone'];?>
">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder="Builder email" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['email'];?>
">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Profile picture</label>
										<input class="form-control" type="file" id="image" name="image" value=""></input>
										<input class="form-control" type="text" id="image" name="image" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
" hidden>
										<img class="d-block w-10" height="100px" width="100px" src="<?php echo SITE_URL;?>
/administrator/source/upload/<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
" />					
								</div>
							</div>
						<!---<div class="col-md-6">
								<div class="form-group">
									<label>Partners name</label>
									<input type="text" class="form-control" name="partner_name" placeholder="Partners name"  value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['partner_name'];?>
" required>
								</div>
							</div>--->
						</div>
						<div class="row">
							
					<!--		<div class="col-md-6">
								<div class="form-group">
									<label>PAN number</label>
									<input type="text" class="form-control" name="pan_number" placeholder="PAN number" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['pan'];?>
">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Profile picture</label>
									<input class="form-control" type="file" id="image" name="image" value=""></input>
									<input class="form-control" type="text" id="image" name="image" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
" hidden>
									<br>
									<img class="d-block w-10" height="100px" width="100px" src="<?php echo SITE_URL;?>
/administrator/source/upload/<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
" />
								</div>
							</div> --->
						</div>
						<!-- /row-->
					</div>
					<!-- /box_general-->
					
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Address</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>State</label>
									<select class="form-control" name="state" required>
										<option value="">Select State</option>
										<?php
$_from = $_smarty_tpl->tpl_vars['statesListArray']->value;
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
											<option <?php if (($_smarty_tpl->tpl_vars['v']->value['s_id'] == $_smarty_tpl->tpl_vars['builderuserArray']->value['state'])) {?> selected <?php }?> value="<?php echo $_smarty_tpl->tpl_vars['v']->value['s_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</option>
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
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>City</label>
									<select class="form-control" name="city" required>
										<option value="">Select City</option>
										<?php
$_from = $_smarty_tpl->tpl_vars['citiesListArray']->value;
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
											<option <?php if (($_smarty_tpl->tpl_vars['v']->value['id'] == $_smarty_tpl->tpl_vars['builderuserArray']->value['city'])) {?> selected <?php }?> value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</option>
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
									</select>
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Address</label>
									<textarea class="form-control" name="address" placeholder="Your address" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
"><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
</textarea>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Zip code</label>
									<input type="text" name="zipcode" class="form-control" placeholder="Your zip code" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['zip'];?>
">
								</div>
							</div>
						</div>
						<!-- /row-->
			<!--<div class="row">
					<div class="col-md-12">
						<h6>Multiple contact number</h6>
					<table id="pricing-list-container" style="width:100%;">
					<?php
$_from = explode(',',$_smarty_tpl->tpl_vars['builderuserArray']->value['m_con']);
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_v_2_saved_item = isset($_smarty_tpl->tpl_vars['v']) ? $_smarty_tpl->tpl_vars['v'] : false;
$__foreach_v_2_saved_key = isset($_smarty_tpl->tpl_vars['k']) ? $_smarty_tpl->tpl_vars['k'] : false;
$_smarty_tpl->tpl_vars['v'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['k'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['v']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
$__foreach_v_2_saved_local_item = $_smarty_tpl->tpl_vars['v'];
?>
						<tr class="pricing-list-item">
							<td>
							
								<div class="row">
								
									<div class="col-md-6">
										<div class="form-group">
										
											<input type="text" name="m_contact[]" value="<?php echo $_smarty_tpl->tpl_vars['v']->value;?>
" class="form-control" placeholder="Add contact number">
										
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<a class="delete" href="#"><i class="fa fa-fw fa-remove"></i></a>
										</div>
									</div>
									
								</div>
								
							</td>
						</tr>
						<?php
$_smarty_tpl->tpl_vars['v'] = $__foreach_v_2_saved_local_item;
}
if ($__foreach_v_2_saved_item) {
$_smarty_tpl->tpl_vars['v'] = $__foreach_v_2_saved_item;
}
if ($__foreach_v_2_saved_key) {
$_smarty_tpl->tpl_vars['k'] = $__foreach_v_2_saved_key;
}
?>
					</table>
					<a href="#0" class="btn_1 gray add-pricing-list-item"><i class="fa fa-fw fa-plus-circle"></i>Add contact number</a>
				</div>
			</div>--->
					</div>
					<!-- /box_general-->
					
					<p><button class="btn_1 medium" name="builderSave" type="submit">Update</button></p>
				</form>


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
