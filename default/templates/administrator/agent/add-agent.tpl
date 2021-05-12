    <!doctype html>
<html>
<style>
label.error {
    color: red !important;
}
#msg{
	color:#28a745;
	background-color: #a8d9a3;
}
</style>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="addAgentForm" id="agentAdd" action="{$adminroot}/agent/add" method="post" enctype="multipart/form-data">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Agent information</h2>
						</div>
						<div id="msg" name="msg">	
				{if isset($success) }
					{$success}
				{/if}
			</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>name</label>
									<input type="text" class="form-control" name="name" placeholder="Agent name" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Profile picture</label>
									<input class="form-control" type="file" id="image" name="image" value="" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder="Enter email" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Office phone no</label>
									<input type="text" class="form-control" name="office_phone" placeholder="Office phone no" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Mobile no</label>
									<input type="text" class="form-control" name="phone" placeholder="Enter mobile no" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>FAX</label>
									<input type="text" class="form-control" name="fax" placeholder="Enter FAX" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Description</label>
									<input type="text" class="form-control" name="description" placeholder="Enter description" required>
								</div>
							</div>
						</div>
						<p><button class="btn_1 medium" name="agentSave" type="submit">Save</button></p>
					</div>
					<!-- /box_general-->
					
					<!-- /box_general-->
					
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
						<a class="btn btn-primary" href="{$adminroot}/logout">Logout</a>
					</div>
				</div>
			</div>
		</div>


    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}


	{* <script type="text/javascript">
   		 setTimeout(function() {
   			 $('#msg').fadeOut('fast');
   		 }, 3000); 
		//header("Location: " . SITE_URL . "/admin/builder");
    		
			
	</script> *}
</body>
</html>