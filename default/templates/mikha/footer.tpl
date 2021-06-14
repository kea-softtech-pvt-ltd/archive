    
    <!-- begin:subscribe -->
    <div id="subscribe">
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-md-offset-2 col-sm-8 col-xs-12">
            <h3>Get Newsletter Update</h3>
          </div>
          <div class="col-md-3 col-sm-4 col-xs-12">
            <div class="input-group">
              <input type="text" class="form-control input-lg" placeholder="Enter your mail">
              <span class="input-group-btn">
                <button class="btn btn-success btn-lg" type="submit"><i class="fa fa-envelope"></i></button>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end:subscribe -->

    <!-- begin:partner -->
    <div id="partner">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="heading-title bg-white">
              <h2>Our Partnership</h2>
            </div>
          </div>
        </div>
        <!-- break -->

        <div class="row">
          <div class="col-md-12">
            <div class="jcarousel-wrapper">
              <div class="jcarousel">
                <ul>
                  <li><a href="#"><img src="img/img01.jpg" alt="partner of mikha responsive real estate theme"></a></li>
                  <li><a href="#"><img src="img/img02.jpg" alt="partner of mikha responsive real estate theme"></a></li>
                  <li><a href="#"><img src="img/img03.jpg" alt="partner of mikha responsive real estate theme"></a></li>
                  <li><a href="#"><img src="img/img04.jpg" alt="partner of mikha responsive real estate theme"></a></li>
                  <li><a href="#"><img src="img/img05.jpg" alt="partner of mikha responsive real estate theme"></a></li>
                  <li><a href="#"><img src="img/img06.jpg" alt="partner of mikha responsive real estate theme"></a></li>
                </ul>
              </div>
              <a href="#" class="jcarousel-control-prev"><i class="fa fa-angle-left"></i></a>
              <a href="#" class="jcarousel-control-next"><i class="fa fa-angle-right"></i></a>
              <!-- <p class="jcarousel-pagination"></p> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end:partner -->
</div> <!---That div add on 2-06-21  -->
    <!-- begin:footer -->
    <div id="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="widget">
              <h2>Mikha.</h2>
              <address>
                <strong>Real estate theme.</strong><br>
                9.5 Main Street, Jjrn Plrt Btl<br>
                <br>
                Telp. : +62-345678910<br>
                Email : info@mikha.com
              </address>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="widget">
              <h3>Properties in Pune</h3>
              <ul class="list-unstyled">
                <li><a href="#">Aundh</a></li>
                <li><a href="#">Hadapsar</a></li>
                <li><a href="#">Kothrud</a></li>
                <li><a href="#">Wakad</a></li>
                <li><a href="#">Shivaji Nagar</a></li>
              </ul>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="widget">
              <h3>Top Agents Listed</h3>
              <ul class="list-unstyled">
                <li><a href="#">Lorenso</a></li>
                <li><a href="#">Bardiman</a></li>
                <li><a href="#">Tarjono noto boto limo</a></li>
                <li><a href="#">Surti</a></li>
                <li><a href="#">Ngatinem</a></li>
              </ul>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="widget">
              <h3>Features</h3>
              <ul class="list-unstyled">
                <li><a href="#">My Account</a></li>
                <li><a href="#">How To</a></li>
                <li><a href="#">Market Trend</a></li>
                <li><a href="#">Android App</a></li>
                <li><a href="#">IOS App</a></li>
              </ul>
            </div>
          </div>
          <!-- break -->
        </div>
        <!-- break -->

        <!-- begin:copyright -->
        <div class="row">
          <div class="col-md-12 copyright">
            <p>&copy; 2014 Mikha by <strong>avriqqlabs.</strong> All Right Reserved.</p>
            <a href="#top" class="btn btn-success scroltop"><i class="fa fa-angle-up"></i></a>
          </div>
        </div>
        <!-- end:copyright -->

      </div>
    </div>
    <!-- end:footer -->


   <!-- begin:modal-signin -->
    <div class="modal fade" id="modal-signin" tabindex="-1" role="dialog" aria-labelledby="modal-signin" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Sign in</h4>
          </div>
          <div class="modal-body">
           
            <form action="{$siteroot}mikha/index.php" id="signin" method="post" name="signin">
              <div class="form-group">
                <label for="emailAddress">Email address</label>
                <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Enter email" >
                {if isset($message) }
													{$message}
								{/if}
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" >
                  	{if isset($message1) }
													{$message1}
												{/if}
              </div>
              {* <div class="checkbox">
                <label>
                  <input type="checkbox" name="forget"> Keep me logged in
                </label>
              </div> *}
            
          </div>
          <div class="modal-footer">
            <p>Don't have account ? <a href="#modal-signup"  data-toggle="modal" data-target="#modal-signup">Sign up here.</a></p>
            <input type="submit" name="login" class="btn btn-success btn-block btn-lg" value="Sign in" />
          </div>
           </form>
        </div>
      </div>
     
    </div>
    
    <!-- end:modal-signin -->

    <!-- begin:modal-signup -->
    <div class="modal fade" id="modal-signup" tabindex="-1" role="dialog" aria-labelledby="modal-signup" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Sign up</h4>
          </div>
          <div class="modal-body">
             <form id="signup-form" method="POST" action="" enctype="multipart/form-data">
             <div class="alert alert-success text-center col-md-12" id="sucesss_message" style="width:100%;display:none;"></div>
              <div class="text-danger" id="cofirm_password_error"></div>
              <div class="form-group">
                <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Enter email">
                 <div class="text-danger" id="email_error"></div>
              </div>
              <div class="form-group">
                <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
                <div class="text-danger" id="password_error"></div>
              </div>
              <div class="form-group">
                <input type="password" name="confirm_password" id="confirm_password" class="form-control input-lg" placeholder="Confirm Password">
                 <div class="text-danger" id="confirm_password_error"></div>
              </div>
              <div class="form-group">
                <input type="text" name="user_name" id="user_name" class="form-control input-lg" placeholder="User  name">
                 <div class="text-danger" id="user_error"></div>
              </div>
              <div class="form-group">
               	<input class="upload" type="file" id="image" name="image" />
                 <div class="text-danger" id="image_error"></div>
              </div>				
              {* <div class="checkbox">
                <label>
                  <input type="checkbox" name="agree"> Agree to our <a href="#">terms of use</a> and <a href="#">privacy policy</a>
                </label>
              </div> *}
            </form>
          </div>
          <div class="modal-footer">
            <p>Already have account ? <a href="#modal-signin" data-toggle="modal" data-target="#modal-signin">Sign in here.</a></p>
             <button type="button" name="submit" class="btn btn-success btn-block btn-lg" onclick="signUp()" > Sign up</button>
          </div>
        </div>
      </div>
    </div>
    <!-- end:modal-signup -->

    <!-- begin:modal-logout -->
    <div class="modal fade" id="modal-logout" tabindex="-1" role="dialog" aria-labelledby="modal-logout" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Logout user</h4>
          </div>
          <div class="modal-body">
             <h3>Ready to Leave?</h3>
               Select "Logout" below if you are ready to end your current session.
             <form id="logout-form" method="POST" action="" enctype="multipart/form-data">
              <div class="alert alert-success text-center col-md-12" id="sucesss_message" style="width:100%;display:none;"></div>
            </form>
          </div>
          <div class="modal-footer">
            <a class="btn btn-success btn-block btn-lg" href="logout">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- end:modal-logout -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
     <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
    <script src="js/gmap3.min.js"></script>
    <script src="js/jquery.easing.js"></script>
    <script src="js/jquery.jcarousel.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/script.js"></script>

    <script src="js/jquery.validate.js"></script>
    <script src="js/additional-methods.js"></script>
    <script src="js/reservation.js"></script>
  </body>
