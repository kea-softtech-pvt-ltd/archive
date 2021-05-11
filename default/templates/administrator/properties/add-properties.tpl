<!doctype html>
<style>
.chosen-container.chosen-container-multi {
    width: 100%!important;
}
.error{
    font-weight: 500;
   color:red!important;
}
.form-control.required.wingsid.error,.form-control.unitwingsid.required.error,.form-control.unitfloorsid.required.error,.form-control.required.error{
	color:black!important;
}
.user-tabs a.nav-link {
    pointer-events: none;
}
</style>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}	

		{* <form name="addBuilderForm" action="{$adminroot}/properties/add" method="post" enctype="multipart/form-data">*}
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
							<li class="nav-item"><a href="#properties_other" data-toggle="tab" class="nav-link" title="Other">Other</a></li>
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
				<input type="hidden" id="action" name="action"/>
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
					<!--<input type="text" name="builder_name" id="builder_name" class="form-control" placeholder="Builder name" />-->
						<select class="form-control"  name="builder_name" id="builder_name" {if ($smarty.session.role == 3)} style="pointer-events:none" {/if}>
							<option value="">Select Builder</option>
								{foreach from=$builderListArray key=k item=v}
									<option   {if ($smarty.session.role == 3)} {if ($smarty.session.id == $v['id'])} selected {/if} {/if} value="{$v['id']}">{$v['name']}</option>
								{/foreach}
						</select>
						
						<div class="text-danger" id="name_error"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Start date</label>
						<input type="text" name="started_date" id="started_date" class="form-control" placeholder="Select date" />
						<div class="text-danger" id="started_date_error"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Possession date</label>
						<input type="text" name="possession_date" id="possession_date" class="form-control" placeholder="Select date" />
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
				
				<a href="#0" class="btn_1 medium add-unit-list-item" id="addWing" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Wings</a>
			</div>
				<form id="wings-form" action="" method="POST">
					<div class="alert alert-success text-center col-md-12" id="pro_wing_sucess" style="width:100%;display:none;"></div>				
					<div id="dynamic-wing-fields"></div>
						<button type="submit" class="btn btn-primary" name="next" id="next">Next >></button>
				</form>
				
		</div>	
		<div class="box_general padding_bottom tab-pane fade" id="properties_floar">
			<div class="header_box version_2">
				<h2><i class="fa fa-pen"></i>Floor Info</h2>
				<a href="#0" class="btn_1 medium" id="addFloor" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Floor</a>
			</div>
			<div class="alert alert-success text-center col-md-12" id="pro_floor_sucess" style="width:100%;display:none;"></div>
			<form id="floor-form" method="POST" action="">
			<div id="dynamic-floor-fields"></div>
			<button type="submit" class="btn btn-primary" name="next" id="next">Next >></button>
		
			</form>
		</div>
		<!----- other----->
		<div class="box_general padding_bottom tab-pane fade" id="properties_other">
			<div class="header_box version_2">
				<h2><i class="fa fa-map-marker"></i>Other</h2>
			</div>
			
			<form action="" method="POST" id="amenities-from" name="amenities-from" enctype="multipart/form-data">
			
			<div class="row">
				<div class="alert alert-success text-center col-md-12" id="pro_amenities_success" style="width:100%;display:none;"></div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Amenities</label>
						<select  data-placeholder="Select Amenities"  class="form-control chosen-select" multiple name="amenitieName[]" id="amenitieName" multiple>
							<option value="">Select Amenities</option>
								{foreach from=$amenitiesListArray key=k item=v}
									<option value="{$v['id']}">{$v['name']}</option>
								{/foreach}
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Neighbourhoods</label>
						<select data-placeholder="Select Neighbourhoods" name="neibhourhood[]" id="neibhourhood" multiple class="chosen-select">
   								{foreach from=$neighbourhoodListArray key=k item=v}
									<option value="{$v['id']}">{$v['name']}</option>
								{/foreach}
						</select>
						<div class="text-danger" id="neibhourhood_error"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label> picture</label>
						<input class="form-control" type="file" id="image1" name="image1[]" value="" multiple />
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-primary" name="next" id="next" onclick="saveAmenities()">Save</button>
			</form>	
		</div>
		<!---other------->
		<!----unit--->
				<div class="box_general padding_bottom fade" id="properties_unit">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Units Information</h2>
							<a href="#0" class="btn_1 medium add-unit-list-item" id="addUnit" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add unit</a>
						</div>
						
						<div class="alert alert-success text-center col-md-12" id="pro_success" style="width:100%;display:none;"></div>
						<form action="" method="POST" id="units-from">
							<table id="unit-list-container" style="width:100%;">
								 <div class="col-md-12 row" id="dynamic-fields"></div>
							</table>
			
					<button type="submit" class="btn btn-primary" name="next" id="next">Next >></button>	
					
					</div>
					</form>
					

		<!---end unit---->

