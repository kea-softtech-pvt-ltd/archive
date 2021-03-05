    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}	

		<form name="addBuilderForm" action="{$adminroot}/properties/add" method="post" enctype="multipart/form-data">		
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
		<div class="box_general padding_bottom tab-pane fade show active" id="properties_profile">
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>Properties Basic info</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="name" class="form-control" placeholder="Project name">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Builder name</label>
						<input type="text" name="builder_name" class="form-control" placeholder="Builder name">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Start date</label>
						<input type="date" name="started_date" class="form-control" placeholder="Select date">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Possession date</label>
						<input type="date" name="possession_date" class="form-control" placeholder="Select date">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>RERA number</label>
						<input type="text" name="rera_number" class="form-control" placeholder="RERA">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Porject picture</label>
						<input class="form-control" type="file" id="image" name="image[]" value="" multiple>
					</div>
				</div>
			</div>
			<!-- /row-->
			
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
						<input type="text" name="address" class="form-control" placeholder="Your address">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Description</label>
						<input type="text" name="description" class="form-control" placeholder="Your address">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Specification</label>
						<input type="text" name="specification" class="form-control" placeholder="Your state">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Unit</label>
						<input type="text" name="unit" class="form-control" placeholder="Your zip code">
					</div>
				</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->

		<div class="box_general padding_bottom tab-pane fade" id="properties_wing">
			<div class="header_box version_2">
				<h2><i class="fa fa-delicious"></i>Wing Info</h2>
				<a href="#0" class="btn_1 medium add-wing-list-item" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Wings</a>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Wing</label>
							<table id="wing-list-container" style="width:100%;">
								<tr class="wing-list-item">
									<td>
										<div class="row">
											<div class="col-md-10">
												<div class="form-group">
													<input type="text" name="wing[]" class="form-control" placeholder="wing">
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
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="box_general padding_bottom tab-pane fade" id="properties_floar">
			<div class="header_box version_2">
				<h2><i class="fa fa-pen"></i>Floor Info</h2>
				<a href="#0" class="btn_1 medium add-floor-list-item" style="float: right"><i class="fa fa-fw fa-plus-circle"></i>Add Floor</a>
			</div>
			<div class="row">
				<table id="floor-list-container" style="width:100%;">
						<tr class="floor-list-item">
							<td>
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Floor No">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control"  placeholder="Total no.of flats">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<textarea type="text" class="form-control"  placeholder="Specality"></textarea>
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
			</div>
		</div>
	
	

		<p><button class="btn_1 medium" name="propetySave" type="submit">Save</button></p>
		</form>
	  </div>
	  <!-- /.container-fluid-->
   	</div>

    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>