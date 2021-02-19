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
		<form name="editCityForm" id="addCountry" action="{$adminroot}/country/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="c_id" value="{$countryArray['c_id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Country information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Country name</label>
									<input type="text" class="form-control" name="name" placeholder="Country name" value="{$countryArray['name']}" required>
								</div>
							</div>
						
						</div>
						<p><button class="btn_1 medium" name="editcountry" type="submit">Update</button></p>
					</div>
				</form>
			</div>
   		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>