</div>

	  </div>
	  <!-- /.container-fluid-->
   	</div>

    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}

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
		var image = $("#image").val();
		//var form_data = $('#property-form').serialize()+"&action=addProperties&propertyID="+propertyID;
		if(builder_name=="") 
        {
            $('#name_error').show();
            $('#name_error').html('Please select builder name.');
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

		var form = $('#property-form')[0];
		var formdata = new FormData(form);
		formdata.append('action', 'addProperties');
		$.ajax({     
				url: "{$adminroot}/ajaxproperties",
                type: "POST",
                data:formdata, 
				enctype: 'multipart/form-data',
				dataType:"JSON",
				processData: false,  // Important!
				contentType: false,
				cache: false,
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
			for(var i=0;i<response1.wingID.length;i++)
			{
				wingsid += '<input type="hidden" name="wingID[]" id="wingID" value="'+response1.wingID[i]+'">';
			}
			$("#wingsid").html(wingsid);
			$.ajax({
			type: "POST",

			 url: "{$adminroot}/ajaxproperties",
			
			data: { action: 'getWings', propertyID :propertyID },

			success: function(response)
			{
				
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
			var rowCount = $("#dynamic-fields tr").length;
			getWings(propertyID,rowCount);
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
            $('#pro_success').html('Add unit details successfully.');
        	setTimeout(function(){ $('#pro_success').hide(); }, 3000);
			setTimeout(function(){ $('.nav-tabs li:eq(5) a').tab('show') }, 4000);
           // setTimeout(function(){ window.location.href='{$adminroot}/properties'; }, 4000);
		},
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });	

	}	
}

function saveAmenities() {

	var _valid = 1;
	var propertyID = $("#propertyID").val();
	var neibhourhood = $("#neibhourhood").val();
	var amenitieName = $("#amenitieName").val();
	var image1 = $("#image1").val();

	var form = $('#amenities-from')[0];
	var formdata = new FormData(form);
	formdata.append('action', 'addAmenities');
	formdata.append('propertyID',propertyID);

	if(neibhourhood=="") 
        {
            $('#neibhourhood_error').show();
            $('#neibhourhood_error').html('Please select neibhourhood.');
            setTimeout(function(){ $('#neibhourhood_error').hide(); }, 2000);
            _valid = 0;
        }   
	if(_valid == 1) {
    $.ajax({
        url: "{$adminroot}/ajaxproperties",
                type: "POST",
                data:formdata, 
				enctype: 'multipart/form-data',
				dataType:"JSON",
				processData: false,  // Important!
				contentType: false,
				cache: false,
                success: function(result)
				{
				console.log(result);
				if(result.status == 1){
						$("#propertyID").val(result.propertyID);
						$('#pro_amenities_success').show();
           				$('#pro_amenities_success').html('Add other info successfully.');
        				setTimeout(function(){ $('#pro_amenities_success').hide(); }, 3000);
            			setTimeout(function(){ window.location.href='{$adminroot}/properties'; }, 4000);
						
					//	$('.nav-tabs li:eq(1) a').tab('show')  // its also work.	
					}

				},
    });	
	}
	
}


function getWings(propertyID,rowCount,classnm=''){
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
					console.log(data_obj);
					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].wing+'">'+data_obj.result[i].name+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	

				if(rowCount>=1 && classnm !=''){
					$('.unitwingsid').html(_html);
					
				}else{
					$('#unitwingsid_'+rowCount).html(_html);
				}
				

			}

		});
}

