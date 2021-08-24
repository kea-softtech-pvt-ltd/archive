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
#map {
  height: 200px;
  /* The height is 400 pixels */
  width: 100%;
  /* The width is the width of the web page */
}

</style>
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
				<input type="hidden" id="action" name="action"/>
			<form id="property-form" method="POST" action="" enctype="multipart/form-data">
				<div class="alert alert-success text-center col-md-12" id="pro_BasicInfo" style="width:100%;display:none;"></div>
				<input type="hidden" id="propertyID" name="propertyID" value="{$builderuserArray['id']}"/>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Name</label>
					
						<input type="text" name="name" id="name" class="form-control" placeholder="Project name" value="{$builderuserArray['name']}" />
						<div class="text-danger" id="names_error"></div>
					</div>
				</div>
				<div></div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Builder name</label>
						<select class="form-control"  name="builder_name" id="builder_name" id="builder_name" {if ($smarty.session.role == 3)} style="pointer-events:none" {/if} >
								{foreach from=$builderListArray key=k item=v}
									<option  {if $builderuserArray['builder_name'] == $v['id'] } selected {/if} value="{$v['id']}">{$v['name']}</option>
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
						<input type="date" name="started_date" id="started_date" class="form-control" placeholder="Select date." value="{$builderuserArray['started_date']}" />
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
						<input class="form-control" type="hidden" id="imageold" name="imageold" value="{$builderuserArray['images']}" />
					</div>
				</div>
				<div class="col-md-12">
					{$imagearray = explode(',',$builderuserArray['images'])}
						{foreach from=$imagearray key=index item=image name=count}
							<img class="d-block w-10" height="80px" width="80px" src="{SITE_URL}/administrator/upload/properties/{$image}"  alt="First slide" style="float: left">
						{/foreach}
				</div>
			</div><br>
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
						<input type="hidden"name="addressID" id="addressID" value="{if isset ($addressPropertiesArray['a_id'])}{$addressPropertiesArray['a_id']} {/if}">
						<input type="text" name="address" id="address" class="form-control" placeholder="Your address" value="{if isset ($addressPropertiesArray['address'])}{$addressPropertiesArray['address']}{/if}" />
						<div class="text-danger" id="address_error"></div>
						
					</div>
					<div class="form-group">
						<label>Add Url</label>
						<input type="text" name="description" id="description" class="form-control"  placeholder="Your address Url" value="{if isset($addressPropertiesArray['description'])}{$addressPropertiesArray['description']}{/if}" />
					</div>
				</div>

				<input type="hidden"name="lat" id="lat" value="{if isset ($addressPropertiesArray['lat'])}{$addressPropertiesArray['lat']}{/if}">
				<input type="hidden"name="lng" id="lng" value="{if isset ($addressPropertiesArray['lng'])}{$addressPropertiesArray['lng']}{/if}">
				<div class="col-md-6">
					<div id="map"></div>
				</div>
			</div>
			<button type="button" class="btn btn-primary" name="next" id="next" onclick="nextWing()">Next >></button>
		</div>
		<!-- /box_general-->

		<div class="box_general padding_bottom tab-pane fade" id="properties_wing">
			<div class="header_box version_2">
				<h2><i class="fa fa-delicious"></i>Wing Info</h2>
				<a href="#0" class="btn_1 medium" id="addWing" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Wings</a>
			</div>
				<form id="wings-form" action="" method="POST">
					<div class="form-group">	
						<table id="wing-list-container" style="width:100%;">
							{if count($wingArray) > 0}
							{foreach from=$wingArray key=k item=v1}
							
								<tr class="wing-list-item">
									<td>
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label>Wing</label>
													<span id="wingsid" name="wingsid"></span>
													<input type="hidden" name="wingID[]" id="wingID" value="{$v1['w_id']}" />
													<input type="text" name="wings[]" id="wings{$v1['w_id']}" value="{$v1['name']}"  class="form-control required" placeholder="Wing">
													<div class="text-danger" id="wings_error"></div>
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<label>Total no.of floor</label>
													<input type="text" name="totalFloor[]" id="totalFloor{$v1['w_id']}" value="{$v1['totalFloor']}"  class="form-control required" placeholder="Total no.of floor">
													<div class="text-danger" id="totalFloor_error"></div>
												</div>
											</div>
											<div class="col-md-2">
												<div class="form-group">
													<a class="delete" href="#" onclick="deleteWing()"><i class="fa fa-fw fa-remove"></i></a>
												</div>
											</div>
										</div>
									</td>
								</tr>
							{/foreach}
							
							{else}
									<div id="dynamic-wing-fields"></div>
							
							{/if}
							
						</table>
						<table>
							<div id="dynamic-wing-fields" ></div>
						</table>
						
					<button type="submit" class="btn btn-primary" name="next" id="next">Next >></button>
					</div>
				</form>
		</div>	
		<div class="box_general padding_bottom tab-pane fade" id="properties_floar">
			<div class="header_box version_2">
				<h2><i class="fa fa-pen"></i>Floor Info</h2>
				<a href="#0" class="btn_1 medium add-floor-list-item"  id="addFloor" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Floor</a>
			</div>
			<form id="floor-form" method="POST" action="">
			
				<table id="floor-list-container" style="width:100%;">
				{if count($floorsArray) > 0}
				{foreach from=$floorsArray key=k item=v1}
				<br>
						<tr class="floor-list-item">
							<td>
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label>Wing</label>
											<span id="floorsid"></span>
											<input type="hidden" name="floorID[]" id="floorID" value="{$v1['f_id']}">
											<select name="wing[]" id="wings{$v1['f_id']}" class="form-control wingsid required">
												<option value="">Select Wing.</option>
												{foreach from=$wingArray key=k item=v2}
													<option {if $v1['wing'] == $v2['w_id'] } selected {/if} value="{$v2['w_id']}">{$v2['name']}</option>
												{/foreach}
											</select>
											<div class="text-danger" id="wing_error"></div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Floor</label>
											<input type="text" name="floor[]" id="floor{$v1['f_id']}" value="{$v1['floor']}" class="form-control required" placeholder="Floor No">
											<div class="text-danger" id="floor_error"></div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Total no.of flat</label>
											<input type="text" class="form-control required" id="flat{$v1['f_id']}" name="flat[]" value="{$v1['flat']}"  placeholder="Total no.of flats">
											<div class="text-danger" id="flat_error"></div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label>Specality</label>
											<textarea type="text" class="form-control required" id="specality{$v1['f_id']}" name="specality[]"  placeholder="Specality">{$v1['specality']}</textarea>
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
								<div id="dynamic-floor-fields"></div>
							{/if}
					</table>
					<button type="submit" class="btn btn-primary" name="next" id="next">Next >></button>
			
			</form>
		</div>
		<!----- other----->
		<div class="box_general padding_bottom tab-pane fade" id="properties_other">
			<div class="header_box version_2">
				<h2><i class="fa fa-map-marker"></i>Other</h2>
			</div>
			<form action="" method="POST" id="amenities-from" name="amenities-from" type="multipart/form-data">
			<input type="hidden" id="otherId" name="otherId" value="{$otherArray[0]['o_id']}"/>
			<div class="row">
				<div class="alert alert-success text-center col-md-12" id="pro_amenities_success" style="width:100%;display:none;"></div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Amenities</label>
						<select data-placeholder="Select amenities" name="amenitieName[]" id="amenitieName" multiple class="chosen-select">
							<option value="">Select Amenities</option>
								
								{foreach from=$amenitiesListArray key=k item=v}
									
									<option {if (isset($amenities) && in_array($v['id'], $amenities) )} selected {/if} value="{$v['id']}">{$v['name']}</option>
								{/foreach}
						</select>
					</div>
				</div>
			</div>
		
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Neighbourhoods</label>
						<select data-placeholder="Select Neighbourhoods" name="neibhourhood[]" id="neibhourhood" multiple class="chosen-select" >
							<option value="">Select neighbourhoods</option>
								{foreach from=$neighbourhoodListArray key=k item=v}
									<option {if (isset($neighbourhoods) && in_array($v['id'], $neighbourhoods) )} selected {/if}  value="{$v['id']}">{$v['name']}</option>
								{/foreach}
						</select>
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
			<button type="button" class="btn btn-primary" name="next" id="next" onclick="saveAmenities()">Update</button>
			</form>	
		</div>
		<!---other------->
		<!----unit--->
			
				<div class="box_general padding_bottom fade" id="properties_unit">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Add Units Information</h2>
							<a href="#0" class="btn_1 medium add-unit-list-item" id="addUnit"  style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add unit</a>
						</div>
						<div class="alert alert-success text-center col-md-12" id="pro_success" style="width:100%;display:none;"></div>
						<form action="" method="POST" id="units-from">
						{if count($unitsArray) > 0}
						<table id="unit-list-container" style="width:100%;">
						
						{foreach from=$unitsArray key=k item=v1}
						<tr class="unit-list-item">
   <td>
      <div class="row">
         <div class="col-md-3">
            <div class="form-group">
               <label>Wings</label>
               <input type="hidden" name="unitsID[]" id="unitsID" value="{$v1['u_id']}">
			
               <select  class="form-control unitwingsid required"id="unitwingsid_{date('s')}{$v2['name']}" name="unitwingsid[]">
				  <option value=''>Select Wing</option>
					{foreach from=$floorsArray key=k item=v2}
						<option {if ($v1['wing'] == $v2['wing'])} selected {/if} value="{$v2['wing']}">{$v2['name']}</option>
					{/foreach}	
               </select>
               <div class="text-danger" id="unitsID_error"></div>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Floor</label>
               <select  class="form-control unitfloorsid required"id="unitfloorsid_{date('s')}{$v1['floor']}" name="unitfloorsid[]">
				  <option value="">Select Floor</option>
				{foreach from=$floorsArray key=k item=v2}
				<option  {if ($v1['floor'] == $v2['floor'])} selected {/if}  value="{$v2['floor']}">{$v2['floor']}</option>
				{/foreach}
               </select>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Type</label>
           <!-- <input type="text" class="form-control required" id="name{$v1['u_id']}" name="name[]" placeholder="Units name type"  value="{$v1['type']}"> -->
				<select  class="form-control required" id="name{date('s')}{$v['name']}" name="name[]">
				  {* <option value="{$v1['type']}">{$v1['type']}</option> *}
					{foreach from=$unitsTypeListArray key=k item=v}
						<option  {if ($v1['type'] == $v['id'])} selected {/if}  value="{$v['id']}">{$v['name']}</option>
						{* <option value="{$v['name']}">{$v['name']}</option> *}
					{/foreach}
               </select>
			</div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Title</label>
             <!--<input type="text" class="form-control required" id="title{$v1['u_id']}" name="title[]" placeholder="Unit title name" value="{$v1['title']}" >--->
				<select  class="form-control required"id="title{date('s')}{$v1['title']}" name="title[]">
				  {* <option value="{$v1['title']}">{$v1['title']}</option> *}
					{foreach from=$proTypeListArray key=k item=v}
						<option  {if ($v1['title'] == $v['id'])} selected {/if}  value="{$v['id']}">{$v['name']}</option>
						{* <option value="{$v['name']}">{$v['name']}</option> *}
					{/foreach}
               </select>
			</div>
         </div>
         {* <div class="col-md-3">
            <div class="form-group">
               <label>Size</label>
               <input type="text" class="form-control required"  name="size[]" id="size{date('s')}{$v1['size']}" placeholder="Enter Size" value="{$v1['size']}">
            </div>
         </div> *}
         <div class="col-md-3">
            <div class="form-group">
               <label>Price on per square foot</label>
               <input type="text" class="form-control required" id="price{date('s')}{$v1['price']}" name="price[]" placeholder="Enter Price" value="{$v1['price']}">
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Carpet area</label>
               <input type="text" class="form-control required" id="carpet_area{date('s')}{$v1['carpet_area']}" name="carpet_area[]" placeholder="Enter carpet area" value="{$v1['carpet_area']}">
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Builtup area</label>
               <input type="text" class="form-control required" id="built_area{date('s')}{$v1['built_area']}" name="built_area[]" placeholder="Enter carpet area"  value="{$v1['built_area']}">
            </div>
         </div>
		 <div class="col-md-3">
            <div class="form-group">
               <label>Total no.of tarace</label>
               <input type="text" class="form-control required" id="tares{date('s')}{$v1['tares']}" name="tares[]" placeholder="Enter total no.of tares"  value="{$v1['tares']}">
            </div>
         </div>
		 <div class="col-md-3">
            <div class="form-group">
               <label>Total no.of bath</label>
               <input type="text" class="form-control required" id="bath{date('s')}{$v1['bath']}" name="bath[]" placeholder="Enter total no.of bath"  value="{$v1['bath']}">
            </div>
         </div>
		  <div class="col-md-3">
            <div class="form-group">
               <label>Total no.of parking</label>
               <input type="text" class="form-control required" id="parking{date('s')}{$v1['parking']}" name="parking[]" placeholder="Enter total no.of parking"  value="{$v1['parking']}">
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

	</table>
	{else}
	<table>
	<div id="dynamic-fields"></div>
	</table>
{/if}
<table>
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
            			$('#pro_BasicInfo').html('update propertie basic info successfully.');
        				setTimeout(function(){ $('#pro_BasicInfo').hide(); }, 3000);
						setTimeout(function(){ $('.nav-tabs li:eq(1) a').tab('show') }, 4000);
						//$('.nav-tabs li:eq(1) a').tab('show')
					}
                }
            });
		}   
}

