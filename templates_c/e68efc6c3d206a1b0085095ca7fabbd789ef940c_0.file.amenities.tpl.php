<?php
/* Smarty version 3.1.29, created on 2021-02-15 10:50:05
  from "C:\xampp\htdocs\archive\default\templates\administrator\amenities\amenities.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602a04853b3cc9_62597269',
  'file_dependency' => 
  array (
    'e68efc6c3d206a1b0085095ca7fabbd789ef940c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\amenities\\amenities.tpl',
      1 => 1613366401,
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
function content_602a04853b3cc9_62597269 ($_smarty_tpl) {
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
				<h2 class="d-inline-block">Amenities List</h2>
            
                <div class="actions">
                    <a class="btn_1 medium" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/amenities/add" > Add new Amenities</a>
                </div>
			</div>
			<div class="list_general">
				<ul>
					<?php
$_from = $_smarty_tpl->tpl_vars['builderListArray']->value;
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
						<div id="carouselExampleControls<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" class="carousel slide carouselExampleControls" data-ride="carousel">
							<div class="carousel-inner">
							<?php $_smarty_tpl->tpl_vars['imagearray'] = new Smarty_Variable(explode(',',$_smarty_tpl->tpl_vars['v']->value['images']), null);
$_smarty_tpl->ext->_updateScope->updateScope($_smarty_tpl, 'imagearray', 0);?>
							
							<?php
$_from = $_smarty_tpl->tpl_vars['imagearray']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_count_1_saved = isset($_smarty_tpl->tpl_vars['__smarty_foreach_count']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_count'] : false;
$__foreach_count_1_saved_item = isset($_smarty_tpl->tpl_vars['image']) ? $_smarty_tpl->tpl_vars['image'] : false;
$__foreach_count_1_saved_key = isset($_smarty_tpl->tpl_vars['index']) ? $_smarty_tpl->tpl_vars['index'] : false;
$_smarty_tpl->tpl_vars['image'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['__smarty_foreach_count'] = new Smarty_Variable(array('index' => -1));
$_smarty_tpl->tpl_vars['index'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['image']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['index']->value => $_smarty_tpl->tpl_vars['image']->value) {
$_smarty_tpl->tpl_vars['image']->_loop = true;
$_smarty_tpl->tpl_vars['__smarty_foreach_count']->value['index']++;
$__foreach_count_1_saved_local_item = $_smarty_tpl->tpl_vars['image'];
?>
							
								<div class="carousel-item <?php if ((isset($_smarty_tpl->tpl_vars['__smarty_foreach_count']->value['index']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_count']->value['index'] : null) == 0) {?> active <?php }?>">
								<img class="d-block w-100" style="height:80px" src="<?php echo SITE_URL;?>
/administrator/source/upload/amenities/<?php echo $_smarty_tpl->tpl_vars['image']->value;?>
" alt="First slide">
								</div>
								
							<?php
$_smarty_tpl->tpl_vars['image'] = $__foreach_count_1_saved_local_item;
}
if ($__foreach_count_1_saved) {
$_smarty_tpl->tpl_vars['__smarty_foreach_count'] = $__foreach_count_1_saved;
}
if ($__foreach_count_1_saved_item) {
$_smarty_tpl->tpl_vars['image'] = $__foreach_count_1_saved_item;
}
if ($__foreach_count_1_saved_key) {
$_smarty_tpl->tpl_vars['index'] = $__foreach_count_1_saved_key;
}
?>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="carousel-control-next" href="#carouselExampleControls<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
							</div>
						
						<h4><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
 </h4>
						<ul class="booking_details">	
							<li block><br> </li>	
						</ul>
						
						<ul class="buttons">
							<a class="btn_1" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/amenities/edit?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" ><i class="fa fa-fw fa-edit"></i>Edit</a>	
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/amenities/delete?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>	
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/amenities/view?id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
" class="btn_1 gray delete"><i class="fa fa-fw fa-eye"></i> View </a></li>
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
		</div>
            </div>
   	    </div>
    <!-- /.container-wrapper-->

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
	
</body>
</html><?php }
}
