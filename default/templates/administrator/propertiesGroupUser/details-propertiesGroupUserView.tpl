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
				<h2 class="d-inline-block">Property User Group List</h2>
                 <div class="alert alert-danger text-center" id="sucess_msg" style="display:none;"></div>
                 {* <a class="btn btn-primary" href="#" style="float:right"> Send Message</a> *}
             
			</div>
          
        
			<div class="list_general">
					   {if (count($userGroupListArray) > 0)}
                    	{foreach from=$userGroupListArray key=k item=v}
                    <ul>
					    
					<li>
						<figure><img src="{SITE_URL}/mikha/img/{$v['image']}" alt=""></figure>
						{* <h4>{$v['username']}</h4> *}
						<ul class="booking_details">
						 <li><strong>Name</strong><b>{$v['username']}</b></li>
                       
						 	{foreach from=$parchesListArray key=k1 item=v1}
							 {if $v['user_id'] == $v1['user']}
							 {if $v1['noti_type']==1}
								  <li><strong>Status</strong>Interested</li>
								{else}
								 <li><strong>Status</strong>Not Interested</li>
							 {/if}

							 {/if}
							 {/foreach}
							{* {if $v['noti_type'] == 1 } Interested {else} Not Interested {/if} *}
							{* {$v['p_id']} {$v['user_id']} *}

						</ul>
                        
						<ul class="buttons">
                            <a href="" type="button" title="Send Message"> <i class="fa fa-comments text-info" style="font-size:28px"></i> </a>
							
						</ul>
						<input type="hidden" value="{$v['user_id']}" id="senderid" name="senderid[]" class="senderId">
						
					</li>		
				 
				</ul>
				
				{/foreach}
                    {else}
                        <div>
                            <h3 class="text-center text-info">User Not See Thise Property & not create a group</h3><br>
                        </div>
                  {/if}
				   <br>
				   {if ($userGroupListArray)}
				  <button type="button" class="btn btn-primary sendMessage" data-id="{$v['p_id']}" data-user_id="{$v['user_id']}" >Send Message</button>
					{/if}
					<br><hr><br>
			</div>
			
         
		</div>
            </div>
   	    </div>

    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->

    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>
<script>
  $(".sendMessage").on("click", function(){

	var arr =[];
	$("input[name^='senderid']").each(function(){
		arr.push($(this).val());
	});

	//alert(arr);
  var pro_id = $(this).attr('data-id');
  var pro_uid = arr;
  $.ajax({     
		url: "{$adminroot}/ajaxGroupAdd",
        type: "POST",
        data: 
            { 
				action : 'sendRequest',
				pro_id:pro_id,
                pro_uid:pro_uid,
			},
        success: function(result)
              {	
          console.log(result);

            if($.trim(result)=='')				
				{
					$('#sucess_msg').show().html('Error.');
					setTimeout(function(){ $('#sucess_msg').hide();},3000)
				}
				else
				{						
					$('#sucess_msg').show().removeClass('alert-danger').addClass('alert-success').html('Send Message.');
					setTimeout(function(){ $('#sucess_msg').hide();},3000)
					setTimeout(function(){
						window.location.href='propertiesGroupUserView?id={$v['p_id']}'; 
						},3000);	
				}
        }
   }); 
});

        </script>