<?php
/* Smarty version 3.1.29, created on 2021-08-06 17:45:03
  from "C:\xampp\htdocs\archive\default\templates\administrator\dashboard\dashboard.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_610d27c7eaec91_81513350',
  'file_dependency' => 
  array (
    'd671e965274268f0a996026cb2187de51d899301' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\dashboard\\dashboard.tpl',
      1 => 1628252067,
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
function content_610d27c7eaec91_81513350 ($_smarty_tpl) {
?>
<!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
			
		<div class="content-wrapper">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

				<!-- Icon Cards-->
				<div class="row">
				<?php if (($_SESSION['role'] != 3)) {?>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card dashboard text-white bg-primary o-hidden h-100">
							<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-address-card"></i>
							</div>
							<div class="mr-5">
							
								<h5><?php echo $_smarty_tpl->tpl_vars['builderListArray']->value;?>
 Builder</h5>
							
							</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="builder">
							<span class="float-left">View Details</span>
							<span class="float-right">
								<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
						<?php }?>
					</div>
				<!--	<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card dashboard text-white bg-warning o-hidden h-100">
							<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-star"></i>
							</div>
								<div class="mr-5"><h5>11 New Reviews!</h5></div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="reviews.html">
							<span class="float-left">View Details</span>
							<span class="float-right">
								<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card dashboard text-white bg-success o-hidden h-100">
							<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-calendar-check-o"></i>
							</div>
							<div class="mr-5"><h5>10 New Bookings!</h5></div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="bookings.html">
							<span class="float-left">View Details</span>
							<span class="float-right">
								<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card dashboard text-white bg-danger o-hidden h-100">
							<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-heart"></i>
							</div>
							<div class="mr-5"><h5>10 New Bookmarks!</h5></div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="bookmarks.html">
							<span class="float-left">View Details</span>
							<span class="float-right">
								<i class="fa fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>---->
				</div>
				<!-- /cards -->
				<h2></h2>
				<div class="box_general padding_bottom">
					<div class="header_box version_2">
						<h2><i class="fa fa-bar-chart"></i>Statistic</h2>
					</div>
					<canvas id="myAreaChart" width="100%" height="30" style="margin:45px 0 15px 0;"></canvas>
				</div>
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
