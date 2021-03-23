<!doctype html>
<html>
<style>
div .carouselExampleControls {
    max-width: 100px;
}
</style>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
                <div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">Property List</h2>
                
				 <a class="btn btn-primary" href="{$adminroot}/properties" style="float:right"><i class="fa fa-table"></i></a>
                <div class="actions">
					
                    <a class="btn_1 medium" href="{$adminroot}/properties/add" > Add new property</a>
                </div>
				
			</div>
            <!----table data--->
         <div class="table-responsive">
					<table class="table custom-table" id="myTable">
						<thead>
							<tr>
								<th>Propertie Name</th>
								<th>Builder Name</th>
                <th>RERA number</th>
                <th>Address</th>
								<th class="text-right no-sort">Action</th>
							</tr>
						</thead>
						<tbody>
              {foreach from=$propertiesListArray key=k item=v}
							<tr>
								<td>{$v['name']}</td>
								<td>{$v['builder_name']}</td>
                <td>{$v['rera_number']}</td>
                <td>{$v['address']}</td>
								<td class="text-right">
									<div class="dropdown dropdown-action">
										<a name="id" title="Edit property"  href="{$adminroot}/properties/edit?id={$v['id']}"><i class="fa fa-pencil m-r-5"></i></a>&nbsp
										<a name="id" title="Delete property" href="{$adminroot}/properties/delete?id={$v['id']}"><i class="fa fa-trash-o m-r-5"></i></a>
									</div>
								</td>
							</tr>
              {/foreach}										
						</tbody>
					</table><br>
				</div>

            <!----end table--->


		</div>
            </div>
   	    </div>
  
    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	<script>
  $('#myTable').DataTable( {
    responsive: true
} );
  </script>
</body>
</html>