<!doctype html>
<style>
label.error {
    color: red !important;
}
</style>
<html>
{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="editCityForm" id="addStates"  action="{$adminroot}/state/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="s_id" value="{$stateArray['s_id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit State information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>State name</label>
									<input type="text" class="form-control" name="name" placeholder="State name" value="{$stateArray['name']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Country</label>
									<select class="form-control" name="country">
										<option value="">Select County</option>
										{foreach from=$countryListArray key=k item=v}
											<option {if ($v['c_id'] == $stateArray['c_id']) } selected {/if} value="{$v['c_id']}">{$v['name']}</option>
										{/foreach}
									</select>
								</div>
							</div>
						</div>
						<p><button class="btn_1 medium" name="editState" type="submit">Update</button></p>
					</div>
				</form>
			</div>
   		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>