    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="addBuilderForm" id="registration" action="{$adminroot}/builder/view" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$builderuserArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Builder information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<input class="form-control" name="name" value="{$builderuserArray['name']}">
								</div>
							</div>
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
                            <div class="col-md-6">
								<div class="form-group">
									<label>Address</label>
									<textarea class="form-control" name="address" placeholder="Your address" value="{$builderuserArray['street_address']}">{$builderuserArray['street_address']}</textarea>
								</div>
							</div>
						</div>
					
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
									<input class="form-control" name="city" value="{$builderuserArray['city']}">
									</input>
								</div>
							</div>
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
						
					</div>
					<!-- /box_general-->
				</form>
			</div>
	  <!-- /.container-fluid-->
   		</div>	
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>