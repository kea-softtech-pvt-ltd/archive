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
		<form name="addBuilderForm" id="EditBuilder" action="{$adminroot}/builder/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$builderuserArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit Builder information</h2>
						<!--	<img class="" src="{SITE_URL}/administrator/source/upload/{$builderuserArray['avatar']}" style="float: right; height: 50px; width:50px" /><br>	--->			
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<input type="text" class="form-control" name="name" placeholder="Builder name" value="{$builderuserArray['name']}" required>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<label>Telephone</label>
									<input type="text" class="form-control" name="contact_number" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" placeholder="Builder telephone number" value="{$builderuserArray['telephone']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder="Builder email" value="{$builderuserArray['email']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="row">
									<div class="col-10">
										<div class="form-group">
											<label>Profile picture</label>
												<input class="form-control" type="file" id="image" name="image" value="" />
												<input class="form-control" type="text" id="image" name="image" value="{$builderuserArray['avatar']}" hidden />	
										</div>
									</div>
									<div class="col-2">
										<div class="form-group">
											<img class="" src="{SITE_URL}/administrator/source/upload/{$builderuserArray['avatar']}" style="float: right; height: 50px; width:50px; margin-top: 30%" />
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Register number</label>
									<input type="text" class="form-control" name="register_number" placeholder="Builder register number"  value="{$builderuserArray['register_number']}" required>
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
					
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Address</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>State</label>
									<select class="form-control" name="s_id" id="s_id"  onchange="getModels();" required>
										<option value="">Select State</option>
										{foreach from=$statesListArray key=k item=v}
											<option {if ($v['s_id'] == $builderuserArray['state']) } selected {/if} value="{$v['s_id']}">{$v['name']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>City</label>
									<select class="form-control" name="city" id="city" required>
										<option value="">Select City</option>
										{foreach from=$citiesListArray key=k item=v}
											<option {if ($v['id'] == $builderuserArray['city']) } selected {/if} value="{$v['id']}">{$v['name']}</option>
										{/foreach}		
									</select>
								</div>
							</div>
						</div>
						<!-- /row-->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Landmark</label>
									<input class="form-control" name="landmark" placeholder="Enter landmark" value="{$builderuserArray['landmark']}" />
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
					<!--<div class="row">
					<div class="col-md-12">
						<h6>Multiple contact number</h6>
					<table id="pricing-list-container" style="width:100%;">
					{foreach from=explode(',',$builderuserArray['m_con']) key=k item=v}
						<tr class="pricing-list-item">
							<td>
							
								<div class="row">
								
									<div class="col-md-6">
										<div class="form-group">
										
											<input type="text" name="m_contact[]" value="{$v}" class="form-control" placeholder="Add contact number">
										
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<a class="delete" href="#"><i class="fa fa-fw fa-remove"></i></a>
										</div>
									</div>
									
								</div>
								
							</td>
						</tr>
						{/foreach}
					</table>
					<a href="#0" class="btn_1 gray add-pricing-list-item"><i class="fa fa-fw fa-plus-circle"></i>Add contact number</a>
				</div>
			</div>--->
					</div>
					<!-- /box_general-->
					
					<p><button class="btn_1 medium" name="builderSave" type="submit">Update</button></p>
				</form>


			</div>
	  <!-- /.container-fluid-->
   		</div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}

	<script type="text/javascript">
   		function getModels()
{

	if($('#s_id').val() == '')

	{

		var _html = '<option value="">Select State/option>';

		_html += '<option value="0">Other</option>';

		$('#city').html(_html);

	}
	
	else

	{		
        
		$.ajax({
			type: "POST",

			url: "{$adminroot}/ajaxbuilder",

	  		 // url: "http://localhost/archive/administrator/ajax/ajax_food.php",
           
			
			data: { action: 'getModels', s_id : $('#s_id').val() },

			success: function(response){

				var data_obj = JSON.parse(response);

				var _html = '<option value="">Select  city </option>';
				
				if(data_obj.message == 'success')

				{

					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].id+'">'+data_obj.result[i].name+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	

				_html += '<option value="0">Other</option>';

				$('#city').html(_html);

			}

		});

	}

}
	</script>
	
</body>
</html>