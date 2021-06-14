  {include file='mikha/header.tpl'}
    <!-- begin:header -->
    <div id="header" class="heading" style="background-image: url(img/img01.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="page-title">
              <h2>Contact</p>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">Contact</li>
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
                <div id="map"></div>
                <div class="blog-title">
                  <h2>Please don't hesitate to contact us if you need our help.</h2>
                  <h3>...If you wanna like to contact me, please fill the form bellow.</h3>
                </div>

                <div class="blog-text contact">
                  <div class="row">
                    <div class="col-md-8 col-sm-7">
                      {* <form> *}
                      <form id="contact-form" method="POST" action="" enctype="multipart/form-data">
                        <div class="alert alert-success text-center col-md-12" id="pro_BasicInfo" style="width:100%;display:none;"></div>
                        <div class="form-group">
                          <label for="name" class="sr-only">Name</label>
                          <input type="text" name="name" id="name" class="form-control" placeholder="Enter your name">
                          <div class="text-danger" id="names_error"></div>
                        </div>
                        <div class="form-group">
                          <label for="email" class="sr-only">Email</label>
                          <input type="email" name="email" id="email" class="form-control" placeholder="Enter your email">
                           <div class="text-danger" id="email_error"></div>
                        </div>
                        <div class="form-group">
                          <label for="subject" class="sr-only">Subject</label>
                          <input type="text" name="subject" id="subject" class="form-control" placeholder="Enter subject">
                          <div class="text-danger" id="subject_error"></div>
                        </div>
                        <div class="form-group">
                          <label for="name" class="sr-only">Message</label>
                          <textarea class="form-control" name="address" id="address" rows="5" placeholder="Enter your Message"></textarea>
                          <div class="text-danger" id="address_error"></div>
                        </div>
                        <div class="form-group">
                        
                          <button type="button" name="submit" class="btn btn-success" onclick="sendMessage()" ><i class="fa fa-envelope-o"></i> Send Message</button>
                        </div>
                      </form><br>
                    </div>
                    <div class="col-md-4 col-sm-5">
                      <address>
                        <strong>AvriqqLabs, Inc.</strong><br>
                        231 Yogyakarta, INA 55791<br>
                        mail@domain.com<br>
                        http://www.domain.com <br>
                        <abbr title="Phone">Telp.</abbr> (0274) 441-5000
                      </address>
                    </div>
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
          <!-- end:agent -->
        </div>
      </div>
    </div>
    <!-- end:news -->

    <!-- begin:footer -->
     {include file='mikha/footer.tpl'}
    <!-- end:footer -->


<script>
function sendMessage() {

		var _valid = 1;
		var name = $("#name").val();
		var email = $("#email").val();
    var subject = $("#subject").val();
    var address = $("#address").val();
		if(email=="") 
        {
            $('#email_error').show();
            $('#email_error').html('Please enter email.');
            setTimeout(function(){ $('#email_error').hide(); }, 2000);
            _valid = 0;
        }  
    if(subject=="") 
        {
            $('#subject_error').show();
            $('#subject_error').html('Please enter subject.');
            setTimeout(function(){ $('#subject_error').hide(); }, 2000);
            _valid = 0;
        }  
    if(subject=="") 
        {
            $('#address_error').show();
            $('#address_error').html('Please enter message.');
            setTimeout(function(){ $('#address_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(name=="") 
        {
            $('#names_error').show();
            $('#names_error').html('Please enter name.');
            setTimeout(function(){ $('#names_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(_valid == 1) {
		var form = $('#contact-form')[0];
		var formdata = new FormData(form);
		formdata.append('action', 'addContact');
		$.ajax({     
				url: "{$adminroot}/ajaxcontact",
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
						$('#pro_BasicInfo').show();
          	$('#pro_BasicInfo').html('Send message sucessfull.');
        		setTimeout(function(){ $('#pro_BasicInfo').hide(); }, 3000);
            setTimeout(function(){ window.location.href='contact.php'; },3000);	
					}
                }
            });
		}   
}
</script>