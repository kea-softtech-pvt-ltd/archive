<!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Property info</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Property name</label>
									<div>{$propertyArray['name']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Builder name</label>
									<div>{$propertyArray['builder_name']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Started date</label>
									<div>{$propertyArray['started_date']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Possession date</label>
									<div>{$propertyArray['possession_date']}</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Rera number</label>
									<div>{$propertyArray['rera_number']}</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /box_general-->
                    <!----------->
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-6"></div>
                        </div>
                    <!----------->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Address Info</h2>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Address</label>
									{if isset($addressPropertiesArray['address']) }<div>{$addressPropertiesArray['address']}</div>{/if}
									
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Url</label>
									{if isset($addressPropertiesArray['description']) }<div>{$addressPropertiesArray['description']}</div>{/if}
									
								</div>
							</div>
						</div>
					</div>
					<!-- /box_general-->

                    <!-- wing info-->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Wing Info</h2>
						</div>
						<div class="row">
                        {foreach from=$wingArray key=k item=v1}	
                            <div class="col-md-6">
								<div class="form-group">
									<label>Wing</label>
									
                                        <div>{$v1['name']}</div>					
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Total no.of floor</label>
                                    <div>{$v1['totalFloor']}</div>
								</div>
							</div>
                              {/foreach}
						</div>	
					</div>
					<!-- /wing-->
                    <!-- floor info-->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>floor Info</h2>
						</div>
						<div class="row">
                        {foreach from=$floorsArray key=k item=v1}	
                            <div class="col-md-3">
								<div class="form-group">
									<label>Wing</label>
									<div>
									{foreach from=$wingArray key=k item=v2}
									{if $v1['wing'] == $v2['w_id'] }{$v2['name']}{/if} 
									{/foreach}
                                    </div>   			
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>floor</label>
                                    <div>{$v1['floor']}</div>
								</div>
							</div>
                            <div class="col-md-3">
								<div class="form-group">
									<label>Total no.of flat</label>
                                    <div>{$v1['flat']}</div>
								</div>
							</div>
                            <div class="col-md-3">
								<div class="form-group">
									<label>Specality</label>
                                    <div>{$v1['specality']}</div>
								</div>
							</div>
                              {/foreach}
						</div>	
					</div>
					<!-- /floor-->
                    <!-- unit info-->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Unit Info</h2>
						</div>
                        {foreach from=$unitsArray key=k item=v1}
						<div class="row">
                        
         <div class="col-md-3">
            <div class="form-group">
               <label>Wings</label>
			   <div>
			   	{foreach from=$wingArray key=k item=v2}{if ($v1['wing'] == $v2['w_id'])}{$v2['name']}{/if} 
				{/foreach}
			   </div>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Floor</label>
			   <div>
			   {foreach from=$floorsArray key=k item=v2}
			   		{if ($v1['floor'] == $v2['floor'])}{$v2['floor']} {/if}
				{/foreach}
			   </div>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Units name</label>
			   <div>{$v1['type']}</div>      
			</div>
         </div>
		 <div></div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Title</label>
				  <div>{$v1['title']}</div>
			</div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Size</label>
                <div>{$v1['size']}</div>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Price</label>
               <div>{$v1['price']}</div>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Carpet area</label>
               <div>{$v1['carpet_area']}</div>
            </div>
         </div>
         <div class="col-md-3">
            <div class="form-group">
               <label>Builtup area</label>
                 <div>{$v1['built_area']}</div>
            </div>
         </div>
      </div>
                         {/foreach}
					</div>
					<!-- /unit-->
					 <!-- other info-->
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-map-marker"></i>Other Info</h2>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Amenities</label>
								{foreach from=$amenitiesListArray key=k item=v} {if (in_array($v['id'] , $amenities) )} {$v['name']}  {/if}       
											
								{/foreach}
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Neighbourhoods</label>
								<div>
									{foreach from=$neighbourhoodListArray key=k item=v}
										{if (in_array($v['id'], $neighbourhoods) )}  {$v['name']} {/if}
										{/foreach}
								</div>
							</div>
						</div>	
					</div>
					</div>
					<!-- /other-->
					
			</div>
	  <!-- /.container-fluid-->
   		</div>	
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>