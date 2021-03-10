    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}	

		<form name="addBuilderForm" action="{$adminroot}/properties/edit" method="post" enctype="multipart/form-data">
		<input type="hidden"name="id" value="{$builderuserArray['id']}">		
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
						</ul>
					</div>
				</div>
		</div>
		<div class="tab-content">
		<div class="box_general padding_bottom tab-pane fade show active" id="properties_profile">
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>Properties Basic info</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="name" class="form-control" placeholder="Project name" value="{$builderuserArray['name']}" />
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Builder name</label>
						<input type="text" name="builder_name" class="form-control" placeholder="Builder name" value="{$builderuserArray['builder_name']}" />
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Start date</label>
						<input type="date" name="started_date" class="form-control" placeholder="Select date" value="{$builderuserArray['started_date']}" />
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Possession date</label>
						<input type="date" name="possession_date" class="form-control" placeholder="Select date" value="{$builderuserArray['possession_date']}" />
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>RERA number</label>
						<input type="text" name="rera_number" class="form-control" placeholder="RERA" value="{$builderuserArray['rera_number']}" />
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
						<input type="text" name="address" class="form-control" placeholder="Your address" value="{$builderuserArray['address']}" />
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Add Url</label>
						<input type="text" name="description" class="form-control" placeholder="Your address Url" />
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
					<div class="form-group">
						<label>Wing</label>
							<table id="wing-list-container" style="width:100%;">
						
							{foreach from=$wingArray key=k item=v1}
							
								<tr class="wing-list-item">
									<td>
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<input type="hidden" name="w_id[]" id="w_id" value="{$v1['w_id']}" />
													<input type="text" name="wings[]" value="{$v1['name']}"  class="form-control" placeholder="Wing">
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<input type="text" name="totalFloor[]" value="{$v1['totalFloor']}"  class="form-control" placeholder="Total no.of floor">
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
					</div>
				</div>
				<button type="button" class="btn btn-primary" name="next" id="next" onclick="nextFloor()">Next >></button>
			</div>
			
		</div>
		<div class="box_general padding_bottom tab-pane fade" id="properties_floar">
			<div class="header_box version_2">
				<h2><i class="fa fa-pen"></i>Floor Info</h2>
				<a href="#0" class="btn_1 medium add-floor-list-item" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Floor</a>
			</div>
			<div class="row">
				<table id="floor-list-container" style="width:100%;">

				{foreach from=$floorsArray key=k item=v1}
				<br>
			<!--	{foreach from=explode(',',$builderuserArray['floor']) key=k item=f}--->
						<tr class="floor-list-item">
							<td>
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<input type="hidden" name="f_id[]" id="f_id" value="{$v1['f_id']}">
											<!--<input type="text" name="wing[]" value="{$v1['wing']}"  class="form-control" placeholder="Wing">--->
											<select name="wing[]" class="form-control">
												<option value="{$v1['wing']}">Select Wing</option>
											</select>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" name="floor[]" value="{$v1['floor']}" class="form-control" placeholder="Floor No">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control" name="flat[]" value="{$v1['flat']}"  placeholder="Total no.of flats">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<textarea type="text" class="form-control" name="specality[]"  placeholder="Specality">{$v1['specality']}</textarea>
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
					<!--	{/foreach}---->
							{/foreach}
					</table>
			</div>
			<p><button class="btn_1 medium" name="propetyEdit" type="submit">Update</button></p>
		</form>
		</div>
	
	
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
   
		$('.nav-tabs li:eq(1) a').tab('show');
}

function nextWing() {

		$('.nav-tabs li:eq(2) a').tab('show');
}
function nextFloor() {
   $('.nav-tabs li:eq(3) a').tab('show');

	var wingsArr = $('input[name="wings[]"]').map(function () {
			return this.value; // $(this).val()
		}).get();
	var html = '';
	for(var i=0; i<wingsArr.length;i++){
		html += '<option value='+wingsArr[i]+'>'+wingsArr[i]+'</option>';
	}

	$('select[name="wing[]').html(html);

 	console.log(wingsArr);
				
}

</script>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}


</body>
</html>