function getWing(propertyID,rowCount,classnm=''){
			$.ajax({
			type: "POST",

			 url: "{$adminroot}/ajaxproperties",
			
			data: { action: 'getWings', propertyID :propertyID },

			success: function(response){
				
				var data_obj = JSON.parse(response);
				console.log(data_obj.result);
				var _html = '<option value="">Select  Wing </option>';
				
				if(data_obj.message == 'success')

				{

					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].w_id+'">'+data_obj.result[i].name+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	
				//alert(_html);
				if(rowCount>=1 && classnm =='yes'){
					
					$('.wingsid').html(_html);
					
				}else{
					$('#wing'+rowCount).html(_html);
				}
			}

		});
}

$('body').on('change', '.unitwingsid', function() {
		var wingsID = $(this).val();
		var element = $(this).attr('id');
		var elementID = element.split("_");
		console.log(elementID[1]);
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

				$('#unitfloorsid_'+elementID[1]).html(_html);

			}

		});
});
</script>

<script type="text/javascript">
$(document).ready(function() {

$().ready(function () {
	
	$("#wings-form").validate({
         submitHandler: function (form) {
			var propertyID = $("#propertyID").val();
			var form_data = $('#wings-form').serialize()+"&action=addWing&propertyID="+propertyID;

				$.ajax({
				type: "POST",
				url: "{$adminroot}/ajaxproperties",
				data: form_data,
				dataType: "json",
				success: function(response1){
					//data - response from server
					var wingsid ='';
					for(var i=0;i<response1.wingID.length;i++)
					{
						wingsid += '<input type="hidden" name="wingID[]" id="wingID" value="'+response1.wingID[i]+'">';
					}
					$("#wingsid").html(wingsid);
					var rowCount = $("#dynamic-floor-fields div .row").length;
					var classnm = 'yes';
					getWing(propertyID,rowCount+1,classnm);

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
           return false;
         },
    });
	// Wings Form Validation

	$("#floor-form").validate({
         submitHandler: function (form) {

			var propertyID = $("#propertyID").val();
			var form_data = $('#floor-form').serialize()+"&action=addFloor&propertyID="+propertyID;
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
				var numItems = $('#dynamic-floor-fields div .row').length;
				//alert(numItems);
				var classnm = 'yes';
				getWings(propertyID,numItems+1,classnm);
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
	},
    });
	// Wings Form Validation

	$("#units-from").validate({
         submitHandler: function (form) {
			var propertyID = $("#propertyID").val();
			var form_data = $('#units-from').serialize()+"&action=addUnits&propertyID="+propertyID;
			var unitsID = $("#unitsID").val();
				$.ajax({
				type: "POST",
				url: "{$adminroot}/ajaxproperties",
				data: form_data,
				dataType: "json",
				success: function(response){
					//data - response from server
					console.log(response);
					$('#pro_success').show();
					$('#pro_success').html('Add unit info successfully.');
					setTimeout(function(){ $('#pro_success').hide(); }, 3000);
					setTimeout(function(){ $('.nav-tabs li:eq(5) a').tab('show') }, 4000);
					//setTimeout(function(){ window.location.href='{$adminroot}/properties'; }, 4000);
				},
				error: function (jqXHR, textStatus, errorThrown)
				{

				}
			});	
         },
    });
    // Units Form Validation
}); 

// Select units

    var count = 1;

    dynamic_field(count);
    function dynamic_field(number) {

		var unitsType = {json_encode($unitsTypeListArray)};
		var proType = {json_encode($proTypeListArray)};
		var unitop = '';
		var proop = '';
		for(var i=0;i<unitsType.length;i++)
		{
			unitop += '<option value='+unitsType[i]['name']+'>'+unitsType[i]['name']+'</option>';	
			
		}
		for(var i=0;i<proType.length;i++)
		{
		//	proop += '<option value='+proType[i]['id']+'>'+proType[i]['name']+'</option>'; its also work
			proop += '<option value='+proType[i]['name']+'>'+proType[i]['name']+'</option>';
			
		}
        html  = '<tr class="unit-list-item"  id="div_'+ number +'">';
		html += '<td>';
		html += '<div class="row">';
		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Wings</label>';
		html += '<input type="hidden" name="unitsID[]" id="unitsID">';
		html += '<select  class="form-control unitwingsid required" id="unitwingsid_'+number+'" name="unitwingsid[]">';
    	html += '<option value="">Select Wing</option>';
    	html += '</select>';
		html += '<div class="text-danger" id="unitsID_error"></div>';
		html += '</div>';
		html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Floor</label>';
		html += '<select  class="form-control unitfloorsid required" id="unitfloorsid_'+number+'" name="unitfloorsid[]">';
        html += '<option value="">Select Floor</option>';
        html += '</select>';
		html += '</div>';
        html += '</div>';


		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Type</label>';
		html += '<select  class="form-control required" name="name[]" id="name'+number+'">';
		html += '<option value="">Select Units Type</option>';
		html += unitop;
		html += '</select>';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Title</label>';
		html += '<select  class="form-control required" name="title[]" id="title'+number+'">';
		html += '<option value="">Select Property Type</option>';
		html += proop;
		html += '</select>';
	//	html += '<input type="text" class="form-control" id="title_'+number+'" name="title[]" placeholder="Unit title name" >';
		html += '</div>';
        html += '</div>';

		//html += '<div class="col-md-3">';
	//	html += '<div class="form-group">';
	//	html += '<label>Size</label>';
	//	html += '<input type="text" class="form-control required" id="size_'+number+'" name="size[]" placeholder="Enter Size" >';
	//	html += '</div>';
    //    html += '</div>';


		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Price on per square foot</label>';
		html += '<input type="text" class="form-control required" id="price_'+number+'" name="price[]" placeholder="Enter Price" >';
		html += '</div>';
        html += '</div>';


		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Carpet area</label>';
		html += '<input type="text" class="form-control required" id="carpet_area_'+number+'" name="carpet_area[]" placeholder="Enter carpet area" >';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Builtup area</label>';
		html += '<input type="text" class="form-control required" id="built_area_'+number+'" name="built_area[]" placeholder="Enter carpet area" >';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Total no.of taric</label>';
		html += '<input type="text" class="form-control required" id="tares_'+number+'" name="tares[]" placeholder="Total no.of taric" >';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Total no.of bath</label>';
		html += '<input type="text" class="form-control required" id="bath_'+number+'" name="bath[]" placeholder="Total no.of bath" >';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Total no.of parking</label>';
		html += '<input type="text" class="form-control required" id="parking_'+number+'" name="parking[]" placeholder="Total no.of parking" >';
		html += '</div>';
        html += '</div>';

        if (number > 1) {
            html += '<div class="col-md-1">';
            html += '<div class="form-group">';
            html += '<label>&nbsp;</label>';
			html += '<a class="remove" href="#"><i class="fa fa-fw fa-remove"></i></a>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-fields').append(html);
			var propertyID = $("#propertyID").val();
			getWings(propertyID,number);	
        } else {

			html += '<div class="col-md-1">';
            html += '<div class="form-group">';
            html += '<label>&nbsp;</label>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-fields').html(html);
        }
    }

    $(document).on('click','#addUnit', function () {
        count++;
        dynamic_field(count);
		
    });
    $(document).on('click', '.remove', function () {
        count--;
        var row_id = $(this).parent().parent().parent().parent().parent().attr('id');
        $(this).closest("#" + row_id).remove();
    });

	$("#add").click(function(){
		var rowCount = $("#dynamic-fields tr").length;
		var propertyID = $("#propertyID").val();
		getWings(propertyID,rowCount+1);
	});

// Dynamic Wings

var count = 1;

    dynamic_wing_field(count);
    function dynamic_wing_field(number) {
		html  = '';
		html += '<div class="row" id="div_'+ number +'">';
		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Wing</label>';
		html += '<span id="wingsid" name="wingsid"></span>';
		html += '<input type="text" id="wings'+ number +'" name="wings[]" class="form-control required" placeholder="wing">';
		html +=	'<div class="text-danger" id="wings_error"></div>';
		html += '</div>';
		html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Total no.fo floor</label>';
		html += '<input type="text" id="totalFloor'+ number +'" name="totalFloor[]" class="form-control required" placeholder="Total no.of.floor">';
		html += '<div class="text-danger" id="totalFloor_error"></div>';
		html += '</div>';
        html += '</div>';


        if (number > 1) {
            html += '<div class="col-md-1">';
            html += '<div class="form-group">';
            html += '<label>&nbsp;</label>';
			html += '<a class="removewing" href="#"><i class="fa fa-fw fa-remove"></i></a>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-wing-fields').append(html);
        } else {

			html += '<div class="col-md-1">';
            html += '<div class="form-group">';
            html += '<label>&nbsp;</label>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-wing-fields').html(html);
        }
    }

    $(document).on('click','#addWing', function () {
        count++;
        dynamic_wing_field(count);
		
    });
    $(document).on('click', '.removewing', function () {
        count--;
        var row_id = $(this).parent().parent().parent().attr('id');
        $(this).closest("#" + row_id).remove();
    });

	$("#addWing").click(function(){
		var rowCount = $("#dynamic-wing-fields tr").length;
		var propertyID = $("#propertyID").val();
		getWings(propertyID,rowCount+1);
	});


// Dynamic WING


// Dynamic Floor

var count = 1;

    dynamic_floor_field(count);
    function dynamic_floor_field(number) {
		html  = '';
		html += '<div class="row" id="div_'+ number +'">';
		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Wing</label>';
		html += '<span id="floorsid"></span>';
		html += '<select name="wing[]" id="wing'+ number +'" class="form-control required wingsid">';
		html += '<option value="">Select Wing</option>';
		html += '</select>';
		html += '<div class="text-danger" id="wing_error"></div>';
		
		html += '</div>';
		html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Floor</label>';
		html += '<input type="text" class="form-control required" id="floor'+ number +'" name="floor[]" placeholder="Floor No">';
		html += '<div class="text-danger" id="floor_error"></div>';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Total no.of flat</label>';
		html += '<input type="text" class="form-control required" id="flat'+ number +'" name="flat[]"  placeholder="Total no.of flats">';
		html += '<div class="text-danger" id="floor_error"></div>';
		html += '</div>';
        html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Specality</label>';
		html += '<textarea type="text" class="form-control required" id="specality'+ number +'" name="specality[]" placeholder="Specality"></textarea>';
		html += '<div class="text-danger" id="specality_error"></div>';
		html += '</div>';
        html += '</div>';


        if (number > 1) {
            html += '<div class="col-md-1">';
            html += '<div class="form-group">';
            html += '<label>&nbsp;</label>';
			html += '<a class="removeFloor" href="#"><i class="fa fa-fw fa-remove"></i></a>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-floor-fields').append(html);
			console.log("counts"+number);
			var propertyID = $("#propertyID").val();
			getWing(propertyID,number);
        } else {

			html += '<div class="col-md-1">';
            html += '<div class="form-group">';
            html += '<label>&nbsp;</label>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-floor-fields').html(html);
        }
		
    }

    $(document).on('click','#addFloor', function () {
        count++;
        dynamic_floor_field(count);
		var propertyID = $("#propertyID").val();
		
		
    });
    $(document).on('click', '.removeFloor', function () {
        count--;
        var row_id = $(this).parent().parent().parent().attr('id');
        $(this).closest("#" + row_id).remove();
    });

	/*$("#addFloor").click(function(){
		var rowCount = $("#dynamic-floor-fields row").length;
		var propertyID = $("#propertyID").val();
		alert('k-kk'+rowCount);
		getWing(propertyID,rowCount+1);
	});*/


});


