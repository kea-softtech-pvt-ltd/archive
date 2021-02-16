<?php
/* Smarty version 3.1.29, created on 2021-02-15 12:30:33
  from "C:\xampp\htdocs\archive\default\templates\administrator\builder\edit-builder.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602a1c1155aa88_47910215',
  'file_dependency' => 
  array (
    'dda7ba5d875cc850d7ce0b3b522c490171d75291' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\builder\\edit-builder.tpl',
      1 => 1613372404,
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
function content_602a1c1155aa88_47910215 ($_smarty_tpl) {
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

			<!-- Breadcrumbs-->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Builder information</h2>
						</div>
					<!--	<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['name'];?>

							<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['id'];?>
 --->
			
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
									<label>Partners name</label>
									<input type="text" class="form-control" name="partner_name" placeholder="Partners name"  value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['partner_name'];?>
" required>
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
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
						</div>
						<!-- /row-->
						<div class="row">
							
							<div class="col-md-6">
								<div class="form-group">
									<label>PAN number</label>
									<input type="text" class="form-control" name="pan_number" placeholder="PAN number" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['pan'];?>
">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Profile picture</label>
								<!-- multiple image	<input class="form-control" type="file" id="image" name="image[]" value="" multiple>--->
									
									<input class="form-control" type="file" id="image" name="image" value=""><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
</input>
									<input class="form-control" type="text" id="image" name="image" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['avatar'];?>
" hidden>
									<form action="/file-upload" class="dropzone" ></form>
								</div>
							</div>
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
									<label>City</label>
									<select class="form-control" name="city" required>
										<option value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['city'];?>
"><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['city'];?>
</option>
										<option value="New York">New York</option>
										<option value="Chicago">Chicago</option>
										<option value="Miami">Miami</option>
										<option value="Los Angeles">Los Angeles</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Address</label>
									<textarea class="form-control" name="address" placeholder="Your address" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
"><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
</textarea>
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>State</label>
									<input type="text"name="state" class="form-control" placeholder="Your state"value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['state'];?>
">
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
