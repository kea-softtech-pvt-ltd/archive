    <!doctype html>
<html>
<style>
label.error {
    color: red !important;
}
</style>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="addwing" id="wingAdd" action="{$adminroot}/proType/add" method="post"enctype="multipart/form-data">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Property Type</h2>
						</div>	
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>property Type </label>
									<input type="text" class="form-control" name="name" placeholder="property type name" requird>
								</div>
							</div>
							</div>
						<p><button class="btn_1 medium" name="typeSave" type="submit">Save</button></p>
					</div>			
				</form>
			</div>
   		</div>
		<a class="scroll-to-top rounded" href="#page-top">
		<i class="fa fa-angle-up"></i>
		</a>
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