</script>

<script>
var bindDateRangeValidation = function (f, s, e) {
    if(!(f instanceof jQuery)){
			console.log("Not passing a jQuery object");
    }
  
    var jqForm = f,
        startDateId = s,
        endDateId = e;
  
    var checkDateRange = function (startDate, endDate) {
        var isValid = (startDate != "" && endDate != "") ? startDate <= endDate : true;
        return isValid;
    }

    var bindValidator = function () {
        var bstpValidate = jqForm.data('bootstrapValidator');
        var validateFields = {
            startDate: {
                validators: {
                    notEmpty: { message: 'This field is required.' },
                    callback: {
                        message: 'Start Date must less than or equal to End Date.',
                        callback: function (startDate, validator, $field) {
                            return checkDateRange(startDate, $('#' + endDateId).val())
                        }
                    }
                }
            },
            endDate: {
                validators: {
                    notEmpty: { message: 'This field is required.' },
                    callback: {
                        message: 'End Date must greater than or equal to Start Date.',
                        callback: function (endDate, validator, $field) {
                            return checkDateRange($('#' + startDateId).val(), endDate);
                        }
                    }
                }
            },
          	customize: {
                validators: {
                    customize: { message: 'customize.' }
                }
            }
        }
        if (!bstpValidate) {
            jqForm.bootstrapValidator({
                excluded: [':disabled'], 
            })
        }
      
        jqForm.bootstrapValidator('addField', startDateId, validateFields.startDate);
        jqForm.bootstrapValidator('addField', endDateId, validateFields.endDate);
      
    };

    var hookValidatorEvt = function () {
        var dateBlur = function (e, bundleDateId, action) {
            jqForm.bootstrapValidator('revalidateField', e.target.id);
        }

        $('#' + startDateId).on("dp.change dp.update blur", function (e) {
            $('#' + endDateId).data("DateTimePicker").setMinDate(e.date);
            dateBlur(e, endDateId);
        });

        $('#' + endDateId).on("dp.change dp.update blur", function (e) {
            $('#' + startDateId).data("DateTimePicker").setMaxDate(e.date);
            dateBlur(e, startDateId);
        });
    }

    bindValidator();
    hookValidatorEvt();
};


