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
              <li><a href="#">Search</a></li>
              <li class="active">Your Keyword</li>
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
              <div class="col-md-12">
                <div class="heading-title heading-title-alt">
                  <h3>Property meeting the search criteria</h3>
                </div>
              </div>
            </div>
            <!-- begin:sorting -->
            <div class="row sort">
              <div class="col-md-4 col-sm-4 col-xs-3">
                <a href="search.html" class="btn btn-default"><i class="fa fa-th"></i></a>
                <a href="search_list.html" class="btn btn-success"><i class="fa fa-list"></i></a>
                <span>Show <strong>3</strong> of <strong>30</strong> result.</span>
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
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="property-container">
                  <div class="property-content-list">
                    <div class="property-image-list">
                      <img src="img/img13.jpg" alt="mikha real estate theme">
                      <div class="property-price">
                        <h4>Luxury Villa</h4>
                        <span>$30,000<small>/month</small></span>
                      </div>
                      <div class="property-status">
                        <span>For Rent</span>
                      </div>
                      <div class="property-footer">
                        <a href="#" title="Add to favorite"><i class="fa fa-heart"></i></a>
                        <a href="#" title="Contact Agent"><i class="fa fa-envelope"></i></a>
                      </div>
                    </div>
                    <div class="property-text">
                      <h3><a href="#">Land In Central Park</a> <small>22, JJ Road, Yogyakarta</small></h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                      cillum dolore eu fugiat nulla pariatur.</p>
                      <p><a href="#" class="btn btn-success">More Detail &raquo;</a></p>
                    </div>
                  </div>
                  <div class="property-features">
                    <span><i class="fa fa-home"></i> 7,000 m<sup>2</sup></span>
                    <span><i class="fa fa-hdd-o"></i> 3 Bed</span>
                    <span><i class="fa fa-male"></i> 2 Bath</span>
                    <span><i class="fa fa-building-o"></i> 2 Floors</span>
                    <span><i class="fa fa-car"></i> 2 Garages</span>
                  </div>
                </div>
              </div>
              <!-- break -->
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="property-container">
                  <div class="property-content-list">
                    <div class="property-image-list">
                      <img src="img/img13.jpg" alt="mikha real estate theme">
                      <div class="property-price">
                        <h4>Land In Central Park</h4>
                        <span>$30,000<small>/month</small></span>
                      </div>
                      <div class="property-status">
                        <span>For Sale</span>
                      </div>
                      <div class="property-footer">
                        <a href="#" title="Add to favorite"><i class="fa fa-heart"></i></a>
                        <a href="#" title="Contact Agent"><i class="fa fa-envelope"></i></a>
                      </div>
                    </div>
                    <div class="property-text">
                      <h3><a href="#">Land In Central Park</a> <small>22, JJ Road, Yogyakarta</small></h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                      cillum dolore eu fugiat nulla pariatur.</p>
                      <p><a href="#" class="btn btn-success">More Detail &raquo;</a></p>
                    </div>
                  </div>
                  <div class="property-features">
                    <span><i class="fa fa-home"></i> 7,000 m<sup>2</sup></span>
                    <span><i class="fa fa-hdd-o"></i> 3 Bed</span>
                    <span><i class="fa fa-male"></i> 2 Bath</span>
                    <span><i class="fa fa-building-o"></i> 2 Floors</span>
                    <span><i class="fa fa-car"></i> 2 Garages</span>
                  </div>
                </div>
              </div>
              <!-- break -->
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="property-container">
                  <div class="property-content-list">
                    <div class="property-image-list">
                      <img src="img/img13.jpg" alt="mikha real estate theme">
                      <div class="property-price">
                        <h4>The Urban Life</h4>
                        <span>$30,000<small>/month</small></span>
                      </div>
                      <div class="property-status">
                        <span>For Rent</span>
                      </div>
                      <div class="property-footer">
                        <a href="#" title="Add to favorite"><i class="fa fa-heart"></i></a>
                        <a href="#" title="Contact Agent"><i class="fa fa-envelope"></i></a>
                      </div>
                    </div>
                    <div class="property-text">
                      <h3><a href="#">Land In Central Park</a> <small>22, JJ Road, Yogyakarta</small></h3>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                      cillum dolore eu fugiat nulla pariatur.</p>
                      <p><a href="#" class="btn btn-success">More Detail &raquo;</a></p>
                    </div>
                  </div>
                  <div class="property-features">
                    <span><i class="fa fa-home"></i> 7,000 m<sup>2</sup></span>
                    <span><i class="fa fa-hdd-o"></i> 3 Bed</span>
                    <span><i class="fa fa-male"></i> 2 Bath</span>
                    <span><i class="fa fa-building-o"></i> 2 Floors</span>
                    <span><i class="fa fa-car"></i> 2 Garages</span>
                  </div>
                </div>
              </div>
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
            <div class="widget-sidebar">
              <ul id="myTab" class="nav nav-tabs">
                <li class="active"><a href="#popular" data-toggle="tab" title="Popular Property"><i class="fa fa-star-o"></i></a></li>
                <li class=""><a href="#recent" data-toggle="tab" title="Recent Property"><i class="fa fa-clock-o"></i></a></li>
                <li class=""><a href="#tags" data-toggle="tab" title="Tags"><i class="fa fa-tags"></i></a></li>
                <li class=""><a href="#archives" data-toggle="tab" title="Archives"><i class="fa fa-calendar"></i></a></li>
              </ul>

              <div id="myTabContent" class="tab-content">
                <!-- begin:popular-post -->
                <div class="tab-pane fade active in" id="popular">
                  <div class="post-container">
                    <div class="post-img" style="background: url(img/img02.jpg);"></div>
                    <div class="post-content">
                      <div class="heading-title">
                        <h2><a href="#">Food truck fixie locavore, accusamus mcsweeney's</a></h2>
                      </div>
                    </div>
                  </div>
                  <!-- break -->
                  <div class="post-container">
                    <div class="post-img" style="background: url(img/img03.jpg);"></div>
                    <div class="post-content">
                      <div class="heading-title">
                        <h2><a href="#">Food truck fixie locavore, accusamus mcsweeney's</a></h2>
                      </div>
                    </div>
                  </div>
                  <!-- break -->
                  <div class="post-container">
                    <div class="post-img" style="background: url(img/img04.jpg);"></div>
                    <div class="post-content">
                      <div class="heading-title">
                        <h2><a href="#">Food truck fixie locavore, accusamus mcsweeney's</a></h2>
                      </div>
                    </div>
                  </div>
                  <!-- break -->
                </div>
                <!-- end:popular-post -->

                <!-- begin:recent-post -->
                <div class="tab-pane fade" id="recent">
                  <div class="post-container">
                    <div class="post-img" style="background: url(img/img06.jpg);"><h3>For Sale</h3></div>
                    <div class="post-content">
                      <div class="post-meta">
                        <span><i class="fa fa-home"></i> 4,500 m<sup>2</sup> / </span>
                        <span><i class="fa fa-hdd-o"></i> 3 Bed / </span>
                        <span><i class="fa fa-male"></i> 2 Bath / </span>
                        <span><i class="fa fa-building-o"></i> 1 Floors / </span>
                        <span><i class="fa fa-car"></i> 1 Garages / </span>
                      </div>
                      <div class="heading-title">
                        <h2><a href="#">Urban Life - <span>$500,000</span></a></h2>
                      </div>
                    </div>
                  </div>
                  <!-- break -->
                  <div class="post-container">
                    <div class="post-img" style="background: url(img/img07.jpg);"><h3>For Rent</h3></div>
                    <div class="post-content">
                      <div class="post-meta">
                        <span><i class="fa fa-home"></i> 5,500 m<sup>2</sup> / </span>
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
                    <div class="post-img" style="background: url(img/img08.jpg);"><h3>For Sale</h3></div>
                    <div class="post-content">
                      <div class="post-meta">
                        <span><i class="fa fa-home"></i> 7,000 m<sup>2</sup> / </span>
                        <span><i class="fa fa-hdd-o"></i> 4 Bed / </span>
                        <span><i class="fa fa-male"></i> 3 Bath / </span>
                        <span><i class="fa fa-building-o"></i> 1 Floors / </span>
                        <span><i class="fa fa-car"></i> 1 Garages / </span>
                      </div>
                      <div class="heading-title">
                        <h2><a href="#">Residential - <span>$900,000</span></a></h2>
                      </div>
                    </div>
                  </div>
                  <!-- break -->
                </div>
                <!-- end:recent-post -->

                <!-- begin:tags -->
                <div class="tab-pane fade" id="tags">
                  <div class="widget">
                      <a href="#">Food truck</a> <a href="#">fixie locavore</a> <a href="#">accusamus mcsweeney's</a> <a href="#">marfa nulla</a> <a href="#">single-origin</a> <a href="#">coffee squid</a>
                  </div>
                </div>
                <!-- end:tags -->

                <!-- begin:archives -->
                <div class="tab-pane fade" id="archives">
                  <ul class="list-unstyled list-check">
                      <li><a href="#">June 2014</a> (10)</li>
                      <li><a href="#">March 2014</a> (4)</li>
                      <li><a href="#">January 2014</a> (70)</li>
                      <li><a href="#">December 2013</a> (20)</li>
                  </ul>
                </div>
                <!-- end:archives -->
                
              </div>
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

  