function nextWing() 
{
		var _valid = 1;
		var address 	= $("#address").val();
		var lat 	= $("#lat").val();
		var lng 	= $("#lng").val();
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
				lat : lat,
				lng : lng,
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
            			$('#pro_Address_sucess').html('Update propertie address info successfully.');
        				setTimeout(function(){ $('#pro_Address_sucess').hide(); }, 3000);
						setTimeout(function(){ $('.nav-tabs li:eq(2) a').tab('show') }, 4000);
						//$('.nav-tabs li:eq(2) a').tab('show');
					}
                }
            });
		}
}
function deleteWing() 
{
		var form = $('#wings-form')[0];
		var formdata = new FormData(form);
		formdata.append('action', 'deletWing');
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
						$('.nav-tabs li:eq(3) a').tab('show');
					}
                }
            });
		
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
			var rowCount = $("#dynamic-fields tr").length;
			getWings(propertyID,rowCount);
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


</script>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
<script>
function saveAmenities() {

	var _valid = 1;
	var propertyID = $("#propertyID").val();
	var neibhourhood = $("#neibhourhood").val();
	var amenitieName = $("#amenitieName").val();
	var otherId = $("#otherId").val();
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
           				$('#pro_amenities_success').html('Update other info successfully.');
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
				console.log('hi');
				console.log(data_obj.result);
				var _html = '<option value="">Select  Wing </option>';
				
				if(data_obj.message == 'success')

				{

					for(var i=0; i < data_obj.result.length; i++)

					{	

						_html += '<option value="'+data_obj.result[i].wing+'">'+data_obj.result[i].name+'</option>';

					}

				}

				else
					
				{

					$('#error_message').show();
					
				}	
		console.log(_html);
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

						_html += '<option value="'+data_obj.result[i].name+'">'+data_obj.result[i].name+'</option>';

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
					//setTimeout(function(){ $('.nav-tabs li:eq(3) a').tab('show') }, 4000);
					
					var redURL = window.location.origin+window.location.pathname+'?id='+propertyID+'#properties_floar';
					window.location.href = redURL;
					location.reload();
				},
				error: function (jqXHR, textStatus, errorThrown)
				{

				}
			});
           return false;
         },
    });
	// Wings Form Validation
	var str = window.location.href;
	var res = str.split("#");
	var tabname = res[1];
	var num  = '';
	if(tabname == 'properties_profile'){
		num = 0;
	}else if(tabname == 'properties_address'){
		num = 1;
	}else if(tabname == 'properties_wing'){
		num = 2;
	}else if(tabname == 'properties_floar'){
		num = 3;
	}else if(tabname == 'properties_unit'){
		num = 4;
	}else if(tabname == 'properties_other'){
		num = 5;
	}
	$('.nav-tabs li:eq('+num+') a').tab('show');
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
				//setTimeout(function(){ $('.nav-tabs li:eq(4) a').tab('show') }, 4000);
				var redURL = window.location.origin+window.location.pathname+'?id='+propertyID+'#properties_unit';
				window.location.href = redURL;
				location.reload();
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
					$('#pro_success').html('Add all properties details successfully.');
					setTimeout(function(){ $('#pro_success').hide(); }, 10000);
					//setTimeout(function(){ window.location.href='{$adminroot}/properties'; }, 4000);
					var redURL = window.location.origin+window.location.pathname+'?id='+propertyID+'#properties_other';
					window.location.href = redURL;
					location.reload();
				},
				error: function (jqXHR, textStatus, errorThrown)
				{

				}
			});	
         },
    });
    // Units Form Validation
}); 
// other info

