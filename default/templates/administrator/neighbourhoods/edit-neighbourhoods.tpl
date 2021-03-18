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
		<form name="editneighbourhoodsArray" id="neighbourhoodsAdd" action="{$adminroot}/neighbourhoods/edit" method="post"enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$neighbourhoodArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Neighbourhoods </h2>
						</div>	
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Name</label>
									<input type="text" class="form-control" name="name" placeholder="Neighbourhoods name" value="{$neighbourhoodArray['name']}">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>geolocation</label>
									<input type="text" class="form-control" name="geolocations" placeholder="geolocation name" value="{$neighbourhoodArray['geolocations']}">
								</div>
							</div>
						</div>
			
						<p><button class="btn_1 medium" name="typeEdit" type="submit">Update</button></p>
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