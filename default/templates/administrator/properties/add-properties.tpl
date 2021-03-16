<!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}	

		{* <form name="addBuilderForm" action="{$adminroot}/properties/add" method="post" enctype="multipart/form-data">		 *}
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
      <!-- Breadcrumbs-->
      	<div class="card-box tab-box">
				<div class="row user-tabs">
					<div class="col-lg-12 col-md-12 col-sm-12 line-tabs">
						<ul class="nav nav-tabs nav-tabs-bottom">
							<li class="nav-item"><a href="#properties_profile" data-toggle="tab" class="nav-link active">Properties Basic Info</a></li>
							<li class="nav-item"><a href="#properties_address" data-toggle="tab" class="nav-link" title="Address Info">Address Info</a></li>
							<li class="nav-item"><a href="#properties_wing" data-toggle="tab" class="nav-link" title="Assigne Assets">Wing Info</a></li>
							<li class="nav-item"><a href="#properties_floar" data-toggle="tab" class="nav-link" title="Assigne Assets">Floor Info</a></li>
							<li class="nav-item"><a href="#properties_unit" data-toggle="tab" class="nav-link" title="Units Assets">Units Info</a></li>
						</ul>
					</div>
				</div>
		</div>
		<div class="tab-content">
		<div class="box_general padding_bottom tab-pane fade show active" id="properties_profile">
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>Properties Basic info</h2>
			</div>
				<input type="hidden" id="propertyID" name="propertyID"/>
			<form id="property-form" method="POST" action="" enctype="multipart/form-data">
				<div class="alert alert-success text-center col-md-12" id="pro_BasicInfo" style="width:100%;display:none;"></div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="name" id="name" class="form-control" placeholder="Project name" />
						<div class="text-danger" id="names_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Builder name</label>
						<input type="text" name="builder_name" id="builder_name" class="form-control" placeholder="Builder name" />
						<div class="text-danger" id="name_error"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Start date</label>
						<input type="date" name="started_date" id="started_date" class="form-control" placeholder="Select date" />
						<div class="text-danger" id="started_date_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Possession date</label>
						<input type="date" name="possession_date" id="possession_date" class="form-control" placeholder="Select date" />
						<div class="text-danger" id="possession_date_error"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>RERA number</label>
						<input type="text" name="rera_number" id="rera_number" class="form-control" placeholder="RERA" />
						<div class="text-danger" id="rera_number_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Porject picture</label>
						<input class="form-control" type="file" id="image" name="image[]" value="" multiple />
					</div>
				</div>
			</div>
			<!-- /row-->
			<button type="button" class="btn btn-primary" name="next" id="next" onclick="myFunction()">Next >></button>
			</form>
		</div>
	
		<!-- /box_general-->
		
		<div class="box_general padding_bottom tab-pane fade" id="properties_address">
			<div class="header_box version_2">
				<h2><i class="fa fa-map-marker"></i>Address Info</h2>
			</div>
			<div class="alert alert-success text-center col-md-12" id="pro_Address_sucess" style="width:100%;display:none;"></div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Address</label>
						<input type="hidden" name="addressID" id="addressID">
						<input type="text" name="address" id="address" class="form-control" placeholder="Your address" />
						<div class="text-danger" id="address_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Add Url</label>
						<input type="text" name="description" id="description" class="form-control" placeholder="Your address Url">
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-primary" name="next" id="next" onclick="nextWing()">Next >></button>
		</div>
		<!-- /box_general-->

		<div class="box_general padding_bottom tab-pane fade" id="properties_wing">
			<div class="header_box version_2">
				<h2><i class="fa fa-delicious"></i>Wing Info</h2>
				<a href="#0" class="btn_1 medium add-wing-list-item" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Wings</a>
			</div>
			<div class="row">
				<div class="col-md-12">
				<form id="wings-form" action="" method="POST">
					<div class="form-group">
					<div class="alert alert-success text-center col-md-12" id="pro_wing_sucess" style="width:100%;display:none;"></div>
						<label>Wing</label>
							<table id="wing-list-container" style="width:100%;">
								<tr class="wing-list-item">
									<td>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<span id="wingsid" name="wingsid"></span>
													<input type="text" id="wings" name="wings[]" class="form-control" placeholder="wing">
													<div class="text-danger" id="wings_error"></div>
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<input type="text" id="totalFloor" name="totalFloor[]" class="form-control" placeholder="Total no.of.floor">
													<div class="text-danger" id="totalFloor_error"></div>
												</div>
											</div>
											<div class="col-md-1">
												<div class="form-group">
													<a class="delete" href="#"><i class="fa fa-fw fa-remove"></i></a>
												</div>
											</div>
										</div>
									</td>
								</tr>
						</table>
					<button type="button" class="btn btn-primary" name="next" id="next" onclick="nextFloor()">Next >></button>
					</div>
				</form>
				</div>
			</div>
		</div>	
		<div class="box_general padding_bottom tab-pane fade" id="properties_floar">
			<div class="header_box version_2">
				<h2><i class="fa fa-pen"></i>Floor Info</h2>
				<a href="#0" class="btn_1 medium add-floor-list-item" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Floor</a>
			</div>
			<form id="floor-form" method="POST" action="">
			<div class="row">
			
			<table id="floor-list-container" style="width:100%;">
						<tr class="floor-list-item">
							<td>
								<div class="row">
								<div class="alert alert-success text-center col-md-12" id="pro_floor_sucess" style="width:100%;display:none;"></div>
								<div class="col-md-2">
										<div class="form-group">
											<span id="floorsid"></span>
											<select name="wing[]" id="wing" class="form-control">
												<option value="">Select Wing</option>
											</select>
											<div class="text-danger" id="wing_error"></div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control" id="floor" name="floor[]" placeholder="Floor No">
											<div class="text-danger" id="floor_error"></div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control" id="flat" name="flat[]"  placeholder="Total no.of flats">
											<div class="text-danger" id="flat_error"></div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<textarea type="text" class="form-control" id="specality" name="specality[]" placeholder="Specality"></textarea>
											<div class="text-danger" id="specality_error"></div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="form-group">
											<a class="delete1" href="#"><i class="fa fa-fw fa-remove"></i></a>
										</div>
									</div>
								</div>
							</td>
							
						</tr>
						
					</table>
					<button type="button" class="btn btn-primary" name="next" id="next" onclick="nextUnit()">Next >></button>
			</div>
			</form>
		</div>
		<!----unit--->
				<div class="box_general padding_bottom fade" id="properties_unit">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Units Information</h2>
							<a href="#0" class="btn_1 medium add-unit-list-item" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add unit</a>
						</div>
						
						<div class="alert alert-success text-center col-md-12" id="pro_success" style="width:100%;display:none;"></div>
						<form action="" method="POST" id="units-from">
							<table id="unit-list-container" style="width:100%;">
							<tr class="unit-list-item">
							<td>
							<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label>Wings</label>
									<input type="hidden" name="unitsID[]" id="unitsID">
									<select  class="form-control"id="unitwingsid" name="unitwingsid[]">
										<option vslue="">Select Wing</option>
									</select>
									<div class="text-danger" id="unitsID_error"></div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Floor</label>
									<select  class="form-control unitfloorsid"id="unitfloorsid" name="unitfloorsid[]">
										<option value="">Select Floor</option>
									</select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Units name</label>
									<input type="text" class="form-control"id="name" name="name[]" placeholder="Units name type" >
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" id="title" name="title[]" placeholder="Unit title name" >
								</div>
							</div>
							
							<div class="col-md-3">
								<div class="form-group">
									<label>Size</label>
									<input type="text" class="form-control" id="size" name="size[]" placeholder="Enter Size" >
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Price</label>
									<input type="text" class="form-control" id="price" name="price[]" placeholder="Enter Price" >
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Carpet area</label>
									<input type="text" class="form-control" id="carpet_area" name="carpet_area[]" placeholder="Enter carpet area" >
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>Builtup area</label>
									<input type="text" class="form-control" id="built_area" name="built_area[]" placeholder="Enter carpet area" >
								</div>
							</div>
							<div class="col-md-1">
								<div class="form-group">
										<a class="delete2" href="#"><i class="fa fa-fw fa-remove"></i></a>
								</div>
							</div>
						</div>
				</td>
							
				</tr>	
			</table>
			
					<button type="button" class="btn btn-primary" name="next" id="next" onclick="saveProperties()">Save</button>	
					
					</div>
					</form>
					

		<!---end unit---->