//End other info
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
			unitop += '<option value='+unitsType[i]['id']+'>'+unitsType[i]['name']+'</option>';
			
		}
		for(var i=0;i<proType.length;i++)
		{
		//	proop += '<option value='+proType[i]['id']+'>'+proType[i]['name']+'</option>'; its also work
			proop += '<option value='+proType[i]['id']+'>'+proType[i]['name']+'</option>';
			
		}

		var propertyID = $("#propertyID").val();
		var mdata = [];
		var _html = '';
			$.ajax({
			type: "POST",

			 url: "{$adminroot}/ajaxproperties",
			
			data: { action: 'getFloorWings', propertyID :propertyID },
			async:false,

			success: function(response){
				mdata = response;
				
					var data_obj = JSON.parse(mdata);

					console.log(data_obj);
					for(var i=0; i < data_obj.result.length; i++)

					{
						_html += '<option value="'+data_obj.result[i].wing+'">'+data_obj.result[i].name+'</option>';

					}

		console.log(_html);

        html  = '<tr class="unit-list-item"  id="div_'+ number +'">';
		html += '<td>';
		html += '<div class="row">';
		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Wings'+number+'</label>';
		html += '<input type="hidden" name="unitsID[]" id="unitsID">';
		html += '<select  class="form-control unitwingsid required" id="unitwingsid_'+number+'" name="unitwingsid[]">';
    	html += '<option value="">Select Wing</option>';
		html += _html;
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

		//html += '<div class="col-md-3">';
		//html += '<div class="form-group">';
		//html += '<label>Units name</label>';
		//html += '<input type="text" class="form-control"id="name_'+number+'" name="name[]" placeholder="Units name type" >';
		//html += '</div>';
        //html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Type</label>';
		html += '<select  class="form-control required" name="name[]" id="name_'+number+'">';
		html += '<option value="">Select Units Type</option>';
		html += unitop;
		html += '</select>';
		html += '</div>';
        html += '</div>';

	//	html += '<div class="col-md-3">';
	//	html += '<div class="form-group">';
	//	html += '<label>Title</label>';
	//	html += '<input type="text" class="form-control" id="title_'+number+'" name="title[]" placeholder="Unit title name" >';
	//	html += '</div>';
    //    html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Title</label>';
		html += '<select  class="form-control required" name="title[]" id="title_'+number+'">';
		html += '<option value="">Select Property Type</option>';
		html += proop;
		html += '</select>';
		html += '</div>';
        html += '</div>';

	//	html += '<div class="col-md-3">';
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
		html += '<input type="text" class="form-control required"  name="built_area[]" id="built_area_'+number+'" placeholder="Enter carpet area" >';
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
            html += '<div class="form-group">'
            html += '<label>&nbsp;</label>';
			html += '<a class="remove" href="#"><i class="fa fa-fw fa-remove"></i></a>';
            html += '</div>';
            html += '</div>';
            $('#dynamic-fields').append(html);
        } else {
			html += '<div class="col-md-1">';
            html += '<div class="form-group">'
            html += '<label>&nbsp;</label>';
			html += '<a class="remove" href="#"><i class="fa fa-fw fa-remove"></i></a>';
            html += '</div>';
            html += '</div>';
			 $('#dynamic-fields').append(html);
			 
			 /*var propertyID = $("#propertyID").val();
			 var classnm = '';
			 var numItems = $('#dynamic-fields div .row').length;
			getWings(propertyID,numItems+1,classnm);*/
	
        }
			}

		});


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
            var rowCount = $("#dynamic-fields div .row").length;
			var propertyID = $("#propertyID").val();
			getWings(propertyID,rowCount+1);
        });
