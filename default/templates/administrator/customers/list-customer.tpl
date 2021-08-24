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
				<h2 class="d-inline-block">User List</h2>
         <a class="btn_1 medium" href="{$adminroot}/customers" title="Grid View" style="float: right"><i class="fa fa-table"></i></a>
			</div>
            <!----table data--->
         <div class="table-responsive">
					<table class="table custom-table" id="myTable">
						<thead>
							<tr>
                <th>Id</th>
			    <th>User Name</th>
                <th>Email</th>
                <th class="text-right no-sort">Action</th>
				</tr>
				</thead>
				<tbody>
        {foreach from=$customerListArray key=k item=v}
				<tr>
        <th>{$v['user_id']}</th>
				<td>{$v['username']}</td>
			    <td>{$v['email']}</td>
				<td class="text-right">
				    <div class="dropdown dropdown-action">
            	<a href="{$adminroot}/customers/deleteList?id={$v['user_id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a>
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