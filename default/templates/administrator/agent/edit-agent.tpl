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
		<form name="editAgentForm" id="agentEdit" action="{$adminroot}/agent/edit" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$agentuserArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-edit"></i>Edit agent information</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>name</label>
									<input type="text" class="form-control" name="name" placeholder="Enter name" value="{$agentuserArray['name']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row">
									<div class="col-10">
										<div class="form-group">
											<label>Profile picture</label>
												<input class="form-control" type="file" id="image" name="image" value="" />
												<input class="form-control" type="text" id="image" name="image" value="{$agentuserArray['img']}" hidden />	
										</div>
									</div>
									<div class="col-2">
										<div class="form-group">
											<img class="" src="{SITE_URL}/administrator/source/upload/agent/{$agentuserArray['img']}" style="float: right; height: 50px; width:50px; margin-top: 30%" />
										</div>
									</div>
								</div>	
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder="Enter email" value="{$agentuserArray['email']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>phone</label>
									<input type="text" class="form-control" name="phone" placeholder="Enter phone" value="{$agentuserArray['phone']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Office phone</label>
									<input type="text" class="form-control" name="office_phone" placeholder="Enter office phone no" value="{$agentuserArray['office_phone']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>FAX</label>
									<input type="text" class="form-control" name="fax" placeholder="Enter FAX" value="{$agentuserArray['fax']}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Description</label>
									<input type="text" class="form-control" name="description" placeholder="Enter" value="{$agentuserArray['description']}" required>
								</div>
							</div>
							
						</div>
				<p><button class="btn_1 medium" name="agentEdit" type="submit">Update</button></p>
					</div>
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