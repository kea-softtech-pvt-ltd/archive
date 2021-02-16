<?php
/* Smarty version 3.1.29, created on 2021-02-06 13:04:51
  from "C:\xampp\htdocs\archive\default\templates\administrator\customers\customers.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_601e469b04f586_01086880',
  'file_dependency' => 
  array (
    '2d811f879f6a31b6b992e98619bb7dbf46f99a86' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\customers\\customers.tpl',
      1 => 1612357206,
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
function content_601e469b04f586_01086880 ($_smarty_tpl) {
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

                <div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">customers List</h2>
                
				<div class="filter">
					<select name="orderby" class="selectbox">
						<option value="Any status">Any status</option>
						<option value="Approved">Approved</option>
						<option value="Pending">Pending</option>
						<option value="Cancelled">Cancelled</option>
					</select>
                    
                    
				</div>
                <div class="actions">
                    <a class="btn_1 medium" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/customers/add" > Add new customer</a>
                </div>
			</div>
			<div class="list_general">
				<ul>
					<li>
						<figure><img src="img/avatar1.jpg" alt=""></figure>
						<h4>Enzo Ferrari <i class="pending">Pending</i></h4>
						<ul class="booking_details">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking time</strong> 10.20AM</li>
							<li><strong>Visits</strong> Cardiology test, Diabetic diagnose</li>
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> user@email.com</li>
						</ul>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					<li>
						<figure><img src="img/avatar2.jpg" alt=""></figure>
						<h4>Andrea Lomarco <i class="cancel">Cancel</i></h4>
						<ul class="booking_details">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking time</strong> 10.20AM</li>
							<li><strong>Visits</strong> Cardiology test, Diabetic diagnose</li>
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> user@email.com</li>
						</ul>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					<li>
						<figure><img src="img/avatar3.jpg" alt=""></figure>
						<h4>Marc Twain <i class="approved">Approved</i></h4>
						<ul class="booking_details">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking time</strong> 10.20AM</li>
							<li><strong>Visits</strong> Cardiology test, Diabetic diagnose</li>
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> user@email.com</li>
						</ul>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
            </div>
   	    </div>
    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/scripts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	
</body>
</html><?php }
}
