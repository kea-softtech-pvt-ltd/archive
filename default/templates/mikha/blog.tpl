{include file='mikha/header.tpl'}    
    <!-- begin:header -->
    <div id="header" class="heading" style="background-image: url(img/img01.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="page-title">
              <h2>Blog</h2>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">Blog</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <!-- end:header -->

    <!-- begin:content -->
    <div id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="blog-container">
              <div class="blog-image" style="background-image: url(img/img11.jpg);">
                <div class="blog-author"><img src="img/avatar.png" alt="afriq - blog author"> <a href="#">Kuriman</a> on June 30, 2014</div>
              </div>
              <div class="blog-content">
                <div class="blog-title">
                  <h2>Karena punya rumah idaman adalah harapan</h2>
                  <h3>...dan karena rumah sendiri lebih nyaman dari kontrakan</h3>
                </div>

                <div class="blog-text">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis. Sed blandit augue vitae augue scelerisque bibendum. Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis.</p>
                  <p><a href="blog_single.html" class="btn btn-success">Read more <i class="fa fa-arrow-circle-o-right"></i></a></p>
                </div>

              </div>
            </div>
            <!-- break -->

            <div class="blog-container">
              <div class="blog-image" style="background-image: url(img/img16.jpg);">
                <div class="blog-author"><img src="img/avatar.png" alt="afriq - blog author"> <a href="#">Kuriman</a> on June 30, 2014</div>
              </div>
              <div class="blog-content">
                <div class="blog-title">
                  <h2>Sak sruputan njuk nulis meneh</h2>
                  <h3>...dan kadang teh panas adalah embrio inspirasi</h3>
                </div>

                <div class="blog-text">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis. Sed blandit augue vitae augue scelerisque bibendum. Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis.</p>
                  <p><a href="blog_single.html" class="btn btn-success">Read more <i class="fa fa-arrow-circle-o-right"></i></a></p>
                </div>

              </div>
            </div>
            <!-- break -->

            <div class="blog-container">
              <div class="blog-image" style="background-image: url(img/img17.jpg);">
                <div class="blog-author"><img src="img/avatar.png" alt="afriq - blog author"> <a href="#">Kuriman</a> on June 30, 2014</div>
              </div>
              <div class="blog-content">
                <div class="blog-title">
                  <h2>Code for food</h2>
                  <h3>...karena koding adalah hobi penyambung hidup</h3>
                </div>

                <div class="blog-text">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis. Sed blandit augue vitae augue scelerisque bibendum. Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis.</p>
                  <p><a href="blog_single.html" class="btn btn-success">Read more <i class="fa fa-arrow-circle-o-right"></i></a></p>
                </div>

              </div>
            </div>

            <div class="blog-paged">
              <ul class="pager">
                <li class="previous disabled"><a href="#">&larr; Newer</a></li>
                <li class="next"><a href="#">Older &rarr;</a></li>
              </ul>
            </div>

          </div>
        </div>
      </div>
    </div>
    <!-- end:content -->

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

    <!-- begin:footer -->
  {include file='mikha/footer.tpl'}
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
            <form role="form">
              <div class="form-group">
                <label for="emailAddress">Email address</label>
                <input type="email" class="form-control input-lg" placeholder="Enter email">
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control input-lg" placeholder="Password">
              </div>
              <div class="checkbox">
                <label>
                  <input type="checkbox" name="forget"> Keep me logged in
                </label>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <p>Don't have account ? <a href="#modal-signup"  data-toggle="modal" data-target="#modal-signup">Sign up here.</a></p>
            <input type="submit" class="btn btn-success btn-block btn-lg" value="Sign in">
          </div>
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
            <form role="form">
              <div class="form-group">
                <input type="email" class="form-control input-lg" placeholder="Enter email">
              </div>
              <div class="form-group">
                <input type="password" class="form-control input-lg" placeholder="Password">
              </div>
              <div class="form-group">
                <input type="password" class="form-control input-lg" placeholder="Confirm Password">
              </div>
              <div class="checkbox">
                <label>
                  <input type="checkbox" name="agree"> Agree to our <a href="#">terms of use</a> and <a href="#">privacy policy</a>
                </label>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <p>Already have account ? <a href="#modal-signin" data-toggle="modal" data-target="#modal-signin">Sign in here.</a></p>
            <input type="submit" class="btn btn-success btn-block btn-lg" value="Sign up">
          </div>
        </div>
      </div>
    </div>
    <!-- end:modal-signup -->
   
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
  </body>
</html>
