<?php
/* Smarty version 3.1.29, created on 2021-02-17 21:25:21
  from "C:\xampp\htdocs\archive\default\templates\administrator\properties\add-properties.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602d3c691024d5_73201480',
  'file_dependency' => 
  array (
    'bd0f4b601058f68f25f97497aecb8372ead67106' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\properties\\add-properties.tpl',
      1 => 1613411966,
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
function content_602d3c691024d5_73201480 ($_smarty_tpl) {
?>
    <!doctype html>
<html>
	<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
	

		<form name="addBuilderForm" action="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties/add" method="post" enctype="multipart/form-data">		
		<div class="content-wrapper">
			<div class="container-fluid">
				<?php $_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:administrator/common/top-bar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

      <!-- Breadcrumbs-->
      
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>Properties Basic info</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="name" class="form-control" placeholder="Your name">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Last name</label>
						<input type="text" class="form-control" placeholder="Your last name">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Telephone</label>
						<input type="text" class="form-control" placeholder="Your telephone number">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" placeholder="Your email">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>Profile picture</label>
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
						<select class="form-control">
							<option value="">Select city</option>
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
						<input type="text" class="form-control" placeholder="Your address">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>State</label>
						<input type="text" class="form-control" placeholder="Your state">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Zip code</label>
						<input type="text" class="form-control" placeholder="Your zip code">
					</div>
				</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->
		
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-file-text"></i>Curriculum</h2>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>Professional statement</label>
						<div class="editor"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>Specialization <a href="#0" data-toggle="tooltip" data-placement="top" title="Separated by commas"><i class="fa fa-fw fa-question-circle"></i></a></label>
						<input type="text" class="form-control" placeholder="Ex: Piscologist, Pediatrician...">
					</div>
				</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->
		
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-folder"></i>Pricing</h2>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6>Treatments</h6>
					<table id="pricing-list-container" style="width:100%;">
						<tr class="pricing-list-item">
							<td>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Title">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input type="text" class="form-control"  placeholder="Price">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<a class="delete" href="#"><i class="fa fa-fw fa-remove"></i></a>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<a href="#0" class="btn_1 gray add-pricing-list-item"><i class="fa fa-fw fa-plus-circle"></i>Add Item</a>
					</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->

		<p><button class="btn_1 medium" name="propetySave" type="submit">Save</button></p>
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
