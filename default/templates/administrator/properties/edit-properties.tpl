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
				<input type="hidden" id="propertyID" name="propertyID" value="{$builderuserArray['id']}"/>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Name</label>
					
						<input type="text" name="name" id="name" class="form-control" placeholder="Project name" value="{$builderuserArray['name']}" />
						<div class="text-danger" id="names_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Builder name</label>
						<input type="text" name="builder_name" id="builder_name" class="form-control" placeholder="Builder name" value="{$builderuserArray['builder_name']}" />
						<div class="text-danger" id="name_error"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Start date</label>
						<input type="date" name="started_date" id="started_date" class="form-control" placeholder="Select date" value="{$builderuserArray['started_date']}" />
						<div class="text-danger" id="started_date_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Possession date</label>
						<input type="date" name="possession_date" id ="possession_date" class="form-control" placeholder="Select date" value="{$builderuserArray['possession_date']}" />
						<div class="text-danger" id="possession_date_error"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>RERA number</label>
						<input type="text" name="rera_number" id="rera_number" class="form-control" placeholder="RERA" value="{$builderuserArray['rera_number']}" />
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
		</div>
		<!-- /box_general-->
		
		<div class="box_general padding_bottom tab-pane fade" id="properties_address">
			<div class="header_box version_2">
				<h2><i class="fa fa-map-marker"></i>Address Info</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Address</label>
						<input type="hidden"name="addressID" id="addressID" value="{if isset ($addressPropertiesArray['a_id'])}{$addressPropertiesArray['a_id']} {/if}">
						<input type="text" name="address" id="address" class="form-control" placeholder="Your address" value="{if isset ($addressPropertiesArray['address'])}{$addressPropertiesArray['address']}{/if}" />
						<div class="text-danger" id="address_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Add Url</label>
						<input type="text" name="description" id="description" class="form-control"  placeholder="Your address Url" value="{if isset($addressPropertiesArray['description'])}{$addressPropertiesArray['description']}{/if}" />
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
						<label>Wing</label>
							
						<table id="wing-list-container" style="width:100%;">
							{if count($wingArray) > 0}
							{foreach from=$wingArray key=k item=v1}
							
								<tr class="wing-list-item">
									<td>
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<span id="wingsid" name="wingsid"></span>
													<input type="hidden" name="wingID[]" id="wingID" value="{$v1['w_id']}" />
													<input type="text" name="wings[]" id="wings" value="{$v1['name']}"  class="form-control" placeholder="Wing">
													<div class="text-danger" id="wings_error"></div>
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<input type="text" name="totalFloor[]" id="totalFloor" value="{$v1['totalFloor']}"  class="form-control" placeholder="Total no.of floor">
													<div class="text-danger" id="totalFloor_error"></div>
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
							
							{else}
								<tr class="wing-list-item">
									<td>
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<span id="wingsid" name="wingsid"></span>
													<input type="text" name="wings[]" id="wings"  class="form-control" placeholder="Wing">
													<div class="text-danger" id="wings_error"></div>
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<input type="text" name="totalFloor[]" id="totalFloor"  class="form-control" placeholder="Total no.of floor">
													<div class="text-danger" id="totalFloor_error"></div>
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
							{/if}
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
				{if count($floorsArray) > 0}
				{foreach from=$floorsArray key=k item=v1}
				<br>
						<tr class="floor-list-item">
							<td>
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<span id="floorsid"></span>
											<input type="hidden" name="floorID[]" id="floorID" value="{$v1['f_id']}">
											<select name="wing[]" class="form-control">
												<option value="">Select Wing</option>
												{foreach from=$wingArray key=k item=v2}
												<option {if $v1['wing'] == $v2['name'] } selected {/if} value="{$v2['name']}">{$v2['name']}</option>
												{/foreach}
											</select>
											<div class="text-danger" id="wing_error"></div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" name="floor[]" value="{$v1['floor']}" class="form-control" placeholder="Floor No">
											<div class="text-danger" id="floor_error"></div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control" name="flat[]" value="{$v1['flat']}"  placeholder="Total no.of flats">
											<div class="text-danger" id="flat_error"></div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<textarea type="text" class="form-control" name="specality[]"  placeholder="Specality">{$v1['specality']}</textarea>
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
							{/foreach}
							{else}
							<tr class="floor-list-item">
							<td>
								<div class="row">
								<div class="col-md-2">
										<div class="form-group">
											<span id="floorsid"></span>
											<select name="wing[]" id="wing" class="form-control">
												<option value="">Select Wing</option>
												{foreach from=$wingArray key=k item=v2}
												<option  value="{$v2['wing']}">{$v2['name']}</option>
												{/foreach}
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
						{/if}
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
						<div class="row">
							<table id="unit-list-container" style="width:100%;">
						{if count($unitsArray) > 0}
						{foreach from=$unitsArray key=k item=v1}
							<tr class="unit-list-item">
							<td>
							<div class="col-md-6">
								<div class="form-group">
									<label>Wings</label>
									<input type="hidden" name="unitsID[]" id="unitsID" value="{$v1['u_id']}">
									<select  class="form-control"id="unitwingsid" name="unitwingsid[]">
										<option vslue="{$v1['wing']}">{$v1['wing']}</option>
										{foreach from=$wingArray key=k item=v2}
											<option  value="{$v2['wing']}">{$v2['name']}</option>
										{/foreach}			
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Floor</label>
									<select  class="form-control unitfloorsid"id="unitfloorsid" name="unitfloorsid[]">
										<option value="{$v1['floor']}">{$v1['floor']}</option>
										{foreach from=$floorsArray key=k item=v2}
										<option  value="{$v2['floor']}">{$v2['floor']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Units name</label>
									<input type="text" class="form-control"id="name" name="name[]" placeholder="Units name type" value="{$v1['type']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" id="title" name="title[]" placeholder="Unit title name" value="{$v1['title']}" >
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Size</label>
									<input type="text" class="form-control" id="size" name="size[]" placeholder="Enter Size" value="{$v1['size']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Price</label>
									<input type="text" class="form-control" id="price" name="price[]" placeholder="Enter Price" value="{$v1['price']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Carpet area</label>
									<input type="text" class="form-control" id="carpet_area" name="carpet_area[]" placeholder="Enter carpet area" value="{$v1['carpet_area']}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Builtup area</label>
									<input type="text" class="form-control" id="built_area" name="built_area[]" placeholder="Enter carpet area" value="{$v1['built_area']}" >
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
				{/foreach}
				{else}
						<tr class="unit-list-item">
							<td>
							<div class="col-md-6">
								<div class="form-group">
									<label>Wings</label>
									<select  class="form-control"id="unitwingsid" name="unitwingsid[]">
										<option vslue="">Select Wing</option>
										{foreach from=$wingArray key=k item=v2}
										<option  value="{$v2['wing']}">{$v2['name']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Floor</label>
									<select  class="form-control unitfloorsid"id="unitfloorsid" name="unitfloorsid[]">
										<option value="">Select Floor</option>
										{foreach from=$floorsArray key=k item=v2}
										<option  value="{$v2['floor']}">{$v2['floor']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Units name</label>
									<input type="text" class="form-control"id="name" name="name[]" placeholder="Units name type" >
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" id="title" name="title[]" placeholder="Unit title name" >
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Size</label>
									<input type="text" class="form-control" id="size" name="size[]" placeholder="Enter Size" >
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Price</label>
									<input type="text" class="form-control" id="price" name="price[]" placeholder="Enter Price" >
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Carpet area</label>
									<input type="text" class="form-control" id="carpet_area" name="carpet_area[]" placeholder="Enter carpet area" >
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Builtup area</label>
									<input type="text" class="form-control" id="built_area" name="built_area" placeholder="Enter carpet area" >
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
				{/if}
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
                data: { 
				action : 'addProperties',
				propertyID:propertyID,
				name : name,
				builder_name:builder_name,
				started_date:started_date,
				possession_date:possession_date,
				rera_number:rera_number,
				},
				dataType:"JSON",
                success: function(result)
                {	
                    console.log(result);
					if(result.status == 1){
						$("#propertyID").val(result.propertyID);
						$('.nav-tabs li:eq(1) a').tab('show')
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
						$('.nav-tabs li:eq(2) a').tab('show');
					}
                }
            });
		}
}
function nextFloor() {

	var _valid = 1;
	var wings = $("#wings").val();
	var totalFloor = $("#totalFloor").val();
	var propertyID = $("#propertyID").val();
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
			$('.nav-tabs li:eq(3) a').tab('show');
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
			$('.nav-tabs li:eq(4) a').tab('show');
		},
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });
	}			
}
function saveProperties() {

	var propertyID = $("#propertyID").val();
    var form_data = $('#units-from').serialize()+"&action=addUnits&propertyID="+propertyID;;
    $.ajax({
        type: "POST",
        url: "{$adminroot}/ajaxproperties",
        data: form_data,
        dataType: "json",
        success: function(response){
            //data - response from server
			console.log(response);
			$('#pro_success').show();
            $('#pro_success').html('Add all properties successfully.');
        	setTimeout(function(){ $('#pro_success').hide(); }, 1000);
            setTimeout(function(){ window.location.href='{$adminroot}/properties'; }, 1000);
		},
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });		
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