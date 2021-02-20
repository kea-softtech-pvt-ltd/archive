<?php
/* Smarty version 3.1.29, created on 2021-02-19 18:08:20
  from "C:\xampp\htdocs\archive\default\templates\administrator\builder\view-builder.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602fb13c4cfad8_94931067',
  'file_dependency' => 
  array (
    'cbb62c26990ebbd1ed986ce7e9cacc75611b67c5' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\builder\\view-builder.tpl',
      1 => 1613738294,
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
function content_602fb13c4cfad8_94931067 ($_smarty_tpl) {
?>
    <!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
			
		<div class="content-wrapper">
		<form name="addBuilderForm" id="registration" action="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/builder/view" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['id'];?>
">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Builder information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<input class="form-control" name="name" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['name'];?>
">
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
									<label>Address</label>
									<textarea class="form-control" name="address" placeholder="Your address" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
"><?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['street_address'];?>
</textarea>
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
							<div class="col-md-6">
								<div class="form-group">
									<label>City</label>
									<input class="form-control" name="city" value="<?php echo $_smarty_tpl->tpl_vars['builderuserArray']->value['city'];?>
">
									</input>
								</div>
							</div>
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
						
					</div>
					<!-- /box_general-->
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
