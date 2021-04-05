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
		<form name="addUnitsForm"  action="{$adminroot}/units/add" method="post" enctype="multipart/form-data">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
			<!-- Breadcrumbs-->
				
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Units Information</h2>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Project Name</label>
									<select class="form-control" name="p_id" id="p_id"  required>
										<option value="">Select Project</option>
										{foreach from=$statesListArray key=k item=v}
											<option value="{$v['id']}">{$v['name']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Units name</label>
									<input type="text" class="form-control" name="name" placeholder="Units name type" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" name="title" placeholder="Unit title name" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Size</label>
									<input type="text" class="form-control" name="size" placeholder="Enter Size" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Price</label>
									<input type="text" class="form-control" name="price" placeholder="Enter Price" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Carpet area</label>
									<input type="text" class="form-control" name="carpet_area" placeholder="Enter carpet area" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Builtup area</label>
									<input type="text" class="form-control" name="built_area" placeholder="Enter carpet area" required>
								</div>
							</div>
						</div>
				
					</div>
					<!-- /box_general-->
					
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-picture-o"></i>Images</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>images</label>
									<input class="form-control" type="file" id="image" name="image[]" value="" multiple>
									<form action="/file-upload" class="dropzone" ></form>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>2d plan images</label>
									<input class="form-control" type="file" id="2d_plan" name="2d_plan[]" value="" multiple>
									<form action="/file-upload" class="dropzone" ></form>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>3d Images</label>
									<input class="form-control" type="file" id="3d_plan" name="3d_plan[]" value="" multiple>
								</div>
							</div>
						</div>
						<!-- /row-->

					</div>
					<!-- /box_general-->
					
					<p><button class="btn_1 medium" name="builderSave" type="submit">Save</button></p>
				</form>
			</div>
	  <!-- /.container-fluid-->
   		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>