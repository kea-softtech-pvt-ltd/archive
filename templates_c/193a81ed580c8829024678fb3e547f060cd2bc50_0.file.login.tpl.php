<?php
/* Smarty version 3.1.29, created on 2021-02-09 18:40:00
  from "C:\xampp\htdocs\archive\default\templates\administrator\login\login.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602289a8ebc3c3_25648118',
  'file_dependency' => 
  array (
    '193a81ed580c8829024678fb3e547f060cd2bc50' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\login\\login.tpl',
      1 => 1612876127,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:administrator/common/header.tpl' => 1,
    'file:administrator/common/footer.tpl' => 1,
    'file:administrator/common/scripts.tpl' => 1,
  ),
),false)) {
function content_602289a8ebc3c3_25648118 ($_smarty_tpl) {
?>
<!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true">	

				<main>
					<div class="container">
				
						
					 <span class="error"> <?php echo '<?php ';?>echo $nameErr;<?php echo '?>';?></span>

					<div class="alert alert-danger text-center" name="error_msggg" id="error_msggg" style="display:none;"></div>

						<div class="row justify-content-md-center">	
							<div id="login" class="col-md-4">
								<div class=" text-center add_top_20">
									<a class="navbar-brand" href="<?php echo $_smarty_tpl->tpl_vars['siteroot']->value;?>
"><img src="../default/assets/img/logo.png" data-retina="true" alt="" width="163" height="36"></a>
								</div>
								<div class="box_form add_top_20">
									<form action="<?php echo $_smarty_tpl->tpl_vars['siteroot']->value;?>
admin/login" method="post" name="frmLogin">
										<div class="form-group">
											<input type="text" name="mobile" class="form-control" placeholder="Your mobile">
												<?php if (isset($_smarty_tpl->tpl_vars['message']->value)) {?>
													<?php echo $_smarty_tpl->tpl_vars['message']->value;?>

												<?php }?>
										</div>
										<div class="form-group">
											<input type="password" class="form-control" placeholder="Your password" id="password" name="password">
												<?php if (isset($_smarty_tpl->tpl_vars['message1']->value)) {?>
													<?php echo $_smarty_tpl->tpl_vars['message1']->value;?>

												<?php }?>
										</div>
										<div class="form-group text-center add_top_20">
											<input class="btn_1 medium" name="login" type="submit" value="Login">
										</div>
									</form>
								</div>
							</div>
							<!-- /login -->
						</div>
					</div>
				</main>
		
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	</body>
</html><?php }
}
