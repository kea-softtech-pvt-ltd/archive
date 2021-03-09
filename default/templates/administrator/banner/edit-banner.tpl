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
		<form name="editbannerForm" id="bannerAdd" action="{$adminroot}/banner/edit" method="post"enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$banneruserArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit banner</h2>
						</div>	
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" name="title" placeholder="title" value="{$banneruserArray['title']}">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Banner picture</label>
										<input class="form-control" type="file" id="image" name="image[]" value="" multiple/>
									<input class="form-control" type="hidden" id="imageold" name="imageold" value="{$banneruserArray['image']}">
								</div>
							</div>
						</div>
						<div class="row">
							{$imagearray = explode(',',$banneruserArray['image'])}
							{foreach from=$imagearray key=index item=image name=count}
							<img class="d-block w-10" height="150px" width="150px" src="{SITE_URL}/administrator/source/upload/banner/{$image}"  alt="First slide">
							{/foreach}
						</div><br>
						<p><button class="btn_1 medium" name="amenitiesEdit" type="submit">Update</button></p>
					</div>			
				</form>
			</div>
	  	<!-- /.container-fluid-->
   		</div>
		<!-- /.container-wrapper-->
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>