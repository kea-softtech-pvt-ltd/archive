<?php
/* Smarty version 3.1.29, created on 2021-07-19 14:24:47
  from "C:\xampp\htdocs\archive\default\templates\administrator\properties\properties.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_60f53dd7f30c55_85508339',
  'file_dependency' => 
  array (
    '56d44c588d51161bf2f69fa365192febe67a1e68' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\properties\\properties.tpl',
      1 => 1626682462,
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
function content_60f53dd7f30c55_85508339 ($_smarty_tpl) {
?>
    <!doctype html>

<html>
<style>
div .carouselExampleControls {
    max-width: 100px;
}
</style>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
			
		<div class="content-wrapper">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

                <div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">Property List</h2>

		
				 <a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/details" title="List View" style="float:right"><i class="fa fa-align-justify"></i></a>
                <div class="actions">
                    <a class="btn_1 medium" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/add" title="Add Property" > Add new property</a>
                </div>
			</div>
            
			
			

			<div class="list_general">
				<ul><?php
$_from = $_smarty_tpl->tpl_vars['propertiesListArray']->value;
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
					<li>
					<figure>
						<?php $_smarty_tpl->tpl_vars['imagearray'] = new Smarty_Variable(explode(',',$_smarty_tpl->tpl_vars['v']->value['images']), null);
$_smarty_tpl->ext->_updateScope->updateScope($_smarty_tpl, 'imagearray', 0);?>
						 <?php
$_from = $_smarty_tpl->tpl_vars['imagearray']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_count_1_saved_item = isset($_smarty_tpl->tpl_vars['image']) ? $_smarty_tpl->tpl_vars['image'] : false;
$__foreach_count_1_saved_key = isset($_smarty_tpl->tpl_vars['index']) ? $_smarty_tpl->tpl_vars['index'] : false;
$_smarty_tpl->tpl_vars['image'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['index'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['image']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['index']->value => $_smarty_tpl->tpl_vars['image']->value) {
$_smarty_tpl->tpl_vars['image']->_loop = true;
$__foreach_count_1_saved_local_item = $_smarty_tpl->tpl_vars['image'];
?>
                            <?php if ($_smarty_tpl->tpl_vars['index']->value == 0) {?>
                                <img src="<?php echo SITE_URL;?>
/administrator/upload/properties/<?php echo $_smarty_tpl->tpl_vars['image']->value;?>
">
                            <?php }?>               
                        <?php
$_smarty_tpl->tpl_vars['image'] = $__foreach_count_1_saved_local_item;
}
if ($__foreach_count_1_saved_item) {
$_smarty_tpl->tpl_vars['image'] = $__foreach_count_1_saved_item;
}
if ($__foreach_count_1_saved_key) {
$_smarty_tpl->tpl_vars['index'] = $__foreach_count_1_saved_key;
}
?>
					</figure> 
						<h4><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</h4>
						<ul class="booking_details">
							<li><strong>RERA number</strong><?php echo $_smarty_tpl->tpl_vars['v']->value['rera_number'];?>
</li>
							<li><strong>Builder name</strong><?php echo $_smarty_tpl->tpl_vars['v']->value['buildername'];?>
</li>
							<li><strong>Possession date</strong><?php echo $_smarty_tpl->tpl_vars['v']->value['possession_date'];?>
</li>
							<li><strong>Address</strong><?php echo $_smarty_tpl->tpl_vars['v']->value['address'];?>
</li>
							<li><strong>Partnership</strong>
							<?php if ($_smarty_tpl->tpl_vars['v']->value['patnership'] == 1) {?> Yes <?php } else { ?> No<?php }?>
							
								<?php if (($_SESSION['role'] == 1)) {?>
								<?php if ($_smarty_tpl->tpl_vars['v']->value['patnership'] == 0) {?>
								<a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/patnership?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" class="btn_1 gray"><i class="fa fa-check-circle-o text-success"></i> Add</a>
								<?php } else { ?>
								<a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/patnershipCancel?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o text-danger"></i>Cancel</a>
								<?php }?>
								<?php }?>
							</li>
							<li><strong>Users Group</strong> <a class="btn_1" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/propertiesGroupUserView?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" title="See Users Group" ><i class="fa fa-users"></i></a></li>
						</ul>	
						 
						<ul class="buttons">
							
							 <a class="btn_1" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/edit?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" title="Edit Properties" ><i class="fa fa-fw fa-edit"></i>Edit</a>
							 <li><a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/delete?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" title="Delete Properties" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
							 <li><a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/view?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" title="View Properties" class="btn_1 gray"><i class="fa fa-eye"></i> View</a></li>
							
						</ul>
					</li>
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
				</ul>
				
			</div>
			  <div class="row">
              <div class="col-md-12">
                <ul class="pagination" style="float: right">
                   <?php echo $_smarty_tpl->tpl_vars['pagLink']->value;?>

                </ul>
              </div>
            </div>
            <!-- end:pagination -->
		</div>
            </div>
   	    </div>
    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	
</body>
</html><?php }
}
