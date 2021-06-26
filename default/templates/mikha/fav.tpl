
  {include file='mikha/header.tpl'}
  
    <!-- begin:header -->
    <div id="header" class="heading" style="background-image: url({$siteroot}/mikha/img/img01.jpg);">
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
                <a href="fav" class="btn btn-success"><i class="fa fa-th"></i></a>
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
            <div class="alert alert-success text-center col-md-12" id="pro_BasicInfo" style="width:100%;display:none;"></div>
            <form id="favorite-form" method="POST" action="" enctype="multipart/form-data"> 
             <div class="alert alert-danger text-center" id="sucess_msg" style="display:none;"></div>
             <div class="alert alert-danger text-center" id="sucess_msg1" style="display:none;"></div>
            <div class="row container-realestate">
            {foreach from=$favoriteListArrayAll key=k item=v}
              <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="property-container">
                  <div class="property-image">
                        {$imagearray = explode(',',$v['images'])}
                         {foreach from=$imagearray key=index item=image name=count}
                            {if $index == 0}
                                <img src="{SITE_URL}/administrator/upload/properties/{$image}" style="height: 200px"/>
                            {/if}               
                        {/foreach} 
                    <div class="property-status">
                      <span>For Sale</span>
                    </div>
                  </div>
                  <div class="property-content">
                    <h3><a href="#">{$v['pname']}</a></h3>
                  </div>
                  <div class="property-footer">
                    <a title="Add to favorite"><i class="fa fa-heart"></i></a>
                    <a href="#" title="Contact Agent"><i class="fa fa-envelope"></i></a>
                    <a href="#" title="View page"><i class="fa fa-eye"></i></a>
                  </div>
                   
                </div>
              
              </div>
               {/foreach}
              <!-- break -->
            
             
            </div>
            <!-- end:product -->
            </form>
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
                  <div class="post-img" style="background: url({$siteroot}/mikha/img/img02.jpg);"></div>
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
                  <div class="post-img" style="background: url({$siteroot}/mikha/img/img03.jpg);"></div>
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
                  <div class="post-img" style="background: url({$siteroot}/mikha/img/img15.jpg);"></div>
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
                  <div class="post-img" style="background: url({$siteroot}/mikha/img/img12.jpg);"><h3>For Rent</h3></div>
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
                  <div class="post-img" style="background: url({$siteroot}/mikha/img/img13.jpg);"><h3>For Rent</h3></div>
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
                  <div class="post-img" style="background: url({$siteroot}/mikha/img/img14.jpg);"><h3>For Sale</h3></div>
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


</div>
    <!-- begin:footer -->
    {include file='mikha/footer.tpl'}
    <!-- end:footer -->


   
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

<script>
$(".addToFav").on("click", function(){
  var product_id = $(this).attr('data-id');
  $.ajax({     
				url: "{$adminroot}/ajaxFavorite",
        type: "POST",
         data: { 
				action : 'addFavorite',
				product_id:product_id,
				},
        success: function(result)
        {	
          console.log(result);
          if($.trim(result)=='')				
				{
					$('#sucess_msg1').show().html('Not add to fav you are already add to fav.');
					setTimeout(function(){ $('#sucess_msg1').hide();},3000)
				}
				else
				{						
					$('#sucess_msg').show().removeClass('alert-danger').addClass('alert-success').html('Add to favraite list.');
					setTimeout(function(){ $('#sucess_msg').hide();},3000)
					setTimeout(function(){ window.location.href='category'; },3000);	
				}
        }
  });

});

</script>