</div>
	  </div>
	  <!-- /.container-fluid-->
   	</div>
	<script>

	/*window.onbeforeunload = function() {
   return "Do you really want to leave our brilliant application?";
   //if we return nothing here (just calling return;) then there will be no pop-up question at all
   //return;
};*/
function myFunction() {

		var _valid = 1;
		var propertyID = $("#propertyID").val();
		var name = $("#name").val();
		var builder_name = $("#builder_name").val();
		var started_date = $("#started_date").val();
		var possession_date = $("#possession_date").val();
		var rera_number = $("#rera_number").val();
		var form_data = $('#property-form').serialize()+"&action=addProperties&propertyID="+propertyID;
		if(builder_name=="") 
        {
            $('#name_error').show();
            $('#name_error').html('Please enter builder name.');
            setTimeout(function(){ $('#name_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(name=="") 
        {
            $('#names_error').show();
            $('#names_error').html('Please enter properti name.');
            setTimeout(function(){ $('#names_error').hide(); }, 2000);
            _valid = 0;
        } 
		if(started_date=="") 
        {
            $('#started_date_error').show();
            $('#started_date_error').html('Please select start date.');
            setTimeout(function(){ $('#started_date_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(possession_date=="") 
        {
            $('#possession_date_error').show();
            $('#possession_date_error').html('Please select possession date.');
            setTimeout(function(){ $('#possession_date_error').hide(); }, 2000);
            _valid = 0;
        }   
		if(rera_number=="") 
        {
            $('#rera_number_error').show();
            $('#rera_number_error').html('Please enter rera number.');
            setTimeout(function(){ $('#rera_number_error').hide(); }, 2000);
            _valid = 0;
        }   

		if(_valid == 1) {
		$.ajax({     
				url: "{$adminroot}/ajaxproperties",
              //  url: "ajax/ajax_department.php",
                type: "POST",
                data:form_data, 
				dataType:"JSON",
                success: function(result)
                {	
                    console.log(result);
					if(result.status == 1){
						$("#propertyID").val(result.propertyID);
						$('#pro_BasicInfo').show();
            			$('#pro_BasicInfo').html('Add propertie basic info successfully.');
        				setTimeout(function(){ $('#pro_BasicInfo').hide(); }, 3000);
						setTimeout(function(){ $('.nav-tabs li:eq(1) a').tab('show') }, 4000);
						
					//	$('.nav-tabs li:eq(1) a').tab('show')  // its also work.	
					}
                }
            });
		}   
}


function nextWing() 
{
		var _valid = 1;
		var address 	= $("#address").val();
		var description = $("#description").val();
		var propertyID = $("#propertyID").val();
		var addressID = $("#addressID").val();

		if(address=="") 
        {
            $('#address_error').show();
            $('#address_error').html('Please enter address.');
            setTimeout(function(){ $('#address_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(_valid == 1) {
		$.ajax({     
				url: "{$adminroot}/ajaxproperties",
                type: "POST",
                data: { 
				action : 'addPropertieAddress',
				address : address,
				description:description,
				propertyID:propertyID,
				addressID:addressID,
				},
				dataType:"JSON",
                success: function(result)
                {	
                    console.log(result);
					if(result.status == 1){
						$("#addressID").val(result.addressID);
						$('#pro_Address_sucess').show();
            			$('#pro_Address_sucess').html('Add propertie address info successfully.');
        				setTimeout(function(){ $('#pro_Address_sucess').hide(); }, 3000);
						setTimeout(function(){ $('.nav-tabs li:eq(2) a').tab('show') }, 4000);
					//	$('.nav-tabs li:eq(2) a').tab('show');
					}
                }
            });
		}
}
function nextFloor() {

	var _valid = 1;
	var propertyID = $("#propertyID").val();
	var wings = $("#wings").val();
	var totalFloor = $("#totalFloor").val();
    var form_data = $('#wings-form').serialize()+"&action=addWing&propertyID="+propertyID;

	if(wings=="") 
        {
            $('#wings_error').show();
            $('#wings_error').html('Please enter wing.');
            setTimeout(function(){ $('#wings_error').hide(); }, 2000);
            _valid = 0;
        }  
	if(wings=="") 
        {
            $('#totalFloor_error').show();
            $('#totalFloor_error').html('Please enter total no.of.floor.');
            setTimeout(function(){ $('#totalFloor_error').hide(); }, 2000);
            _valid = 0;
        }  
	if(_valid == 1) {
    $.ajax({
        type: "POST",
        url: "{$adminroot}/ajaxproperties",
        data: form_data,
        dataType: "json",
        success: function(response1){
            //data - response from server
			var wingsid ='';
			for(var i=0;i<response1.wingID.length;i++){
				wingsid += '<input type="hidden" name="wingID[]" id="wingID" value="'+response1.wingID[i]+'">';
			}
			$("#wingsid").html(wingsid);
				$.ajax({
			type: "POST",

			 url: "{$adminroot}/ajaxproperties",
			
			data: { action: 'getWings', propertyID :propertyID },

			success: function(response){
				
				var data_obj = JSON.parse(response);
				
				var _html = '<option value="">Select  Wing </option>';
				
				if(data_obj.message == 'success')

				{

					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].name+'">'+data_obj.result[i].name+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	

				$('#wing').html(_html);

			}

		});
			$('#pro_wing_sucess').show();
            $('#pro_wing_sucess').html('Add propertie wing info successfully.');
        	setTimeout(function(){ $('#pro_wing_sucess').hide(); }, 3000);
			setTimeout(function(){ $('.nav-tabs li:eq(3) a').tab('show') }, 4000);
			//$('.nav-tabs li:eq(3) a').tab('show');
		},
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });

	}
				
}
function nextUnit() {

	var _valid = 1;
	var propertyID = $("#propertyID").val();
    var form_data = $('#floor-form').serialize()+"&action=addFloor&propertyID="+propertyID;
	var wing = $("#wing").val();
	var floor = $("#floor").val();
	var flat = $("#flat").val();
	//var specality = $("#specality").val();
	if(wing=="") 
        {
            $('#wing_error').show();
            $('#wing_error').html('Please select wing.');
            setTimeout(function(){ $('#wing_error').hide(); }, 2000);
            _valid = 0;
        } 
	if(floor=="") 
        {
            $('#floor_error').show();
            $('#floor_error').html('Please enter floor no.');
            setTimeout(function(){ $('#floor_error').hide(); }, 2000);
            _valid = 0;
        }   
	if(flat=="") 
        {
            $('#flat_error').show();
            $('#flat_error').html('Please enter total no.of flat.');
            setTimeout(function(){ $('#flat_error').hide(); }, 2000);
            _valid = 0;
        }   
	/*if(specality=="") 
        {
            $('#specality_error').show();
            $('#specality_error').html('Please enter specality_error.');
            setTimeout(function(){ $('#specality_error').hide(); }, 2000);
            _valid = 0;
        }   */
	if(_valid == 1) {
    $.ajax({
        type: "POST",
        url: "{$adminroot}/ajaxproperties",
        data: form_data,
        dataType: "json",
        success: function(response){
            //data - response from server
			var floorsid ='';
			for(var i=0;i<response.floorID.length;i++){
				floorsid += '<input type="hidden" name="floorID[]" id="floorID" value="'+response.floorID[i]+'">';
			}
			$("#floorsid").html(floorsid);
			getWings(propertyID);
			$('#pro_floor_sucess').show();
            $('#pro_floor_sucess').html('Add propertie floor info successfully.');
        	setTimeout(function(){ $('#pro_floor_sucess').hide(); }, 3000);
			setTimeout(function(){ $('.nav-tabs li:eq(4) a').tab('show') }, 4000);
		//	$('.nav-tabs li:eq(4) a').tab('show');
		},
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });
	}			
}
function saveProperties() {

	var _valid = 1;
	var propertyID = $("#propertyID").val();
    var form_data = $('#units-from').serialize()+"&action=addUnits&propertyID="+propertyID;
	var unitsID = $("#unitsID").val();
	if(unitsID=="") 
        {
            $('#unitsID_error').show();
            $('#unitsID_error').html('Please select wing.');
            setTimeout(function(){ $('#unitsID_error').hide(); }, 2000);
            _valid = 0;
        }   
	if(_valid == 1) {
    $.ajax({
        type: "POST",
        url: "{$adminroot}/ajaxproperties",
        data: form_data,
        dataType: "json",
        success: function(response){
            //data - response from server
			console.log(response);
			$('#pro_success').show();
            $('#pro_success').html('Add all properties details successfully.');
        	setTimeout(function(){ $('#pro_success').hide(); }, 3000);
            setTimeout(function(){ window.location.href='{$adminroot}/properties'; }, 4000);
		},
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });	

	}	
}


function getWings(propertyID){
			$.ajax({
			type: "POST",

			 url: "{$adminroot}/ajaxproperties",
			
			data: { action: 'getFloorWings', propertyID :propertyID },

			success: function(response){
				
				var data_obj = JSON.parse(response);
				console.log(data_obj.result);
				var _html = '<option value="">Select  Wing </option>';
				
				if(data_obj.message == 'success')

				{

					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].wing+'">'+data_obj.result[i].wing+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	
				$('#unitwingsid').html(_html);

			}

		});
}

</script>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
<script>

$('body').on('change', '#unitwingsid', function() {
		var wingsID = $(this).val();
		var propertyID = $("#propertyID").val();
		$.ajax({
			type: "POST",

			 url: "{$adminroot}/ajaxproperties",
			
			data: { action: 'getFloors', wingsID :wingsID,propertyID:propertyID },

			success: function(response){
				
				var data_obj = JSON.parse(response);
				console.log(response);
				var _html = '<option value="">Select  Floor </option>';
				
				if(data_obj.message == 'success')

				{

					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].floor+'">'+data_obj.result[i].floor+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	

				$('.unitfloorsid').html(_html);

			}

		});
});
</script>

</body>
</html>