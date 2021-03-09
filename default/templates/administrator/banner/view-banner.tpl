<!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="viewbannerForm"  action="{$adminroot}/banner/view" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$bannerArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>banner information</h2>
						</div>
						<div class="row">
							<div class="col-md-12">
                                <table>
                                    <tr>
                                        <th>{$bannerArray['title']}</th>
                                        <td></td>	
                                    </tr>
									 <tr>
                                     	<td>
										 	<div class="row">
												{$imagearray = explode(',',$bannerArray['image'])}
												{foreach from=$imagearray key=index item=image name=count}
												<img class="d-block w-10" height="150px" width="150px" src="{SITE_URL}/administrator/source/upload/banner/{$image}"  alt="First slide"/>
												{/foreach}
											</div>
										</td>
                                    </tr>
                                </table>        
							</div>
							
						</div>
					
					</div>
					<!-- /box_general-->						
					</div>
					<!-- /box_general-->
				</form>
			</div>
	  <!-- /.container-fluid-->
   		</div>	
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>