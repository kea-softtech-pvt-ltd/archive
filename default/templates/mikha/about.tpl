  {include file='mikha/header.tpl'}
    <!-- begin:header -->
    <div id="header" class="heading" style="background-image: url(img/img01.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="page-title">
              <h2>About</p>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">About</li>
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
              <div class="blog-content">
                <div class="blog-image" style="background-image: url(img/img16.jpg);">
                  <div class="blog-author"><img src="img/logos.png" alt="Mikha - Responsive Real Estate Theme"> Mikha - Responsive Real Estate Theme</div>
                </div>
                <div class="blog-title">
                  <h2>Our Story</h2>
                  <h3>...Emmm jadi awalnya kita tu gini</h3>
                </div>

                <div class="blog-text">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis. Sed blandit augue vitae augue scelerisque bibendum. Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis. Sed blandit augue vitae augue scelerisque bibendum.</p>
                </div>

                <div class="blog-title">
                  <h2>Our Team</h2>
                  <h3>...We are an awesome artist </h3>
                </div>

                <div class="the-team">
                  <div class="row container-realestate">
                   {foreach from=$teamListArray key=k item=v}
                    <div class="col-md-4">
                      <div class="team-container">
                        <div class="team-image">
                           <img src="{SITE_URL}/administrator/source/upload/team/{$v['img']}" alt="the team - mikha realestate theme" style="height:250px">
                        </div> 
                        <div class="team-description">
                          <h3>{$v['name']}<small>{$v['title']}</small></h3>
                          <p>{$v['description']}</p>
                          <div class="team-social">
                            <span><a href="#" title="Twitter" rel="tooltip" data-placement="top"><i class="fa fa-twitter"></i></a></span>
                            <span><a href="#" title="Facebook" rel="tooltip" data-placement="top"><i class="fa fa-facebook"></i></a></span>
                            <span><a href="#" title="Google Plus" rel="tooltip" data-placement="top"><i class="fa fa-google-plus"></i></a></span>
                            <span><a href="#" title="Instagram" rel="tooltip" data-placement="top"><i class="fa fa-instagram"></i></a></span>
                            <span><a href="#" title="LinkedIn" rel="tooltip" data-placement="top"><i class="fa fa-linkedin"></i></a></span> 
                          </div>                       
                        </div>
                      </div>
                    </div>
                    {/foreach}
                    <!-- break -->
              
                  </div>
                </div>

              </div>
            </div>
          </div>
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
            </div>
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

