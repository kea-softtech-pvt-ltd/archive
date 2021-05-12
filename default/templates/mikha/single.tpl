 {include file='mikha/header.tpl'}
    <!-- begin:header -->
    <div id="header" class="heading" style="background-image: url(img/img01.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="quick-search">
              <div class="row">
                <form role="form">
                  <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="form-group">
                      <label for="bedroom">Keyword</label>
                      <input type="text" class="form-control" placeholder="Enter keyword">
                    </div>
                    <div class="form-group">
                      <label for="bedroom">Bedroom</label>
                      <select class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                      </select>
                    </div>
                  </div>
                  <!-- break -->
                  <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="form-group">
                      <label for="status">Status</label>
                      <select class="form-control">
                        <option>On Sale</option>
                        <option>For Rent</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="bathroom">Bathroom</label>
                      <select class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                      </select>
                    </div>
                  </div>
                  <!-- break -->
                  <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="form-group">
                      <label for="type">Type</label>
                      <select class="form-control">
                        <option>Villa</option>
                        <option>Recident</option>
                        <option>Commercial</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="minprice">Min Price</label>
                      <select class="form-control">
                        <option>$4,200</option>
                        <option>$6,700</option>
                        <option>$8,150</option>
                        <option>$11,110</option>
                      </select>
                    </div>
                  </div>
                  <!-- break -->
                  <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="form-group">
                      <label for="maxprice">Max Price</label>
                      <select class="form-control">
                        <option>$8,200</option>
                        <option>$11,700</option>
                        <option>$14,150</option>
                        <option>$21,110</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="maxprice">&nbsp;</label>
                      <input type="submit" name="submit" value="Search Again" class="btn btn-success btn-block">
                    </div>
                  </div>

                </form>
              </div>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
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
            <div class="row">
              <div class="col-md-12 single-post">
                <ul id="myTab" class="nav nav-tabs nav-justified">
                  <li class="active"><a href="#detail" data-toggle="tab"><i class="fa fa-university"></i> Property Detail</a></li>
                  <li><a href="#location" data-toggle="tab"><i class="fa fa-paper-plane-o"></i> Property Location</a></li>
                </ul>

                <div id="myTabContent" class="tab-content">
                  <div class="tab-pane fade in active" id="detail">
                    <div class="row">
                      <div class="col-md-12">
                        <h2>{$propertiesArray['name']}</h2>
                        <div id="slider-property" class="carousel slide" data-ride="carousel">
                          <ol class="carousel-indicators">
                           {$imagearray = explode(',',$propertiesArray['images'])}
							              {foreach from=$imagearray key=index item=image name=count}
                            <li data-target="#slider-property" data-slide-to="0" class="">
                              <img src="{SITE_URL}/administrator/upload/properties/{$image}" alt="" style="height: auto;">
                            </li>
                            {/foreach}
                             <li data-target="#slider-property" data-slide-to="1" class="active">
                              <img src="img/img03.jpg" alt="">
                            </li>
                           {* <li data-target="#slider-property" data-slide-to="2">
                              <img src="img/img04.jpg" alt="">
                            </li> *}
                          </ol>
                          <div class="carousel-inner">
                            {$imagearray = explode(',',$propertiesArray['images'])}
							              {foreach from=$imagearray key=index item=image name=count}
                            <div class="item ">
                              <img src="{SITE_URL}/administrator/upload/properties/{$image}" alt=""style="height: 520px;"> 
                            </div>
                             {/foreach}
                            <div class="item active">
                              <img src="img/img03.jpg" alt="">
                            </div>
                            {* <div class="item">
                              <img src="img/img04.jpg" alt="">
                            </div> *}
                          </div>
                          <a class="left carousel-control" href="#slider-property" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                          </a>
                          <a class="right carousel-control" href="#slider-property" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                          </a>
                        </div>
                        <h3>Property Overview</h3>
                        <table class="table table-bordered">
                          <tr>
                            <td width="20%"><strong>ID</strong></td>
                            <td>{$propertiesArray['id']}</td>
                          </tr>
                          <tr>
                            <td><strong>Price</strong></td>
                            <td>${$propertiesArray['built_area'] * $propertiesArray['price']}</td>
                          </tr>
                          <tr>
                            <td><strong>Type</strong></td>
                            <td>Residential</td>
                          </tr>
                          <tr>
                            <td><strong>Contract</strong></td>
                            <td>Sale</td>
                          </tr>
                          <tr>
                            <td><strong>Location</strong></td>
                            <td>{$propertiesArray['address']}</td>
                          </tr>
                          <tr>
                            <td><strong>Bathrooms</strong></td>
                            <td>{$propertiesArray['bath']}</td>
                          </tr>
                          <tr>
                            <td><strong>type</strong></td>
                            <td>{$propertiesArray['type']}</td>
                          </tr>
                          <tr>
                            <td><strong>Area</strong></td>
                            <td>{$propertiesArray['carpet_area']}m<sup>2</sup> </td>
                          </tr>
                        </table>
                        <h3>Property Amenities</h3>
                        <div class="row">
                          <div class="col-md-4 col-sm-4">
                            <ul>
                              <li><i class="fa fa-check"></i>{$propertiesArray['a_name']}</li>

                              <li><i class="fa fa-check"></i> Balcony</li>
                              <li><i class="fa fa-times"></i> Bedding</li>
                              <li><i class="fa fa-check"></i> Cable TV</li>
                              <li><i class="fa fa-times"></i> Cleaning after exit</li>
                              <li><i class="fa fa-check"></i> Cofee pot</li>
                              <li><i class="fa fa-check"></i> Computer</li>
                              <li><i class="fa fa-times"></i> Cot</li>
                            </ul>
                          </div>
                       
                                                 
                        </div>

                        <h3>Property Description</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat.</p>
                      </div>
                    </div>

                    
                  </div>
                  <!-- break -->
                  <div class="tab-pane fade" id="location">
                    <div class="row">
                      <div class="col-md-12">
                        <div id="map-property"></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <h3>Contact Agent</h3>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 col-sm-6">
                        <div class="team-container team-dark">
                          <div class="team-image">
                            <img src="img/team01.jpg" alt="the team - mikha realestate theme">
                          </div>
                          <div class="team-description">
                            <h3>Katty Sharon</h3>
                            <p><i class="fa fa-phone"></i> Office : 021-234-5678<br>
                            <i class="fa fa-mobile"></i> Mobile : +62-3456-78910<br>
                            <i class="fa fa-print"></i> Fax : 021-234-5679</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            tempor incididunt ut labore et dolore magna aliqua.</p>
                            <div class="team-social">
                              <span><a href="#" title="Twitter" rel="tooltip" data-placement="top"><i class="fa fa-twitter"></i></a></span>
                              <span><a href="#" title="Facebook" rel="tooltip" data-placement="top"><i class="fa fa-facebook"></i></a></span>
                              <span><a href="#" title="Google Plus" rel="tooltip" data-placement="top"><i class="fa fa-google-plus"></i></a></span>
                              <span><a href="#" title="Email" rel="tooltip" data-placement="top"><i class="fa fa-envelope"></i></a></span> 
                              <span><a href="#" title="LinkedIn" rel="tooltip" data-placement="top"><i class="fa fa-linkedin"></i></a></span> 
                            </div>                       
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 col-sm-6">
                        <form>
                          <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control input-lg" placeholder="Enter name : ">
                          </div>
                          <div class="form-group">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control input-lg" placeholder="Enter email : ">
                          </div>
                          <div class="form-group">
                            <label for="telp">Telp.</label>
                            <input type="text" class="form-control input-lg" placeholder="Enter phone number : ">
                          </div>
                          <div class="form-group">
                            <label for="message">Message</label>
                            <textarea class="form-control input-lg" rows="7" placeholder="Type a message : "></textarea>
                          </div>
                          <div class="form-group">
                            <input type="submit" name="submit" value="Send Message" class="btn btn-success btn-lg">
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end:article -->

          <!-- begin:sidebar -->
          <div class="col-md-3 col-md-pull-9 sidebar">
            <div class="widget-white favorite">
              <a href="#"><i class="fa fa-heart"></i> Add to favorite</a>
            </div>
            <!-- break -->
            <div class="widget widget-sidebar widget-white">
              <div class="widget-header">
                <h3>Recent Property</h3>
              </div>    
              <ul>
                <li><a href="#">Luxury Villa</a></li>
                <li><a href="#">Land In Central Park</a></li>
                <li><a href="#">The Urban Life</a></li>
                <li><a href="#">Luxury Office</a></li>
                <li><a href="">Luxury Villa In Rego Park</a></li>
              </ul>
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
            <div class="widget widget-sidebar widget-white">
              <div class="widget-header">
                <h3>Top Agents</h3>
              </div>    
              <ul>
                <li><a href="#">John Doe</a></li>
                <li><a href="#">Christoper Drew</a></li>
                <li><a href="#">Jane Doe</a></li>
                <li><a href="#">Jeny</a></li>
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
