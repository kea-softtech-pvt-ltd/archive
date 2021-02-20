    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="addAmenitiesForm" id="sd" action="{$adminroot}/amenities/add" method="post"enctype="multipart/form-data">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Amenities</h2>
						</div>	
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Amenities name</label>
									<input type="text" class="form-control" name="name" placeholder="Amenities name" requird>
									<i class="text-danger">{if isset($message) }{$message}{/if}</i>
								</div>
							</div>
							</div>
							<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Font awaesome</label>
									<input type="text" class="form-control" name="font_awaesome" placeholder="Font awaesome " requird>
									<i class="text-danger">{if isset($message2) }{$message2}{/if}</i>
									<a>it's allowed only font awesome 4</a>
								</div>
							</div>
						</div>
					<!--<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Amenities picture</label>
										<input class="form-control" type="file" id="image" name="image[]" value="" multiple>
					
									<i class="text-danger">{if isset($message1) }{$message1}{/if}</i>
								</div>
							</div>
						</div>---->

						<p><button class="btn_1 medium" name="amenitiesSave" type="submit">Save</button></p>
					</div>			
				</form>
			</div>
	  <!-- /.container-fluid-->
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
				<a class="btn btn-primary" href="../login">Logout</a>
			</div>
			</div>
		</div>
		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>