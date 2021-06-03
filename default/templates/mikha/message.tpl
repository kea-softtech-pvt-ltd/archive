
 {include file='mikha/header.tpl'}
<br><br><br><br>
<div class="row">
    <div class="col-md-12">
        <div class="heading-title bg-white">
              <h2>USER Message</h2>
        </div>
    </div>
</div>
    <!-- begin:content -->
    <div id="content">
      <div class="container">
        <div class="row">
           <!----table data--->
         <div class="table-responsive">
			<table class="table custom-table" id="myTable">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Id</th>
                        <th>User Name</th>
                        <th>Message</th>
                        <th class="text-right no-sort">Action</th>
                    </tr>
                </thead>
			<tbody>
              {foreach from=$userMessage key=k item=v}
				<tr>
                    <td><img src="img/{$v['image']}" style="width: 50px;border-radius: 100px;height: 50px;"></td>
                    <td>{$v['n_id']}</td>
                    <td>{$v['username']}</td>
                    <td>Send a fraind requiest</td>
				    <td class="text-right">
                        <div class="dropdown dropdown-action">
                          
                          <button type="button" class="btn btn-success"><i class="fa fa-check-triangle m-r-5"></i> Accept</button>
                          <button type="button" class="btn btn-danger"><i class="fa fa-check-times m-r-5"></i> Reject</button>
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
    <!-- end:content -->

    <!-- begin:footer -->
     {include file='mikha/footer.tpl'}
    <!-- end:footer -->
  
