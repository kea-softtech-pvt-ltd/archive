<!doctype html>
<html>
	{include file='../../widgets/header.tpl'}
	<body class="innerpage" cz-shortcut-listen="true">
		{include file='../../widgets/nav-bar.tpl'}
		
		<div class="container inner-page-content">
		

		<div class="col-sm-5">
			<div id="donation-section">
				<h2>Contact us</h2>
				
				{if $isSucees eq 1}
					<div class="status alert alert-success"> Thanks for contacting us. We will get back to you soon.</div>
				{/if}
				<!--<p>Make an online donation to help our organization provide treatment, care and support services to vulnerable children. Please submit your donation through our secure and easy online donation form below</p>-->
				<div class="status alert alert-success" style="display: none"></div>
				<!--{$siteroot}make-payment -->
				<form id="main-donation-form" class="donation-form" name="contact-form" method="post" action="{$siteroot}contact">
					<div class="form-group">
						<input type="text" name="name" id="name" class="form-control" required="required" placeholder="Name">
					</div>
					
					<div class="form-group">
						<input type="text" name="emal" class="form-control" required="required" placeholder="email">
					</div>
					<div class="form-group">
						<input type="number" name="mobile" class="form-control" required="required" placeholder="Mobile">
					</div>
					<div class="form-group">
					<textarea name="query" id="query" required="required" class="form-control" rows="4" placeholder="Enter Query"></textarea>
					</div>
					<div class="form-group">
						<button type="submit" name="submit" class="btn btn-primary pull-right">Submit</button>
					</div>
				</form>
			</div>
		</div>


			
		</div>			
		{include file='../../widgets/footer.tpl'}
		{include file='../../widgets/scripts.tpl'}
		
	</body>
</html>