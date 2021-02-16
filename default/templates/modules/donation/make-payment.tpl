<!doctype html>
<html>
	{include file='../../widgets/header.tpl'}
	<body class="innerpage" cz-shortcut-listen="true">
		{include file='../../widgets/nav-bar.tpl'}
		
		<div class="container inner-page-content">
		

		<div class="col-sm-5">
			<div id="donation-section">
				<h2>Donor Information</h2>

				<div class="form-group">
					<strong>Amount : </strong> {$donationInfo.amount} $
				</div>
				<div class="form-group">
					<strong>Donor name : </strong> {$donationInfo.name}
				</div>
				<div class="form-group">
					<strong>Email : </strong> {$donationInfo.email}
				</div>

				<form action="{$payPalInfo.paypal_url}" method="post">

					<!-- Identify your business so that you can collect the payments. -->
					<input type="hidden" name="business" value="{$payPalInfo.paypal_id}">

					<!-- Specify a Buy Now button. -->
					<input type="hidden" name="cmd" value="_xclick">

					<!-- Specify details about the item that buyers will purchase. -->
					<input type="hidden" name="item_name" value="Donation">
					<input type="hidden" name="item_number" value={$donationInfo.id}>
					<input type="hidden" name="amount" value="{$donationInfo.amount}">
					<input type="hidden" name="currency_code" value="USD">
					<input type="hidden" name="return" value="{$payPalInfo.success_url}">
					<input type="hidden" name="notify_url" value="{$payPalInfo.notify_url}">
					
					<input type='hidden' name='cancel_return' value='{$payPalInfo.cancel_url}?id={$donationInfo.id}'>
					<button type="submit" class="btn btn-primary pull-left">Proceed with PayPal</button>

				</form>
				
			</div>
		</div>
		</div>			
		{include file='../../widgets/footer.tpl'}
		{include file='../../widgets/scripts.tpl'}
		
	</body>
</html>