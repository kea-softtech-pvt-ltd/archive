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
		<form name="addBuilderForm" id="registration" action="{$adminroot}/team/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$teamuserArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit team information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>name</label>
									<input type="text" class="form-control" name="name" placeholder="Enter name" value="{$teamuserArray['name']}" required>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" name="title" placeholder="Enter Title" value="{$teamuserArray['title']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Description</label>
									<input type="text" class="form-control" name="description" placeholder="Enter" value="{$teamuserArray['description']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="row">
									<div class="col-10">
										<div class="form-group">
											<label>Profile picture</label>
												<input class="form-control" type="file" id="image" name="image" value="" />
												<input class="form-control" type="text" id="image" name="image" value="{$teamuserArray['img']}" hidden />	
										</div>
									</div>
									<div class="col-2">
										<div class="form-group">
											<img class="" src="{SITE_URL}/administrator/source/upload/team/{$teamuserArray['img']}" style="float: right; height: 50px; width:50px; margin-top: 30%" />
										</div>
									</div>
								</div>
									
							</div>
							<p><button class="btn_1 medium" name="teamEdit" type="submit">Update</button></p>
						</div>
				
					</div>
			
					
				
				</form>


			</div>
	  <!-- /.container-fluid-->
   		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}

	
</body>
</html>