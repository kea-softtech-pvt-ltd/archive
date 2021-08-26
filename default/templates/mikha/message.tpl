
 {include file='mikha/header.tpl'}
<br><br><br><br>
<div class="row">
    <div class="col-md-12">
        <div class="heading-title bg-white">
              <h2>USER GROUP PROPERTY</h2>
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
                {* <thead>
                    <tr>
                        <th>Image</th>
                        <th>Id</th>
                        <th>User Name</th>
                        <th>Message</th>
                        <th class="text-right no-sort">Action</th>
                    </tr>
                </thead> *}
			<tbody>
              
              {foreach from=$userMessage key=k item=v}
              {* {if $v['admin_noti'] == 1 && $v['user_noti'] == 0 }
              <tr>
              <th>image</th>
              <th>Property id</th>
              <th>Message</th>
              <th>Action</th>
              <tr>
				<tr>
        
            <td><img src="img/{$v['image']}" style="width: 50px;border-radius: 100px;height: 50px;"></td>
            <td> {$v['sender']} {$v['reciver']}</td>
            <td>Do you Lick thise property ?</td>
				    <td class="text-right">
              <div class="dropdown dropdown-action">
                   <button type="button" class="btn btn-success"><i class="fa fa-check-triangle m-r-5"></i><a href="{$frontendroot}/ascA?id={$v['reciver']}" style="color:#f7f4f4">Yes</a></button>
                   <button type="button" class="btn btn-danger"  ><i class="fa fa-check-times m-r-5" ></i><a href="{$frontendroot}/messagedelte?id={$v['sender']}" style="color:#f7f4f4"> No</a></button>
                </div>
				    </td>
				</tr>
      
        {else} *}
         <tr>
                        <th>Image</th>
                        <th>Id</th>
                        <th>User Name</th>
                        <th>Message</th>
                        <th class="text-right no-sort">Action</th>
                    </tr>
          <tr>
            <td><img src="img/{$v['image']}" style="width: 50px;border-radius: 100px;height: 50px;"></td>
            <td> {$v['sender']} {$v['reciver']}</td>
            <td>{$v['username']} {$v['p_id']}</td>
            <td>Send a fraind requiest</td>
				    <td class="text-right">
              <div class="dropdown dropdown-action">
                   <button type="button" class="btn btn-success"><i class="fa fa-check-triangle m-r-5"></i><a href="{$frontendroot}/asc?id={$v['sender']}&rid={$v['reciver']}&pro_id={$v['p_id']}" style="color:#f7f4f4"> Accept </a></button>
                   <button type="button" class="btn btn-danger"  ><i class="fa fa-check-times m-r-5" ></i><a href="{$frontendroot}/messagedelte?id={$v['sender']}" style="color:#f7f4f4"> Reject</a></button>
                </div>
				    </td>
				</tr>
{* 
            {/if} *}
              {/foreach}
			</tbody>
		</table><br>

    	<table class="table custom-table" id="myTable">
                {* <thead>
                    <tr>
                        <th>Image</th>
                        <th>Id</th>
                        <th>User Name</th>
                        <th>Message</th>
                        <th class="text-right no-sort">Action</th>
                    </tr>
                </thead> *}
			<tbody>
              
              {foreach from=$userMessage1 key=k item=v}
              <tr>
              <th>image</th>
              <th>Property name</th>
              <th>Message</th>
              <th>Action</th>
              <tr>
				<tr>
        
            <td><img src="img/{$v['image']}" style="width: 50px;border-radius: 100px;height: 50px;"></td>
            <td> {$v['user']} {$v['name']} </td>
            <td>Do you Lick thise property ?</td>
				    <td class="text-right">
              <div class="dropdown dropdown-action">
                   <button type="button" class="btn btn-success"><i class="fa fa-check-triangle m-r-5"></i><a href="{$frontendroot}/ascA?id={$v['user']}" style="color:#f7f4f4">Yes</a></button>
                   <button type="button" class="btn btn-danger"  ><i class="fa fa-check-times m-r-5" ></i><a href="{$frontendroot}/deleterequest?id={$v['user']}" style="color:#f7f4f4"> No</a></button>
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
    </div>
    <!-- begin:footer -->
    {include file='mikha/footer.tpl'}
    <!-- end:footer -->


   
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
     <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
    <script src="js/gmap3.min.js"></script>
    <script src="js/jquery.easing.js"></script>
    <script src="js/jquery.jcarousel.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>
  
