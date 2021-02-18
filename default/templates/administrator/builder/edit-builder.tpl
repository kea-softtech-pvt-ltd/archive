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
		<form name="addBuilderForm" id="registration" action="{$adminroot}/builder/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$builderuserArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
			<!-- Breadcrumbs-->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Builder information</h2>
						</div>
					<!--	{$builderuserArray['name']}
							{$builderuserArray['id']} --->
			
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<input type="text" class="form-control" name="name" placeholder="Builder name" value="{$builderuserArray['name']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Partners name</label>
									<input type="text" class="form-control" name="partner_name" placeholder="Partners name"  value="{$builderuserArray['partner_name']}" required>
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Telephone</label>
									<input type="text" class="form-control" name="contact_number" placeholder="Builder telephone number" value="{$builderuserArray['telephone']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder="Builder email" value="{$builderuserArray['email']}">
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
							
							<div class="col-md-6">
								<div class="form-group">
									<label>PAN number</label>
									<input type="text" class="form-control" name="pan_number" placeholder="PAN number" value="{$builderuserArray['pan']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Profile picture</label>
								<!-- multiple image	<input class="form-control" type="file" id="image" name="image[]" value="" multiple>--->
									<input class="form-control" type="file" id="image" name="image" value=""></input>
									<input class="form-control" type="text" id="image" name="image" value="{$builderuserArray['avatar']}" hidden>
									<form action="/file-upload" class="dropzone" ></form><br>
									<img class="d-block w-10" height="100px" width="100px" src="{SITE_URL}/administrator/source/upload/{$builderuserArray['avatar']}" />
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
									<select class="form-control" name="city" required>
										<option value="">Select City</option>
										{foreach from=$citiesListArray key=k item=v}
											<option {if ($v['id'] == $builderuserArray['city']) } selected {/if} value="{$v['id']}">{$v['name']}</option>
										{/foreach}
										
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Address</label>
									<textarea class="form-control" name="address" placeholder="Your address" value="{$builderuserArray['street_address']}">{$builderuserArray['street_address']}</textarea>
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>State</label>
									<input type="text"name="state" class="form-control" placeholder="Your state"value="{$builderuserArray['state']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Zip code</label>
									<input type="text" name="zipcode" class="form-control" placeholder="Your zip code" value="{$builderuserArray['zip']}">
								</div>
							</div>
						</div>
						<!-- /row-->
					</div>
					<!-- /box_general-->
					
					<p><button class="btn_1 medium" name="builderSave" type="submit">Update</button></p>
				</form>


			</div>
	  <!-- /.container-fluid-->
   		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>