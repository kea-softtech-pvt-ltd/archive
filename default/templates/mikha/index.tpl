{if (isset($smarty.session.role) && $smarty.session.role == 4)}
  {include file='mikha/header.tpl'}
{else}
  {include file='mikha/header1.tpl'}
{/if}
<style>
label.error {
    color: red !important;
}
</style>
    <!-- begin:header -->
    <div id="header" class="carousel slide carousel-fade" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(img/slide01.jpg);">
        </div>
        <div class="item" style="background-image: url(img/slide02.jpg);">
        </div>
      </div>
      <a class="left carousel-control" href="#header" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#header" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
    <!-- end:header -->

    <!-- begin:search -->
    <div class="the-search">
       <div class="container">
        <div class="row">
        <form role="form" class="advance-search" action="search" method="GET">
          {if (count($propertiesListArray) > 0)}
             {else}
              <center><h1>Property not found</h1></center>
            {/if}
            <div class="col-md-4 col-sm-4 col-xs-4">
              <div class="form-group">
                <label for="type">Type</label>
                <select class="form-control" name="propertyType" id="propertyType">
                     <option value="" {if (isset($smarty.get.propertyType) && $smarty.get.propertyType == "")} selected {/if}>All</option>
                  	{foreach from=$proListArray key=k item=v}
                       <option value="{$v['id']}" {if (isset($smarty.get.propertyType) && $smarty.get.propertyType == "{$v['id']}")} selected {/if}>{$v['name']}</option>
                   {/foreach}
                </select>
              </div>
               <div class="form-group">
                <label for="minprice">Min Price</label>
                <select class="form-control" id="minprice" name="minprice">
                    <option value=""{if (isset($smarty.get.minprice) && $smarty.get.minprice == "")} selected {/if}>select</option>
                    <option value="5000" {if (isset($smarty.get.minprice) && $smarty.get.minprice == "5000")} selected {/if}>$5,000</option>
                    <option value="10000" {if (isset($smarty.get.minprice) && $smarty.get.minprice == "10000")} selected {/if}>$10,000</option>
                    <option value="20000" {if (isset($smarty.get.minprice) && $smarty.get.minprice == "20000")} selected {/if}>$20,000</option>
                    <option value="50000" {if (isset($smarty.get.minprice) && $smarty.get.minprice == "50000")} selected {/if}>$50,000</option>
                    <option value="1500000"{if (isset($smarty.get.minprice) && $smarty.get.minprice == "1500000")} selected {/if}>$15,00,000</option>
                </select>
              </div>         
            </div>
            <!-- break -->
            <div class="col-md-4 col-sm-4 col-xs-4">
              <div class="form-group">
                <label for="bathroom">Bathroom</label>
                  <select class="form-control"  name="baths" id="baths">
                    <option value="" {if (isset($smarty.get.baths) && $smarty.get.baths == "")} selected {/if}>Select</option>
                    <option value="1" {if (isset($smarty.get.baths) && $smarty.get.baths == "1")} selected {/if}>1</option>
                    <option value="2" {if (isset($smarty.get.baths) && $smarty.get.baths == "2")} selected {/if}>2</option>
                    <option value="3" {if (isset($smarty.get.baths) && $smarty.get.baths == "3")} selected {/if}>3</option>
                    <option value="4" {if (isset($smarty.get.baths) && $smarty.get.baths == "4")} selected {/if}>4</option>
                    <option value="5" {if (isset($smarty.get.baths) && $smarty.get.baths == "5")} selected {/if}>5</option>
                  </select>
              </div>
                <div class="form-group">
                <label for="maxprice">Max Price</label>
                 <select class="form-control" id="maxprice" name="maxprice">
                    <option value=""{if (isset($smarty.get.maxprice) && $smarty.get.maxprice == "")} selected {/if}>select</option>
                    <option value="2000000" {if (isset($smarty.get.maxprice) && $smarty.get.maxprice == "2000000")} selected {/if}>$20,00,000</option>
                    <option value="19000" {if (isset($smarty.get.maxprice) && $smarty.get.maxprice == "19000")} selected {/if}>$19,000</option>
                    <option value="40000" {if (isset($smarty.get.maxprice) && $smarty.get.maxprice == "40000")} selected {/if}>$40,000</option>
                    <option value="100000" {if (isset($smarty.get.maxprice) && $smarty.get.maxprice == "10000")} selected {/if}>$100,000</option>
                    <option value="800000" {if (isset($smarty.get.maxprice) && $smarty.get.maxprice == "80000")} selected {/if}>$800,000</option>
                  </select>
              </div>
             
            </div>
            <!-- break -->
            <div class="col-md-3 col-sm-3 col-xs-6">
              <div class="form-group">
                <label for="bedroom">Bedroom</label>
                  <select class="form-control" name="beds" id="beds">
                    <option value="" {if (isset($smarty.get.beds) && $smarty.get.beds == "")} selected {/if}>Select</option>
                  	{foreach from=$proBedsListArray key=k item=v}
                       <option value="{$v['id']}" {if (isset($smarty.get.beds) && $smarty.get.beds == "{$v['id']}")} selected {/if}>{substr($v['name'], 0, 1)} </option>
                   {/foreach}
                  </select>
              </div>
              <div class="form-group">
                <label for="submit">&nbsp;</label>
                <input type="submit" name="submit" value="Search" class="btn btn-success btn-block">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- end:search -->


    <!-- begin:service -->
    <div id="service">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2>Mikha Best Real Estate Deals <small>You need to do is very simple just join us</small></h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-home"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-check-square-o"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-thumbs-up"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-umbrella"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
        </div>
      </div>  
    </div>
    <!-- end:service -->

   <!-- begin:service -->
    <div id="service">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2>Mikha Best Real Estate Deals <small>You need to do is very simple just join us</small></h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-home"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-check-square-o"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-thumbs-up"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
          <!-- break -->
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="service-container">
              <div class="service-icon">
                <a href="#"><i class="fa fa-umbrella"></i></a>
              </div>
              <div class="service-content">
                <h3>Lorem ipsum dolor sit</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt.</p>
              </div>
            </div>
          </div>
        </div>
      </div>  
    </div>
    <!-- end:service -->

    <!-- begin:content -->
    <div id="content">
      <div class="container">
        <!-- begin:latest -->
        <div class="row">
          <div class="col-md-12">
            <div class="heading-title">
              <h2>Latest Real Estate</h2>
            </div>
          </div>
        </div>
        <div class="row">
            {if (count($propertiesListArray) > 0)}
        {foreach from=$propertiesListArray key=k item=v}
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="property-container">
              <div class="property-image">
               {$imagearray = explode(',',$v['images'])}
               {foreach from=$imagearray key=index item=image name=count}{if $index == 0}<img src="{SITE_URL}/administrator/upload/properties/{$image}" alt="partner of mikha responsive real estate theme">{/if}{/foreach}
                <div class="property-price">
                  <h4>
                    {foreach from=$proTypeListArray key=k item=v2}
					            {if ($v['title'] == $v2['id'])}{$v2['name']}{/if}
					          {/foreach}
                  </h4>
                  <span>${$v['built_area'] * $v['price']}</span>
                </div>
                <div class="property-status">
                  <span>For Sale</span>
                </div>
              </div>
              <div class="property-features">
                <span><i class="fa fa-home"></i>{$v['carpet_area']} m<sup>2</sup></span>
                <span><i class="fa fa-hdd-o"></i> {$v['type']} Bead </span>
                <span><i class="fa fa-male"></i> {$v['bath']} Bath</span>
              </div>
              <div class="property-content">
                <h3><a href="#">{$v['name']}</a> <small>{$v['address']}</small></h3>
              </div>
              <div class="property-footer">
                <a href="#" title="Add to favorite"><i class="fa fa-heart"></i></a>
                <a href="#" title="Contact Agent"><i class="fa fa-envelope"></i></a>
              </div>
            </div>
           
          </div>
           {/foreach}
            {else}
               <div>
                  <center><h1>Property not found</h1></center>
               </div>
               
            {/if}
          <!-- break -->
        </div>
        <!-- end:latest -->

      </div>
    </div>
    <!-- end:content -->

    <!-- begin:testimony -->
    <div id="testimony" style="background-image: url(img/img01.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div id="testislider" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active">
                  <div class="testimony-container">
                    <div class="testimony-image" style="background: url(img/team01.jpg)"></div>
                    <div class="testimony-content">
                      <h3>Jane Doe</h3>
                      <blockquote>
                        <p>Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis</p>
                      </blockquote>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testimony-container">
                    <div class="testimony-image" style="background: url(img/team02.jpg)"></div>
                    <div class="testimony-content">
                      <h3>Cen Lung</h3>
                      <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                      </blockquote>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testimony-container">
                    <div class="testimony-image" style="background: url(img/team03.jpg)"></div>
                    <div class="testimony-content">
                      <h3>Julia</h3>
                      <blockquote>
                        <p>Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.</p>
                      </blockquote>
                    </div>
                  </div>
                </div>
              </div>
              <a class="left carousel-control" href="#testislider" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
              </a>
              <a class="right carousel-control" href="#testislider" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
              </a>
            </div>
            
          </div>
        </div>
      </div>
    </div>
    <!-- end:testimony -->

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

                <div class="post-container post-noborder">
                  <div class="post-img post-img-circle" style="background: url(img/team03.jpg);"></div>
                  <div class="post-content list-agent">
                    <div class="heading-title">
                      <h2><a href="#">Julia</a></h2>
                    </div>
                    <div class="post-meta">
                      <span><i class="fa fa-envelope-o"></i> johndoe@domain.com</span><br>
                      <span><i class="fa fa-phone"></i> +12345678</span>
                    </div>
                  </div>
                </div>
                <!-- break -->

                <div class="post-container post-noborder">
                  <div class="post-img post-img-circle" style="background: url(img/avatar.png);"></div>
                  <div class="post-content list-agent">
                    <div class="heading-title">
                      <h2><a href="#">John Doe</a></h2>
                    </div>
                    <div class="post-meta">
                      <span><i class="fa fa-envelope-o"></i> johndoe@domain.com</span><br>
                      <span><i class="fa fa-phone"></i> +12345678</span>
                    </div>
                  </div>
                </div>
                <!-- break -->

                <div class="post-container post-noborder">
                  <div class="post-img post-img-circle" style="background: url(img/team01.jpg);"></div>
                  <div class="post-content list-agent">
                    <div class="heading-title">
                      <h2><a href="#">Jane Doe</a></h2>
                    </div>
                    <div class="post-meta">
                      <span><i class="fa fa-envelope-o"></i> johndoe@domain.com</span><br>
                      <span><i class="fa fa-phone"></i> +12345678</span>
                    </div>
                  </div>
                </div>
                <!-- break -->

              </div>
            </div>
            <!-- break -->

          </div>
          <!-- end:agent -->
        </div>
      </div>
    </div>
    <!-- end:news -->

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
               	<input class="upload" type="file" id="image" name="image">
                 <div class="text-danger" id="image_error"></div>
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
             <button type="button" name="submit" class="btn btn-success btn-block btn-lg" onclick="signUp()" > Sign up</button>
          </div>
        </div>
      </div>
    </div>
    <!-- end:modal-signup -->



    <!-- begin:footer -->
    {include file='mikha/footer.tpl'}
    <!-- end:footer -->


   
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
      <script src="js/jquery.validate.js"></script>
    <script src="js/additional-methods.js"></script>
  
    <script src="js/reservation.js"></script>
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