$(function () {
    var sd = new Date($("#started_date").val()), ed = new Date($("#possession_date").val());
  
    $('#started_date').datetimepicker({ 
      pickTime: false, 
      format: "YYYY-MM-DD", 
      defaultDate: ed, 
      maxDate: sd
    });
  
    $('#possession_date').datetimepicker({ 
      pickTime: false, 
      format: "YYYY-MM-DD", 
      defaultDate: sd, 
      minDate: ed 
    });

    //passing 1.jquery form object, 2.start date dom Id, 3.end date dom Id
    bindDateRangeValidation($("#property-form"), 'started_date', 'possession_date');
});	

$('body').on('change', '.wingsid', function() {
	var wing_id = $(this).val();
	var getFloorInfo = 'getFloorInfo';
	alert(wing_id);
	$.ajax({     
		url:  "{$adminroot}/ajaxproperties",
		type: "POST",
		data: { wing_id: wing_id, action: 'getFloorInfo' },
		dataType:"JSON",

		success: function(result)
		{	
			console.log(result);
			var wingselect = $('#dynamic-floor-fields select[name^="wing"]').val();;
			var floorselect = $('#dynamic-floor-fields input[name^="floor"]').val();;
		console.log(wingselect);
		console.log(floorselect);

		}
	});
});
</script>
</body>
</html>