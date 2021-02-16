<!doctype html>
<html>
	{include file='buildermodule/common/header.tpl'}
	<body cz-shortcut-listen="true">	

				<main>
					<div class="container">
				
						
					 <span class="error"> <?php echo $nameErr;?></span>

					<div class="alert alert-danger text-center" name="error_msggg" id="error_msggg" style="display:none;"></div>

						<div class="row justify-content-md-center">	
							<div id="login" class="col-md-4">
								<div class=" text-center add_top_20">
								<i class="fa fa fa-user"></i>
								</div>
								<div class="box_form add_top_20">
									<form action="{$siteroot}builder/login" method="post" name="frmLogin">
										<div class="form-group">
											<input type="text" name="mobile" class="form-control" placeholder="Your email">
												{if isset($message) }
													{$message}
												{/if}
										</div>
										<div class="form-group">
											<input type="password" class="form-control" placeholder="Your password" id="password" name="password">
												{if isset($message1) }
													{$message1}
												{/if}
										</div>
										<div class="form-group text-center add_top_20">
											<input class="btn_1 medium" name="login" type="submit" value="Login">
										</div>
									</form>
								</div>
							</div>
							<!-- /login -->
						</div>
					</div>
				</main>
		
		{include file='buildermodule/common/footer.tpl'}
		{include file='buildermodule/common/scripts.tpl'}
	</body>
</html>