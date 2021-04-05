    <!doctype html>
<html>

	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
		<form name="viewWingForm" id="registration" action="{$adminroot}/wing/view" method="post" enctype="multipart/form-data">
			<input type="hidden"name="id" value="{$wingArray['id']}">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
					<div class="box_general padding_bottom">
						<div class="header_box version_2">
							<h2><i class="fa fa-file"></i>Wing type information</h2>
						</div>
						<div class="row">
							<div class="col-md-12">
                                <table>
                                    <tr>
                                        <th>Wing Type</th>
                                        <td>: {$wingArray['name']}</td>
                                    </tr>
                                   
                                </table>        
							</div>
							
						</div>
					
					</div>	
					</div>
				</form>
			</div>
   		</div>	
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>