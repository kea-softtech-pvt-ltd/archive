    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Builder information</h2>
						</div>
						<center><img class="" src="{SITE_URL}/administrator/source/upload/{$builderuserArray['avatar']}" style="height:100px;width:100px" /></center><hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<div>{$builderuserArray['name']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>User name</label>
									<div>{$builderuserArray['user_name']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<div>{$builderuserArray['email']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Telephone</label>
									<div>{$builderuserArray['telephone']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Register number</label>
									<div>{$builderuserArray['register_number']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Zip code</label>
									<div>{$builderuserArray['zip']}</div>
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
							<div class="col-md-4">
								<div class="form-group">
									<label>Address</label>
									<div>{$builderuserArray['street_address']}</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>City</label>
									<div>{foreach from=$citiesListArray key=k item=v}
										 {if ($v['id'] == $builderuserArray['city']) } {$v['name']}{/if} 
										{/foreach}	
									</div>
								</div>
							</div>
                            <div class="col-md-4">
								<div class="form-group">
									<label>State</label>
									<div>{foreach from=$statesListArray key=k item=v}
										 {if ($v['s_id'] == $builderuserArray['state']) } {$v['name']}{/if}
										{/foreach}
									</div>	
								</div>
							</div>
						</div>
						
					</div>
					<!-- /box_general-->
			</div>
	  <!-- /.container-fluid-->
   		</div>	
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>