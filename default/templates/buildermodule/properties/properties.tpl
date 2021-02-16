    <!doctype html>
<html>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
                <div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">Property List</h2>
                
				<div class="filter">
					<select name="orderby" class="selectbox">
						<option value="Any status">Any status</option>
						<option value="Approved">Approved</option>
						<option value="Pending">Pending</option>
						<option value="Cancelled">Cancelled</option>
					</select>
                    
                    
				</div>
                <div class="actions">
                    <a class="btn_1 medium" href="{$adminroot}/properties/add" > Add new property</a>
                </div>
			</div>
			<div class="list_general">
				<ul>
					<li>
						<figure><img src="img/avatar1.jpg" alt=""></figure>
						<h4>Enzo Ferrari <i class="pending">Pending</i></h4>
						<ul class="booking_details">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking time</strong> 10.20AM</li>
							<li><strong>Visits</strong> Cardiology test, Diabetic diagnose</li>
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> user@email.com</li>
						</ul>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					<li>
						<figure><img src="img/avatar2.jpg" alt=""></figure>
						<h4>Andrea Lomarco <i class="cancel">Cancel</i></h4>
						<ul class="booking_details">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking time</strong> 10.20AM</li>
							<li><strong>Visits</strong> Cardiology test, Diabetic diagnose</li>
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> user@email.com</li>
						</ul>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
					<li>
						<figure><img src="img/avatar3.jpg" alt=""></figure>
						<h4>Marc Twain <i class="approved">Approved</i></h4>
						<ul class="booking_details">
							<li><strong>Booking date</strong> 11 November 2017</li>
							<li><strong>Booking time</strong> 10.20AM</li>
							<li><strong>Visits</strong> Cardiology test, Diabetic diagnose</li>
							<li><strong>Telephone</strong> 0043 432324</li>
							<li><strong>Email</strong> user@email.com</li>
						</ul>
						<ul class="buttons">
							<li><a href="#0" class="btn_1 gray approve"><i class="fa fa-fw fa-check-circle-o"></i> Approve</a></li>
							<li><a href="#0" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
            </div>
   	    </div>
    <!-- /.container-wrapper-->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}
	
</body>
</html>