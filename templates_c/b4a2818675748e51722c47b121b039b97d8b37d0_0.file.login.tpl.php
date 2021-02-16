<?php
/* Smarty version 3.1.29, created on 2021-02-15 15:34:51
  from "C:\xampp\htdocs\archive\default\templates\buildermodule\login\login.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602a47433411b2_19001192',
  'file_dependency' => 
  array (
    'b4a2818675748e51722c47b121b039b97d8b37d0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\buildermodule\\login\\login.tpl',
      1 => 1613383451,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:buildermodule/common/header.tpl' => 1,
    'file:buildermodule/common/footer.tpl' => 1,
    'file:buildermodule/common/scripts.tpl' => 1,
  ),
),false)) {
function content_602a47433411b2_19001192 ($_smarty_tpl) {
?>
<!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:buildermodule/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true">	

				<main>
					<div class="container">
				
						
					 <span class="error"> <?php echo '<?php ';?>echo $nameErr;<?php echo '?>';?></span>

					<div class="alert alert-danger text-center" name="error_msggg" id="error_msggg" style="display:none;"></div>

						<div class="row justify-content-md-center">	
							<div id="login" class="col-md-4">
								<div class=" text-center add_top_20">
								<i class="fa fa fa-user"></i>
								</div>
								<div class="box_form add_top_20">
									<form action="<?php echo $_smarty_tpl->tpl_vars['siteroot']->value;?>
builder/login" method="post" name="frmLogin">
										<div class="form-group">
											<input type="text" name="mobile" class="form-control" placeholder="Your email">
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
		
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:buildermodule/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:buildermodule/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	</body>
</html><?php }
}
