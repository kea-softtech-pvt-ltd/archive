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

		
				 <a class="btn btn-primary" href="{$adminroot}/properties/details" title="List View" style="float:right"><i class="fa fa-align-justify"></i></a>
                <div class="actions">
                    <a class="btn_1 medium" href="{$adminroot}/properties/add" title="Add Property" > Add new property</a>
                </div>
			</div>
            {* its use for search property *}
			{* <div class="row">
			<div class="col-md-3">
			 <form role="form" class="advance-search" action="properties" method="GET">
			<div class="input-group">
              <input type="text" class="form-control" id="propertyName" name="propertyName" placeholder="Enter Property name">
              <span class="input-group-btn">
                <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
              </span>
            </div>
			<form>
			</div>
			</div><br> *}
			{* its end use for search property *}

			<div class="list_general">
				<ul>{foreach from=$propertiesListArray key=k item=v}
					<li>
					<figure>
						{$imagearray = explode(',',$v['images'])}
						 {foreach from=$imagearray key=index item=image name=count}
                            {if $index == 0}
                                <img src="{SITE_URL}/administrator/upload/properties/{$image}">
                            {/if}               
                        {/foreach}
					</figure> 
						<h4>{$v['name']}</h4>
						<ul class="booking_details">
							<li><strong>RERA number</strong>{$v['rera_number']}</li>
							<li><strong>Builder name</strong>{$v['buildername']}</li>
							<li><strong>Possession date</strong>{$v['possession_date']}</li>
							<li><strong>Address</strong>{$v['address']}</li>
							<li><strong>Partnership</strong>
							{if $v['patnership'] ==1} Yes {else} No{/if}
							{* <input type="checkbox" name="type_patner" id="type_patner">&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="type_patner" id="type_patner" {if $v['patnership'] ==1} checked {/if}>&nbsp; *}
								{if ($smarty.session.role == 1)}
								{if $v['patnership'] ==0}
								<a href="{$adminroot}/properties/patnership?id={$v['id']}" class="btn_1 gray"><i class="fa fa-check-circle-o text-success"></i> Add</a>
								{else}
								<a href="{$adminroot}/properties/patnershipCancel?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o text-danger"></i>Cancel</a>
								{/if}
								{/if}
							</li>
							<li><strong>Users Group</strong> <a class="btn_1" href="{$adminroot}/propertiesGroupUserView?id={$v['id']}" title="See Users Group" ><i class="fa fa-users"></i></a></li>
						</ul>	
						 {* <a class="btn_1" href="{$adminroot}/propertiesGroupUserView?id={$v['id']}" title="User Group" ><i class="	fa fa-users"></i>User Group</a>				 *}
						<ul class="buttons">
							{* <li><a href="{$adminroot}/properties/patnershipCancel?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel Aprove</a></li>
							<li><a href="{$adminroot}/properties/patnership?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Aprove</a></li> *}
							 <a class="btn_1" href="{$adminroot}/properties/edit?id={$v['id']}" title="Edit Properties" ><i class="fa fa-fw fa-edit"></i>Edit</a>
							 <li><a href="{$adminroot}/properties/delete?id={$v['id']}" title="Delete Properties" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
							 <li><a href="{$adminroot}/properties/view?id={$v['id']}" title="View Properties" class="btn_1 gray"><i class="fa fa-eye"></i> View</a></li>
							
						</ul>
					</li>
					{/foreach}
				</ul>
				
			</div>
			  <div class="row">
              <div class="col-md-12">
                <ul class="pagination" style="float: right">
                   {$pagLink}
                </ul>
              </div>
            </div>
            <!-- end:pagination -->
		</div>
            </div>
   	    </div>
    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->

    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>