// Dynamic Wings

var count = 1;

    dynamic_wing_field(count);
    function dynamic_wing_field(number) {
		html  = '';
		html += '<div class="row" id="div_'+ number +'">';
		html += '<div class="col-md-5">';
		html += '<div class="form-group">';
		html += '<label>Wing</label>';
		html += '<span id="wingsid" name="wingsid"></span>';
		html += '<input type="text" id="wings'+ number +'" name="wings[]" class="form-control required" placeholder="wing">';
		html +='<div class="text-danger" id="wings_error"></div>';
		html += '</div>';
		html += '</div>';

		html += '<div class="col-md-5">';
		html += '<div class="form-group">';
		html += '<label>Total no.of floor</label>';
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
			html += '<a class="removewing" href="#"><i class="fa fa-fw fa-remove"></i></a>';
            html += '</div>';
            html += '</div>';
		//	$('#dynamic-wing-fields').append(html); its hide for extra wing
			
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
		var rowCount = $("#dynamic-wing-fields div .row").length;
		var propertyID = $("#propertyID").val();
		getWings(propertyID,rowCount+1);
	});


// Dynamic WING


// Dynamic Floor

var count = 1;

    dynamic_floor_field(count);
    function dynamic_floor_field(number) {
		var WingsArrays = [{foreach from=$wingArray key=k item=v2} "<option value='{$v2['w_id']}'>{$v2['name']}</option>", {/foreach}];

		html  = '';
		html += '<div class="row" id="div_'+ number +'">';
		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Wing</label>';
		html += '<span id="floorsid"></span>';
		html += '<select name="wing[]" id="wing'+ number +'" class="form-control required wingsid">';
		html += '<option value="">Select Wing</option>';
		html += WingsArrays;
		html += '</select>';
		html += '<div class="text-danger" id="wing_error"></div>';
		
		html += '</div>';
		html += '</div>';

		html += '<div class="col-md-3">';
		html += '<div class="form-group">';
		html += '<label>Floor no</label>';
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
			$('#dynamic-floor-fields').append(html);
			
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

{* 
 <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMWmv0f93yIsepr4PqAVC8Yts5yzOnLd4&callback=initAutocomplete&libraries=places&v=weekly"
      async
    ></script>
	<script type="text/javascript">
	
	// This example adds a search box to a map, using the Google Place Autocomplete
// feature. People can enter geographical searches. The search box will return a
// pick list containing a mix of places and predicted search terms.
// This example requires the Places library. Include the libraries=places
// parameter when you first load the API. For example:
// <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
function initAutocomplete() {
	var late = ($('#lat').val()) ? $('#lat').val():"-33.8688";
	var lnge = ($('#lng').val()) ? $('#lng').val():'151.2195';
	//alert(late);
  const map = new google.maps.Map(document.getElementById("map"), {
	
    center: { lat: late, lng: lnge },
    zoom: 13,
    mapTypeId: "roadmap",
  });
  // Create the search box and link it to the UI element.
  const input = document.getElementById("address");
  const searchBox = new google.maps.places.SearchBox(input);
  //console.log(map.address)
  //map.address[google.maps.ControlPosition.TOP_LEFT].push(input);
  // Bias the SearchBox results towards current map's viewport.
 map.addListener("bounds_changed", () => {
	  console.log("hi")
    searchBox.setBounds(map.getBounds());
  });
  let markers = [];
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
  searchBox.addListener("places_changed", () => {
    const places = searchBox.getPlaces();
	console.log(places[0].geometry.location.lat())
	console.log(places[0].geometry.location.lng())
	$("#lat").val(places[0].geometry.location.lat());
	$("#lng").val(places[0].geometry.location.lng());

    if (places.length == 0) {
      return;
    }
    // Clear out the old markers.
    markers.forEach((marker) => {
      marker.setMap(null);
    });
    markers = [];
    // For each place, get the icon, name and location.
    const bounds = new google.maps.LatLngBounds();
    places.forEach((place) => {
      if (!place.geometry || !place.geometry.location) {
        console.log("Returned place contains no geometry");
        return;
      }
      const icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25),
      };
      // Create a marker for each place.
      markers.push(
        new google.maps.Marker({
          map,
          icon,
          title: place.name,
          position: place.geometry.location,
        })
      );

      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });
    map.fitBounds(bounds);
  });
}
</script> *}

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMWmv0f93yIsepr4PqAVC8Yts5yzOnLd4&libraries=places&v=weekly"></script>
<script type="text/javascript">
  $(document).ready(function(){
 $(function(){     
    var lat = ($("#lat").val()) ? $("#lat").val():18.4464732,
        lng = ($("#lng").val()) ? $("#lng").val():73.826375,

        latlng = new google.maps.LatLng(lat, lng),
        image = 'http://www.google.com/intl/en_us/mapfiles/ms/micons/red-dot.png'; 
         
    var mapOptions = {           
            center: new google.maps.LatLng(lat, lng),           
            zoom: 13,           
            mapTypeId: google.maps.MapTypeId.ROADMAP         
        },
        map = new google.maps.Map(document.getElementById('map'), mapOptions),
        marker = new google.maps.Marker({
            position: latlng,
            map: map,
            icon: image
         });
     
    var input = document.getElementById('address');         
    var autocomplete = new google.maps.places.Autocomplete(input, {
        types: ["geocode"]
    });          
    
    autocomplete.bindTo('bounds', map); 
    var infowindow = new google.maps.InfoWindow(); 
 
    google.maps.event.addListener(autocomplete, 'place_changed', function() {
        infowindow.close();
        var place = autocomplete.getPlace();
        if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
        } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);  
        }

      $("#lat").val(place.geometry.location.lat());
$("#lng").val(place.geometry.location.lng());
        
        moveMarker(place.name, place.geometry.location);
    });  
    
    $("input").focusin(function () {
        $(document).keypress(function (e) {
            if (e.which == 13) {
                infowindow.close();
                var firstResult = $(".pac-container .pac-item:first").text();
				var gcodedata  = {};
				gcodedata['address'] = firstResult;
                var geocoder = new google.maps.Geocoder();
                geocoder.geocode(JSON.stringify(gcodedata), function(results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        var lat = results[0].geometry.location.lat(),
                            lng = results[0].geometry.location.lng(),
                            placeName = results[0].address_components[0].long_name,
                            latlng = new google.maps.LatLng(lat, lng);

                        moveMarker(placeName, latlng);
                        $("input").val(firstResult);
                    }
                });
            }
        });
    });
     
     function moveMarker(placeName, latlng){
        marker.setIcon(image);
        marker.setPosition(latlng);
        infowindow.setContent(placeName);
        infowindow.open(map, marker);
     }
});

  });
  



</script>

</body>
</html>