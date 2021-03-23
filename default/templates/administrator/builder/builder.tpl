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
				<h2 class="d-inline-block">Builder List</h2>     
		
								
				<!--<div class="filter">
					<select name="orderby" class="selectbox">
						<option value="Any status">Any status</option>
						<option value="Approved">Approved</option>
						<option value="Pending">Pending</option>
						<option value="Cancelled">Cancelled</option>
					</select>               
				</div>-->
                <div class="actions">
                    <a class="btn_1 medium" href="{$adminroot}/builder/add" > Add new builder</a>
                </div>
			</div>
			<div class="list_general">
			<div id="msg" name="msg">
				{if isset($smarty.session.message_add_b) }
					{$smarty.session.message_add_b}
				{/if}
				
				
				
			</div>
				<ul>
				<!--	{$_SESSION['message_add_b']} its use for message show session --> 
					{foreach from=$builderListArray key=k item=v}
					<li>
						<figure><img src="{SITE_URL}/administrator/source/upload/{$v['avatar']}" alt=""></figure>
						<h4>{$v['name']}</h4>
						<ul class="booking_details">
							<li><strong>Register number </strong> : {$v['register_number']}</li>
							<li><strong>Email </strong> : {$v['email']}</li>
							<li><strong>Password </strong> : {$v['password']}</li>
							<li><strong>User Name </strong> : {$v['user_name']}</li>
							<li><strong>Telephone </strong> : {$v['telephone']}</li>
							<li><strong>Address </strong> : {$v['street_address']}</li>
							<li><strong>Landmark </strong> : {$v['landmark']}</li>
						</ul>
						<!--<input type="hidden" name="id" value="id">--->
						<ul class="buttons">
							 <a class="btn_1" href="{$adminroot}/builder/edit?id={$v['id']}" ><i class="fa fa-fw fa-edit"></i>Edit</a>				
							<li><a href="{$adminroot}/builder/delete?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
							<li><a href="{$adminroot}/builder/view?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-eye"></i> View </a></li>
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
            <a class="btn btn-primary" href="{$adminroot}/logout">Logout</a>
          </div>
        </div>
      </div>
    </div>
	
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
		<script type="text/javascript">
   		
		//header("Location: " . SITE_URL . "/admin/builder");
    		
			
	</script>
	
</body>
</html>