<?php
/* Smarty version 3.1.29, created on 2021-02-20 15:03:06
  from "C:\xampp\htdocs\archive\default\templates\administrator\amenities\edit-amenities.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_6030d752a16021_52003255',
  'file_dependency' => 
  array (
    '90c113e683a56474e8d53cc4004e2c117a3355c0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\amenities\\edit-amenities.tpl',
      1 => 1613813578,
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
function content_6030d752a16021_52003255 ($_smarty_tpl) {
?>
<!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
			
		<div class="content-wrapper">
		<form name="addAmenitiesForm" action="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/amenities/edit" method="post"enctype="multipart/form-data">
			<input type="hidden"name="id" value="<?php echo $_smarty_tpl->tpl_vars['amenitiesuserArray']->value['id'];?>
">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Amenities</h2>
						</div>	
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Amenities name</label>
									<input type="text" class="form-control" name="name" placeholder="Amenities name" value="<?php echo $_smarty_tpl->tpl_vars['amenitiesuserArray']->value['name'];?>
">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Font awaesome</label>
									<input type="text" class="form-control" name="font_awaesome" placeholder="Font awaesome name" value="<?php echo $_smarty_tpl->tpl_vars['amenitiesuserArray']->value['font_awaesome'];?>
">
									<a>it's allowed only font awesome 4</a>
								</div>
							</div>
						</div>
					<!--	<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Profile picture</label>
										<input class="form-control" type="file" id="image" name="image[]" value="" multiple/>
									<input class="form-control" type="hidden" id="imageold" name="imageold" value="<?php echo $_smarty_tpl->tpl_vars['amenitiesuserArray']->value['images'];?>
">
								</div>
							</div>
						</div>
						<div class="row">
							<?php $_smarty_tpl->tpl_vars['imagearray'] = new Smarty_Variable(explode(',',$_smarty_tpl->tpl_vars['amenitiesuserArray']->value['images']), null);
$_smarty_tpl->ext->_updateScope->updateScope($_smarty_tpl, 'imagearray', 0);?>
							<?php
$_from = $_smarty_tpl->tpl_vars['imagearray']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_count_0_saved_item = isset($_smarty_tpl->tpl_vars['image']) ? $_smarty_tpl->tpl_vars['image'] : false;
$__foreach_count_0_saved_key = isset($_smarty_tpl->tpl_vars['index']) ? $_smarty_tpl->tpl_vars['index'] : false;
$_smarty_tpl->tpl_vars['image'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['index'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['image']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['index']->value => $_smarty_tpl->tpl_vars['image']->value) {
$_smarty_tpl->tpl_vars['image']->_loop = true;
$__foreach_count_0_saved_local_item = $_smarty_tpl->tpl_vars['image'];
?>
							<img class="d-block w-10" height="150px" width="150px" src="<?php echo SITE_URL;?>
/administrator/source/upload/amenities/<?php echo $_smarty_tpl->tpl_vars['image']->value;?>
"  alt="First slide">
							<?php
$_smarty_tpl->tpl_vars['image'] = $__foreach_count_0_saved_local_item;
}
if ($__foreach_count_0_saved_item) {
$_smarty_tpl->tpl_vars['image'] = $__foreach_count_0_saved_item;
}
if ($__foreach_count_0_saved_key) {
$_smarty_tpl->tpl_vars['index'] = $__foreach_count_0_saved_key;
}
?>
						</div><br>--->
						<p><button class="btn_1 medium" name="amenitiesEdit" type="submit">Update</button></p>
					</div>			
				</form>
			</div>
	  	<!-- /.container-fluid-->
   		</div>
		<!-- /.container-wrapper-->
    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	
</body>
</html><?php }
}
