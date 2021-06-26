{include file='mikha/header.tpl'}

<br><br><br><br>

<div class="row">
    <div class="col-md-12">
        <div class="heading-title bg-white">
              <h2><i class="fa fa-envelope text-success"></i></h2>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
     <form id="chat-form" method="POST" action="" enctype="multipart/form-data">
     <div class="alert alert-success text-center col-md-12" id="send_message" style="width:100%;display:none;"></div>
        <div class="bg-white">
                 <div class="property-features">
                 <div class="row">
                  <div class="col-md-6">
                    <img src="img/{$userArray['image']}" style="width: 50px;border-radius: 100px;height: 50px;" />
                   <a style="color:#ffffff; size:20px;"> <b> {$userArray['username']} </b> </a>
                  </div>
                  <div class="col-md-6">
                      {* {$userArray['email']} *}
                     <span calss="text-left" style="float: right; margin-right: 10px; margin-top: 10px;"><i class="fa fa-phone"></i></span>
                     <span calss="text-left" style="float: right; margin-right: 10px; margin-top: 10px;"><i class="fa fa-camera"></i></span>
                  </div>
                 </div>
            
                  </div>
                  <div class="property-content" style="border: 2px solid #d5d5d5a1">
                    
                     <h5><center><a href="#">Today {$smarty.now|date_format:"%A"}  {$smarty.now|date_format:"%d-%m-%Y"}</a></center></h5>
                    
                      {$output}
                       
                    <div class="input-group">
                    <input type ="hidden" name="reciver" id="reciver" value="{$userArray['user_id']}"/>
                        <textarea class="form-control input-lg" name="message" id="message" placeholder="Enter your message" rows="1"> </textarea>
                         <div class="text-danger" id="names_error"></div>
                        <span class="input-group-btn">
                             <button class="btn btn-success btn-lg addChat" type="button" name="submit" onclick="sendMessage()" ><i class="fa fa-envelope"></i></button>
                        </span>
                    </div>
                  </div>
                  <div class="property-footer">
                    <a title="Add to favorite"><i class="fa fa-heart"></i></a>
                    <a title="Contact Agent"><i class="fa fa-envelope"></i></a>
                  </div>
        </div>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>

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
function sendMessage() {

		var _valid = 1;
		var message = $("#message").val();
    var user_id = $("#user_id").val();
		if(message=="") 
        {
            $('#names_error').show();
            $('#names_error').html('Please enter message.');
            setTimeout(function(){ $('#names_error').hide(); }, 2000);
            _valid = 0;
        }  
		if(_valid == 1) {
		var form = $('#chat-form')[0];
		var formdata = new FormData(form);
		formdata.append('action', 'addChat');
		$.ajax({     
				url: "{$adminroot}/ajaxchat",
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
					        	$('#send_message').show();
          	        $('#send_message').html('Send message sucessfull.');
        		        setTimeout(function(){ $('#send_message').hide(); }, 3000);
                    setTimeout(function(){ 
                      location.reload();
                      
                      },3000);	
					        }
                }
            });
		}   
}
</script>
<script>
var curday = function(sp){
today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //As January is 0.
var yyyy = today.getFullYear();

if(dd<10) dd='0'+dd;
if(mm<10) mm='0'+mm;
return (mm+sp+dd+sp+yyyy);
};
</script>
