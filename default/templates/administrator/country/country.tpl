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
				<h2 class="d-inline-block">Country List</h2>       
             <div class="actions">
                <a class="btn_1 medium" href="{$adminroot}/country/add" > Add Country</a>
             </div>
			</div>
			<div class="list_general">
				<ul>
					{foreach from=$countryListArray key=k item=v}
					<li>
						<ul class="booking_details">
							<li><b>Country name </b> : {$v['name']}</li>
						</ul>
						<ul class="buttons">
							 <a class="btn_1" href="{$adminroot}/country/edit?c_id={$v['c_id']}" ><i class="fa fa-fw fa-edit"></i>Edit</a>				
							<li><a href="{$adminroot}/country/delete?c_id={$v['c_id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					{/foreach}
				</ul>
			</div>
		</div>
   </div>
  </div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>