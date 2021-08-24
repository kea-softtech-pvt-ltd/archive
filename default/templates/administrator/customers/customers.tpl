    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
                <div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">User List</h2>
        		 <a class="btn_1 medium" href="{$adminroot}/customers/list" title="List View" style="float:right"><i class="fa fa-align-justify"></i></a>
			</div>
			<div class="list_general">
				<ul>
				{foreach from=$customerListArray key=k item=v}
					<li>
						<figure><img src="{SITE_URL}/mikha/img/{$v['image']}" alt=""></figure>
						<h4>{ucfirst($v['username'])}</h4>
						<ul class="booking_details">
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> {$v['email']}</li>
						</ul>
						<ul class="buttons">
							<li><a href="{$adminroot}/customers/delete?id={$v['user_id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
				{/foreach}
				</ul>
			</div>
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
	
</body>
</html>