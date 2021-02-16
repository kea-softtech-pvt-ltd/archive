<!doctype html>
<html>
	{include file='../../widgets/header.tpl'}
	<body class="innerpage" cz-shortcut-listen="true">
		{include file='../../widgets/nav-bar.tpl'}
		
		<div class="container inner-page-content">
		

		<div class="col-sm-5">
			<div id="donation-section">
				{if $payResult}
					<div class="status alert alert-success"> Thanks for donation !!!</div>
				{else}
					<div class="status alert alert-success"> Something went wrong... Please try again !!!</div>
				{/if}
				
			</div>
		</div>


			
		</div>			
		{include file='../../widgets/footer.tpl'}
		{include file='../../widgets/scripts.tpl'}
		
	</body>
</html>