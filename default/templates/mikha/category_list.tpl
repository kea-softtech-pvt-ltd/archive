 {include file='mikha/header.tpl'}
 <!--end menu bar --->
    <!-- begin:header -->
    <div id="header" class="heading" style="background-image: url(img/img01.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="page-title">
              <h2>Category : <span>Villa</span></p>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li><a href="#">Category</a></li>
              <li class="active">Villa</li>
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
          <!-- begin:article -->
          <div class="col-md-9 col-md-push-3">
            <!-- begin:sorting -->
            <div class="row sort">
              <div class="col-md-4 col-sm-4 col-xs-3">
                <a href="category" class="btn btn-default"><i class="fa fa-th"></i></a>
                <a href="category_list" class="btn btn-success"><i class="fa fa-list"></i></a>
              </div>
              <div class="col-md-8 col-sm-8 col-xs-9">
                <form class="form-inline" role="form">
                  <span>Sort by : </span>
                  <div class="form-group">
                    <label class="sr-only" for="sortby">Sort by : </label>
                    <select class="form-control">
                      <option>Most Recent</option>
                      <option>Price (Low &gt; High)</option>
                      <option>Price (High &gt; Low)</option>
                      <option>Most Popular (Low &gt; High)</option>
                    </select>
                  </div>
                  <span>Show : </span>
                  <div class="form-group">
                    <label class="sr-only" for="show">Show : </label>
                    <select class="form-control">
                      <option>6</option>
                      <option>10</option>
                      <option>15</option>
                      <option>20</option>
                      <option>25</option>
                      <option>50</option>
                      <option>100</option>
                    </select>
                  </div>
                </form>
              </div>
            </div>
            <!-- end:sorting -->

            <!-- begin:product -->
            
            <div class="row container-realestate">
            {foreach from=$propertiesListArray key=k item=v}
              <div class="col-md-12 col-sm-12 col-xs-12" href="index.php">
                <div class="property-container">
                  <div class="property-content-list">
                    <div class="property-image-list">
                      <img src="img/img12.jpg" alt="mikha real estate theme">
                      <div class="property-price">
                        <h4>{$v['name']}</h4>
                        <span>$30,000<small>/month</small></span>
                      </div>
                      <div class="property-status">
                        <span>For Rent</span>
                      </div>
                      <div class="property-footer">
                        <a href="#" title="Add to favorite"><i class="fa fa-heart"></i></a>
                        <a href="#" title="Contact Agent"><i class="fa fa-envelope"></i></a>
                         <a href="single?id={$v['id']}" title="View page"><i class="fa fa-eye"></i></a>
                      </div>
                    </div>
                    <div class="property-text">
                      <h3><a href="#">{$v['name']}</a> <small>{$v['address']}</small></h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                      cillum dolore eu fugiat nulla pariatur.</p>
                      <p><a href="#" class="btn btn-success">More Detail &raquo;</a></p>
                    </div>
                  </div>
                  <div class="property-features">
                    <span><i class="fa fa-home"></i> {$v['carpet_area']} m<sup>2</sup></span>
                    <span><i class="fa fa-hdd-o"></i> {$v['type']}</span>
                    <span><i class="fa fa-male"></i> {$v['bath']} Bath</span>
                    <span><i class="fa fa-building-o"></i> 2 Floors</span>
                    <span><i class="fa fa-car"></i> 2 Garages</span>
                  </div>
                </div>
           
              </div>
               {/foreach}
              <!-- break -->
         
            </div>
            <!-- end:product -->

            <!-- begin:pagination -->
            <div class="row">
              <div class="col-md-12">
                <ul class="pagination">
                  <li class="disabled"><a href="#">&laquo;</a></li>
                  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- end:pagination -->
          </div>
          <!-- end:article -->

          <!-- begin:sidebar -->
          <div class="col-md-3 col-md-pull-9 sidebar">
            <div class="widget widget-white">
              <div class="widget-header">
                <h3>Advance Search</h3>
              </div>    
              <form role="form" class="advance-search">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-success">
                    <input type="radio" name="options" id="option1"> For Rent
                  </label>
                  <label class="btn btn-success">
                    <input type="radio" name="options" id="option2"> For Sale
                  </label>
                </div>
                <div class="form-group">
                  <label for="location">Location</label>
                  <select class="form-control">
                    <option>Miami</option>
                    <option>Doral</option>
                    <option>Little Havana</option>
                    <option>Perrine</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="type">Property Type</label>
                  <select class="form-control">
                    <option>Office</option>
                    <option>Shop</option>
                    <option>Villa</option>
                    <option>Apartment</option>
                    <option>Single Family Home</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="beds">Beds</label>
                  <select class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="baths">Baths</label>
                  <select class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="min-price">Min Price</label>
                  <select class="form-control">
                    <option>$1,000</option>
                    <option>$5,000</option>
                    <option>$10,000</option>
                    <option>$20,000</option>
                    <option>$50,000</option>
                    <option>$350,000</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="max-price">Max Price</label>
                  <select class="form-control">
                    <option>$9,000</option>
                    <option>$19,000</option>
                    <option>$40,000</option>
                    <option>$100,000</option>
                    <option>$800,000</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="min-area">Min Area</label>
                  <input type="text" class="form-control" placeholder="Min Area">
                </div>
                <div class="form-group">
                  <label for="max-area">Max Area</label>
                  <input type="text" class="form-control" placeholder="Max Area">
                </div>
                <input type="submit" name="submit" value="Search" class="btn btn-success btn-block">
              </form>
            </div>
            <!-- break -->
            <div class="widget widget-sidebar widget-white">
              <div class="widget-header">
                <h3>Property Type</h3>
              </div>    
              <ul class="list-check">
                <li><a href="#">Office</a>&nbsp;(18)</li>
                <li><a href="#">Office</a>&nbsp;(43)</li>
                <li><a href="#">Shop</a>&nbsp;(31)</li>
                <li><a href="#">Villa</a>&nbsp;(52)</li>
                <li><a href="#">Apartment</a>&nbsp;(8)</li>
                <li><a href="#">Single Family Home</a>&nbsp;(11)</li>
              </ul>
            </div>
            <!-- break -->
          </div>
          <!-- end:sidebar -->
          
        </div>
      </div>
    </div>
    <!-- end:content -->

    <!-- begin:news -->
    <div id="news">
      <div class="container">
        <div class="row">
          <!-- begin:blog -->
          <div class="col-md-4 col-sm-4">
            <div class="row">
              <div class="col-md-12">
                <div class="heading-title heading-title-sm bg-white">
                  <h2>Latest From Blog</h2>
                </div>
              </div>
            </div>
            <!-- break -->

            <div class="row">
              <div class="col-md-12">
                <div class="post-container post-noborder">
                  <div class="post-img" style="background: url(img/img02.jpg);"></div>
                  <div class="post-content">
                    <div class="post-meta">
                      <span><em>in</em> <a href="#" title="View all posts in berita utama" rel="category tag">berita utama</a></span>
                      <span><em>April 22, 2014</em></span>
                    </div>
                    <div class="heading-title">
                      <h2><a href="#">Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin</a></h2>
                    </div>
                  </div>
                </div>
                <!-- break -->

                <div class="post-container post-noborder">
                  <div class="post-img" style="background: url(img/img03.jpg);"></div>
                  <div class="post-content">
                    <div class="post-meta">
                      <span><em>in</em> <a href="#" title="View all posts in berita utama" rel="category tag">berita utama</a></span>
                      <span><em>April 22, 2014</em></span>
                    </div>
                    <div class="heading-title">
                      <h2><a href="#">Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin</a></h2>
                    </div>
                  </div>
                </div>
                <!-- break -->

                <div class="post-container post-noborder">
                  <div class="post-img" style="background: url(img/img15.jpg);"></div>
                  <div class="post-content">
                    <div class="post-meta">
                      <span><em>in</em> <a href="#" title="View all posts in berita utama" rel="category tag">berita utama</a></span>
                      <span><em>April 22, 2014</em></span>
                    </div>
                    <div class="heading-title">
                      <h2><a href="#">Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin</a></h2>
                    </div>
                  </div>
                </div>
                <!-- break -->

              </div>
            </div>
            <!-- break -->

          </div>
          <!-- end:blog -->

          <!-- begin:popular -->
          <div class="col-md-4 col-sm-4">
            <div class="row">
              <div class="col-md-12">
                <div class="heading-title heading-title-sm bg-white">
                  <h2>Popular Real Estate</h2>
                </div>
              </div>
            </div>
            <!-- break -->

            <div class="row">
              <div class="col-md-12">
                <div class="post-container">
                  <div class="post-img" style="background: url(img/img12.jpg);"><h3>For Rent</h3></div>
                  <div class="post-content">
                    <div class="post-meta">
                      <span><i class="fa fa-home"></i> 7,000 m<sup>2</sup> / </span>
                      <span><i class="fa fa-hdd-o"></i> 3 Bed / </span>
                      <span><i class="fa fa-male"></i> 2 Bath / </span>
                      <span><i class="fa fa-building-o"></i> 2 Floors / </span>
                      <span><i class="fa fa-car"></i> 2 Garages / </span>
                    </div>
                    <div class="heading-title">
                      <h2><a href="#">Residential - <span>$300,000</span>/year</a></h2>
                    </div>
                  </div>
                </div>
                <!-- break -->

                <div class="post-container">
                  <div class="post-img" style="background: url(img/img13.jpg);"><h3>For Rent</h3></div>
                  <div class="post-content">
                    <div class="post-meta">
                      <span><i class="fa fa-home"></i> 6,700 m<sup>2</sup> / </span>
                      <span><i class="fa fa-hdd-o"></i> 4 Bed / </span>
                      <span><i class="fa fa-male"></i> 2 Bath / </span>
                      <span><i class="fa fa-building-o"></i> 1 Floors / </span>
                      <span><i class="fa fa-car"></i> 2 Garages / </span>
                    </div>
                    <div class="heading-title">
                      <h2><a href="#">Commercial - <span>$700,000</span>/year</a></h2>
                    </div>
                  </div>
                </div>
                <!-- break -->

                <div class="post-container">
                  <div class="post-img" style="background: url(img/img14.jpg);"><h3>For Sale</h3></div>
                  <div class="post-content">
                    <div class="post-meta">
                      <span><i class="fa fa-home"></i> 5,000 m<sup>2</sup> / </span>
                      <span><i class="fa fa-hdd-o"></i> 3 Bed / </span>
                      <span><i class="fa fa-male"></i> 2 Bath / </span>
                      <span><i class="fa fa-building-o"></i> 1 Floors / </span>
                      <span><i class="fa fa-car"></i> 1 Garages / </span>
                    </div>
                    <div class="heading-title">
                      <h2><a href="#">Villa - <span>$800,000</span></a></h2>
                    </div>
                  </div>
                </div>
                <!-- break -->

              </div>
            </div>
            <!-- break -->

          </div>
          <!-- end:popular -->

          <!-- begin:agent -->
          <div class="col-md-4 col-sm-4">
            <div class="row">
              <div class="col-md-12">
                <div class="heading-title heading-title-sm bg-white">
                  <h2>Our Agents</h2>
                </div>
              </div>
            </div>
            <!-- break -->

            <div class="row">
              <div class="col-md-12">
                {foreach from=$agentListArray key=k item=v}
                <div class="post-container post-noborder">
                  <div class="post-img post-img-circle" style="background: url({SITE_URL}/administrator/source/upload/agent/{$v['img']});"></div>
                  <div class="post-content list-agent">
                    <div class="heading-title">
                      <h2><a href="#"> {$v['name']}</a></h2>
                    </div>
                    <div class="post-meta">
                      <span><i class="fa fa-envelope-o"></i> {$v['email']}</span><br>
                      <span><i class="fa fa-phone"></i> +{$v['phone']}</span>
                    </div>
                  </div>
                </div>
                {/foreach}
                <!-- break -->

          </div>
          <!-- end:agent -->
        </div>
      </div>
    </div>
    <!-- end:news -->

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
