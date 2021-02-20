<?php
/* Smarty version 3.1.29, created on 2021-02-20 14:56:06
  from "C:\xampp\htdocs\archive\default\templates\administrator\amenities\view-amenities.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_6030d5ae09e6c7_12156012',
  'file_dependency' => 
  array (
    '909de1eefe1a639d43ec45ad96bb90acb9055e87' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\amenities\\view-amenities.tpl',
      1 => 1613813160,
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
function content_6030d5ae09e6c7_12156012 ($_smarty_tpl) {
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
/amenities/view" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="<?php echo $_smarty_tpl->tpl_vars['amenitiesArray']->value['id'];?>
">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Amenities information</h2>
						</div>
						<div class="row">
							<div class="col-md-12">
                                <table>
                                    <tr>
                                        <th>name</th>
                                        <td><?php echo $_smarty_tpl->tpl_vars['amenitiesArray']->value['name'];?>
</td>
                                    </tr>
                                    <tr>
                                        <th>Font awaesome</th>
                                        <td><i class="<?php echo $_smarty_tpl->tpl_vars['amenitiesArray']->value['font_awaesome'];?>
"></i></td>
                                    </tr>
                                </table>        
							</div>
							
						</div>
					
					</div>
					<!-- /box_general-->
					

						
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
