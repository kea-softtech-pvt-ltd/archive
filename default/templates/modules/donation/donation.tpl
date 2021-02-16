<!doctype html>
<html>
	{include file='../../widgets/header.tpl'}
	<body class="innerpage" cz-shortcut-listen="true">
		{include file='../../widgets/nav-bar.tpl'}
		
		<div class="container inner-page-content">
		

		<div class="col-sm-5">
			<div id="donation-section">
				<h2>Donation</h2>
				<p>Make an online donation to help our organization provide treatment, care and support services to vulnerable children. Please submit your donation through our secure and easy online donation form below</p>
				<div class="status alert alert-success" style="display: none"></div>
				<form id="main-donation-form" class="donation-form" name="donation-form" method="post" action="{$siteroot}make-payment">
					<div class="form-group">
						<input type="text" name="amount" class="form-control" required="required" placeholder="Donation amount">
					</div>
					<div class="form-group">
						<input type="text" name="name" class="form-control" required="required" placeholder="Donor Name">
					</div>
					<div class="form-group">
						<input type="email" name="email" class="form-control" required="required" placeholder="Email ID">
					</div>
					<div class="form-group">
						<input type="number" name="phone" class="form-control" required="required" placeholder="Phone number">
					</div>
					<div class="form-group">
						<textarea name="address" id="address" required="required" class="form-control" rows="4" placeholder="Enter address"></textarea>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary pull-right">Donate</button>
					</div>
				</form>
			</div>
		</div>


			
		</div>			
		{include file='../../widgets/footer.tpl'}
		{include file='../../widgets/scripts.tpl'}
		
	</body>
</html>