</html>

  <script>
function signUp() {

		var _valid = 1;
		var password = $("#password").val();
		var email = $("#email").val();
    var user_name = $("#user_name").val();
    var image = $("#image").val();
    var confirm_password = $("#confirm_password").val();
		if(email=="") 
        {
            $('#email_error').show();
            $('#email_error').html('Please enter email.');
            setTimeout(function(){ $('#email_error').hide(); }, 2000);
            _valid = 0;
        }  
      if(user_name=="") 
        {
            $('#user_error').show();
            $('#user_error').html('Please enter user name.');
            setTimeout(function(){ $('#user_error').hide(); }, 2000);
            _valid = 0;
        }  
         if(image=="") 
        {
            $('#image_error').show();
            $('#image_error').html('Please slect profile picter.');
            setTimeout(function(){ $('#image_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(password=="") 
        {
            $('#password_error').show();
            $('#password_error').html('Please entr password.');
            setTimeout(function(){ $('#password_error').hide(); }, 2000);
            _valid = 0;
        } 
    if(confirm_password=="") 
        {
            $('#confirm_password_error').show();
            $('#confirm_password_error').html('Please entr confirm password.');
            setTimeout(function(){ $('#confirm_password_error').hide(); }, 2000);
            _valid = 0;
        } 
    else if (confirm_password != password)
	  {
		$('#cofirm_password_error').show().html('Password and confirm password not matched.');
		setTimeout(function(){ $('#cofirm_password_error').hide();},3000)
		_valid=0;
    } 
		if(_valid == 1) {
		var form = $('#signup-form')[0];
		var formdata = new FormData(form);
		formdata.append('action', 'signup');
		$.ajax({     
				url: "{$adminroot}/ajaxuser",
        type: "POST",
        data:formdata, 
				enctype: 'multipart/form-data',
				dataType:"JSON",
				processData: false,  // Important!
				contentType: false,
				cache: false,
        success: function(result)
              {	
          console.log(result);
					if(result.status == 1){
						$('#sucesss_message').show();
          	$('#sucesss_message').html('User signup sucessfull.');
        		setTimeout(function(){ $('#sucesss_message').hide(); }, 3000);
            setTimeout(function(){ window.location.href='index.php'; },3000);	
					}
                }
            });
		}   
}
</script>