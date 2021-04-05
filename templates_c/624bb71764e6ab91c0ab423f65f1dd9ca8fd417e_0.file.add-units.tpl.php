<?php
/* Smarty version 3.1.29, created on 2021-03-04 12:26:44
  from "C:\xampp\htdocs\archive\default\templates\administrator\units\add-units.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_604084ac3f4df3_25585559',
  'file_dependency' => 
  array (
    '624bb71764e6ab91c0ab423f65f1dd9ca8fd417e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\units\\add-units.tpl',
      1 => 1614835522,
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
function content_604084ac3f4df3_25585559 ($_smarty_tpl) {
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
		<form name="addUnitsForm"  action="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/units/add" method="post" enctype="multipart/form-data">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

			<!-- Breadcrumbs-->
				
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Units Information</h2>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Project Name</label>
									<select class="form-control" name="p_id" id="p_id"  required>
										<option value="">Select Project</option>
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
											<option value="<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
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
									<label>Units name</label>
									<input type="text" class="form-control" name="name" placeholder="Units name type" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" name="title" placeholder="Unit title name" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Size</label>
									<input type="text" class="form-control" name="size" placeholder="Enter Size" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Price</label>
									<input type="text" class="form-control" name="price" placeholder="Enter Price" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Carpet area</label>
									<input type="text" class="form-control" name="carpet_area" placeholder="Enter carpet area" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Builtup area</label>
									<input type="text" class="form-control" name="built_area" placeholder="Enter carpet area" required>
								</div>
							</div>
						</div>
				
					</div>
					<!-- /box_general-->
					
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-picture-o"></i>Images</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>images</label>
									<input class="form-control" type="file" id="image" name="image[]" value="" multiple>
									<form action="/file-upload" class="dropzone" ></form>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>2d plan images</label>
									<input class="form-control" type="file" id="2d_plan" name="2d_plan[]" value="" multiple>
									<form action="/file-upload" class="dropzone" ></form>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>3d Images</label>
									<input class="form-control" type="file" id="3d_plan" name="3d_plan[]" value="" multiple>
								</div>
							</div>
						</div>
						<!-- /row-->

					</div>
					<!-- /box_general-->
					
					<p><button class="btn_1 medium" name="builderSave" type="submit">Save</button></p>
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
