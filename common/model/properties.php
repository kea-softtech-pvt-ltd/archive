<?php
    class Model_Property extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->property = PROPERTY;
            parent::__construct();
    
        }	
         
        ## Add Properties in database
        function addPropertiesByValue($Array) {
            $this->InsertData( $this->property , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }

         ## Add Properties Address in database
         function addPropertieAddressByValue($Array) {
            $this->InsertData('properties_address' , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }

         ## update Properties Address in database
         function updatePropertieAddressByValue($Array,$Id) {
            return $this->UpdateData('properties_address',$Array,"a_id",$Id,0);
        }
        

        ## Add Floors in database
        function addFloorsByValue($Array) {
            $this->InsertData('floor' , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
         ## Add wing in database
         function addWingsByValue($Array) {
            $this->InsertData('wing' , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
         ## Add unit in database
         function addUnitsByValue($Array) {
            $this->InsertData('units' , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
         ## Add other info database
          function addAmenitiesByValue($Array) {
            $this->InsertData('properties_other' , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit other info database
        function editAmenitiesOtherById($array, $Id){
            return $this->UpdateData('properties_other',$array,"o_id",$Id,0);
         } 
        ## Edit Properties by userid
	    function editUserValueById($array, $Id){
            return $this->UpdateData($this->property,$array,"id",$Id,0);
         } 

           ## Edit Properties by userid
	     function editPropertieAddressById($array, $Id){
            return $this->UpdateData('properties_address',$array,"id",$Id,0);
         } 

            ## Edit Properties by userid
	    function editPropertieWingsById($array, $Id){
            return $this->UpdateData('wing',$array,"w_id",$Id,0);
         } 

          ## Edit Properties by userid
	    function editFloorValueById($array, $Id){
            $this->UpdateData('floor',$array,"f_id",$Id,0);
         } 
           ## Edit Properties by userid
	    function editWingValueById($array, $Id){
            $this->UpdateData('wing',$array,"w_id",$Id,0);
         } 

         ## delete properties 
         function deleteUserValueById($array, $Id){
            $this->UpdateData($this->property,$array,"id",$Id,0);
          
         }
          ## patnarship properties 
          function patnership($array, $Id){
            $this->UpdateData($this->property,$array,"id",$Id,0);
          
         }
        ## Get all Properties details
        function getAllPropertiesAPI($search='', $limit='',$offset='') {
            $fields=array('property.*,builders.name as buildername,properties_address.address,properties_address.description');
            $tables=array('property LEFT JOIN properties_address ON properties_address.p_id = property.id LEFT JOIN builders ON builders.id = property.builder_name');	
            $where=array("property.id");
            $where = array($this->property.".status = '1'");
  
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('property.id DESC'), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get all Properties details
        function getAllProperties($search='', $limit='',$offset='') {
            $fields=array('property.*,builders.name as buildername,properties_address.address,properties_address.description');
            
          //  $tables=array($this->property,'LEFT JOIN builders ON builders.name = '$this->property.builder_name);
         //   $where = array($this->property.".status = '1'");
         $tables=array('property LEFT JOIN properties_address ON properties_address.p_id = property.id LEFT JOIN builders ON builders.id = property.builder_name');	
         $where=array("property.id");
         $where = array($this->property.".status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
                
            }
             if ($_SESSION['role']=='3'){
                
                $where=array('builders.id="'.$_SESSION['id'].'" AND property.status !=1');
            }
            if(isset($_REQUEST['propertyName']) && $_REQUEST['propertyName'] != '') {
                
                $where[] = "(property.name LIKE '%".$_REQUEST['propertyName']."%')";
               
            }
           // echo $_SESSION['role'] ;
  
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('property.id DESC'), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get all Properties details front end
        function getAllProperties1($search='', $limit='',$offset='') {
            $fields=array('property.*,builders.name as buildername,properties_address.address,properties_address.description,units.carpet_area,units.title,units.parking,units.bath,units.built_area,units.price,units.type');
            
         
       $tables=array('property LEFT JOIN properties_address ON properties_address.p_id = property.id LEFT JOIN builders ON builders.id = property.builder_name LEFT JOIN units ON units.p_id = property.id');		
         $where=array("property.id");
         $where = array($this->property.".status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
                
            }

            
            if(isset($_REQUEST['propertyType']) && $_REQUEST['propertyType'] != '') {
                
                $where[] = "(units.title LIKE '%".$_REQUEST['propertyType']."%')";
               
            }

            if(isset($_REQUEST['beds']) && $_REQUEST['beds'] != '') {
                
                $where[] = "(units.type LIKE '%".$_REQUEST['beds']."%')";
               
            }

            if(isset($_REQUEST['baths']) && $_REQUEST['baths'] != '') {
                
                $where[] = "(units.bath LIKE '%".$_REQUEST['baths']."%')";
               
            }

            if(isset($_REQUEST['min']) && $_REQUEST['min'] != '' && $_REQUEST['max'] !='' ) {
              
                $where[] = "(  units.carpet_area >= ".$_REQUEST['min']." AND units.carpet_area<=".$_REQUEST['max'].")";
               
            }

            if(isset($_REQUEST['minprice']) && $_REQUEST['minprice'] != '' && $_REQUEST['maxprice'] !='' ) {
              
                $where[] = "(  units.price * units.built_area >= ".$_REQUEST['minprice']." AND units.price * units.built_area<=".$_REQUEST['maxprice'].")";
               
            }
            
              
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('id DESC'), $group=array(), $limit, $offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
         ## Get all Properties details front end
         function getAllCount($search='', $limit='',$offset='') {
            $fields=array('property.*,builders.name as buildername,properties_address.address,properties_address.description,units.carpet_area,units.title,units.parking,units.bath,units.built_area,units.price,units.type');
            
         
       $tables=array('property LEFT JOIN properties_address ON properties_address.p_id = property.id LEFT JOIN builders ON builders.id = property.builder_name LEFT JOIN units ON units.p_id = property.id');		
         $where=array("property.id");
         $where = array($this->property.".status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
                
            }
    
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('id DESC'), $group=array(), 0,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
         ## Get all Properties details front end View page
         function getAllPropertiesView($id, $search='', $limit='',$offset='') {

            $fields=array('property.*,builders.name as buildername,properties_address.address,properties_address.description,units.carpet_area,units.title,units.parking,units.bath,units.built_area,units.price,units.type,properties_other.amenities,amenities.name as a_name,favorite.user_name');
            $tables=array('property LEFT JOIN properties_address ON properties_address.p_id = property.id LEFT JOIN builders ON builders.id = property.builder_name LEFT JOIN units ON units.p_id = property.id LEFT JOIN properties_other ON properties_other.p_id = property.id LEFT JOIN amenities ON amenities.id = property.id LEFT JOIN favorite ON favorite.p_id = property.id');		
            $where=array("property.id=".$id);
           // $where = array($this->property.".status = '1'");
        
    
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }
        ## Get all Properties details front end index
        function getAllPropertiesIndex($search='', $limit='',$offset='') {
            $fields=array('property.*,builders.name as buildername,properties_address.address,properties_address.description,units.carpet_area,units.title,units.parking,units.bath,units.built_area,units.price,units.type');
            $tables=array('property LEFT JOIN properties_address ON properties_address.p_id = property.id LEFT JOIN builders ON builders.id = property.builder_name LEFT JOIN units ON units.p_id = property.id');		
            $where=array("property.id");
            $where = array($this->property.".status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
                
            }
            if(isset($_REQUEST['propertyType']) && $_REQUEST['propertyType'] != '') {
                
                $where[] = "(units.title LIKE '%".$_REQUEST['propertyType']."%')";
               
            }
            if(isset($_REQUEST['beds']) && $_REQUEST['beds'] != '') {
                
                $where[] = "(units.type LIKE '%".$_REQUEST['beds']."%')";
               
            }

            if(isset($_REQUEST['baths']) && $_REQUEST['baths'] != '') {
                
                $where[] = "(units.bath LIKE '%".$_REQUEST['baths']."%')";
               
            }

            if(isset($_REQUEST['min']) && $_REQUEST['min'] != '' && $_REQUEST['max'] !='' ) {
              
                $where[] = "(  units.carpet_area >= ".$_REQUEST['min']." AND units.carpet_area<=".$_REQUEST['max'].")";
               
            }

            if(isset($_REQUEST['minprice']) && $_REQUEST['minprice'] != '' && $_REQUEST['maxprice'] !='' ) {
              
                $where[] = "(  units.price * units.built_area >= ".$_REQUEST['minprice']." AND units.price * units.built_area<=".$_REQUEST['maxprice'].")";
               
            }
            
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('id DESC'), $group=array(), $limit=4, 0,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
         ## Get properties by id
	    function getUserNameByUserId($id) {
            $fields=array('name','id','builder_name','started_date','possession_date','address','rera_number','images');	//fetch fromdb
            $tables=array($this->property);
            $where=array("id=".$id);		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }
         ## Get properties by id
	    function getAddressPropertiesById($id) {
            $fields=array('a_id','p_id','address','description','lat','lng');	//fetch fromdb
            $tables=array('properties_address');
            $where=array("p_id=".$id);		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }

         ## Get properties by id
	    function getFloorsByUserId($id) {
            $fields=array('floor.f_id','floor.p_id','floor.wing as w_id','floor.wing','floor.floor','floor.flat','floor.specality', 'wing.name');	//fetch fromdb
            $tables=array('floor LEFT JOIN wing ON wing.w_id = floor.wing');
            $where=array("floor.p_id=".$id);	
            $group = array('wing.name'); 	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            // echo '<pre>';
            // print_r($result);die;
            return $result;		
        }
          ## Get properties by id
	    function getWingByUserId($id) {
            $fields=array('w_id','p_id','name','totalFloor');	//fetch fromdb
            $tables=array('wing');
            $where=array("p_id=".$id);		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

        function getUnitsByUserId($id) {
            $fields=array('u_id','p_id','floor','wing','type','title','price','carpet_area','built_area','2d_plan_images','3d_plan_images','images','tares','bath','parking');	//fetch fromdb
            $tables=array('units');
            $where=array("p_id=".$id);		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ##get other info 
        function getOtherByUserId($id) {
            $fields=array('o_id','p_id','amenities','neighbourhoods','image');	//fetch fromdb
            $tables=array('properties_other');
            $where=array("o_id=".$id);		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

        function getWingBypropertyId($id) {
            $fields=array('w_id','p_id','name');	//fetch fromdb
            $tables=array('wing');
            $where=array("p_id=".$id);		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## get unit type for drop dwon
        public function getUnitsType()
        {
            $fields=array('name','id');	//fetch fromdb
            $tables=array('unit_type');
            $where = array(" status = '1'");	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;	
        }

          ## get property type for drop dwon
          public function getProType()
          {
              $fields=array('name','id');	//fetch fromdb
              $tables=array('properties_type');
              $where = array(" status = '1'");	
              $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
              $result= $this->FetchAll($result1);
              return $result;	
          }

        function getFloorWingsBypropertyId($id) {
            // $fields=array('w_id','p_id','name');	//fetch fromdb
            // $tables=array('wing');
            // $where = array("p_id=".$id);	
            // $group = array('name');	
            // $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group,$limit = "",0,0); 
            // $result= $this->FetchAll($result1);
            // return $result;		
            $fields=array('floor.f_id','floor.p_id','floor.wing','wing.name');	//fetch fromdb
            $tables=array('floor LEFT JOIN wing ON wing.w_id = floor.wing');
            $where = array("floor.p_id=".$id);	
            $group = array('wing.name');   	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group,$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;		
        }

        function getFloorWingBypropertyId($id) {
            $fields=array('floor.f_id','floor.p_id','floor.wing','wing.name');	//fetch fromdb
            $tables=array('floor LEFT JOIN wing ON wing.w_id = floor.wing');
            $where = array("floor.p_id=".$id);	
            $group = array('floor.name');   	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group,$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;		
        }
        function getFloorBypropertyId($propertyID,$wingsID) {
            $fields=array('f_id','p_id','floor','wing');	//fetch fromdb
            $tables=array('floor');
            $where=array("p_id=".$propertyID,'wing="'.$wingsID.'"');		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

        public function getWing()
        {
            $fields=array('name','w_id','status','p_id','totalFloor');	//fetch data
            $tables=array('wing');
            $where = array(" status = '1'");	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;	
        }
        ##drop dwon use get amenities
        public function getAmenities()
        {
            $fields=array('name','id','status');	//fetch fromdb
            $tables=array('amenities');
            $where = array(" status = '1'");	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;	
        }
        ##drop dwon use get builders
        public function getBuilders()
        {
            $fields=array('name','id','user_name');	//fetch fromdb
            $tables=array('builders');
            $where = array(" status = '1'");	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;	
        }
        ## drop dwon use neibhourhoods
        public function getNeighbourhoods()
        {
            $fields=array('name','id','status');	//fetch fromdb
            $tables=array('neighbourhoods');
            $where = array(" status = '1'");	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;	
        }
        
          ## Edit Properties by userid
	    function editUnitsValueById($array, $Id){
            $this->UpdateData('units',$array,"u_id",$Id,0);
         } 
           ## Edit amenities by userid
	    function editAmenitiesById($array, $Id){
            $this->UpdateData('amenities',$array,"id",$Id,0);
        } 
        
         public function getWingFlorrInfobyId($id)
         {
            $fields=array('totalFloor');	//fetch data
            $tables=array('wing');
            $where = array(" status = '1'");
            $where = array(" w_id = ".$id);	
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1);
            return $result;
         }
        
        ## Add favroite in database
		function addFavByValue($Array) 
		{
			$this->InsertData('favorite' , $Array );		
			$insertId = $this->getLatestRecordId();

            // $this->InsertData('notification' , $Array );		
			// $insertId = $this->getLatestRecordId();
			return $insertId;
		}
          ## Add favrote Notification in database
		function sendNoti($Array) 
		{
			$this->InsertData('notification' , $Array );		
			$insertId = $this->getLatestRecordId();
			return $insertId;
		}
          ## admin send notification to user 
		function sendNotiAdmin($Array) 
		{
			$this->InsertData('purchase_request' , $Array );		
			$insertId = $this->getLatestRecordId();
			return $insertId;
		}
        ## Add favroite in database
		function addGroup($Array) 
		{
			$this->InsertData('add_group' , $Array );		
			$insertId = $this->getLatestRecordId();

            $this->InsertData('notification' , $Array );		
			$insertId = $this->getLatestRecordId();
            
			return $insertId;
		}
        ## 
        function getAllUser($id, $search='', $limit='',$offset='') {
           // echo $id ;
         $fields=array('favorite.user_id,favorite.user_name,favorite.p_id,user_login.image');
         $tables=array('favorite INNER JOIN user_login ON favorite.user_id = user_login.user_id LEFT JOIN notification ON notification.sender = user_login.user_id or notification.reciver = user_login.user_id');	
         $where=array("favorite.p_id='".$id."' AND favorite.status='1' AND favorite.requestGroup= '0'");

        // $where=array("notification.requestGroup= '0'");
        //  $where = array($this->property.".status = '1'");
        //     if($search != '') {
        //         $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
                
        //     }
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array('favorite.user_id'), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;	
            
        //  echo '<pre>';   print_r($result); 
        //     die();
        }


         ##drop dwon use get builders
        //  public function chekuser($user_id, $p_id)
        //  {
        //      $fields=array('user_id','user_name','p_id');	//fetch fromdb
        //      $tables=array('favorite');
        //      $where = array(" status = '1'");	
        //      $where = array(" user_id =".$user_id);	
        //      $where = array(" p_id =".$p_id);	
        //      $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
        //      $result= $this->FetchAll($result1);
        //      return $result;	
        //  }

         function chekuser($user_id, $p_id) { 
            $fields=array('user_id','user_name','p_id');	
            $tables=array('favorite');
            $where=array("(user_id='".$user_id."'  AND  p_id='".$p_id."')");		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }
        #chek user in group sender 
        function chekuserGroup($user_id, $p_id, $pro_id) { 
            $fields=array('sender','reciver','p_id','a_id');	
            $tables=array('add_group');
            $where=array("(sender='".$user_id."'  AND  reciver='".$p_id."' AND  p_id='".$pro_id."')");		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }
        #chek user in parches request 
        function chekparchesRequest($p_id, $pro_id) { 
            $fields=array('p_id','user');	
            $tables=array('purchase_request');
            $where=array("(user='".$p_id."' AND  p_id='".$pro_id."')");		
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }
         ## Get all user message details
	   function getAllUserMessage($search='', $limit='',$offset='') 
	   {
		$fields=array('notification.*,user_login.*');
	   	$tables=array('notification LEFT JOIN user_login ON notification.sender = user_login.user_id');
	   	$where = array("notification.reciver = '".$_SESSION['user_id']."' AND notification.status='1' AND notification.requestGroup='0'");
       // $where = array("notification.reciver = notification.sender");
           // $where = array("user_login.user_id = '2'"); // try this exp
        
    //    if ($_SESSION['role']=='4'){
    //     $where=array('user_id='.$_SESSION['user_id']);
    //     } 
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
		$result= $this->FetchAll($result1); 
		return $result;		
	}
            ## Get all user message details Ascept or not property
            function getAllUserMessage1($search='', $limit='',$offset='') 
            {
             $fields=array('purchase_request.*,user_login.*,property.name');
                $tables=array('purchase_request LEFT JOIN user_login ON purchase_request.user = user_login.user_id LEFT JOIN property ON purchase_request.p_id = property.id');
                $where = array("purchase_request.user = '".$_SESSION['user_id']."' AND purchase_request.status='1' AND purchase_request.noti_type='0'");
      
             $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
             $result= $this->FetchAll($result1); 
             return $result;		
         }


      ## Get all user message details Count
      function getAllUserMessageCount($search='', $limit='',$offset='') 
      {
       $fields=array('notification.*,user_login.*');
       $tables=array('notification LEFT JOIN user_login ON notification.sender = user_login.user_id');
       $where = array("notification.reciver = '".$_SESSION['user_id']."' AND notification.status='1' AND notification.requestGroup='0'");
      
       $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
       $result= $this->FetchAll($result1); 
       return $result;		
   }

    ## Get all user message details Count
    function getAllUserMessageCount1($search='', $limit='',$offset='') 
    {

     $fields=array('purchase_request.*,user_login.*');
     $tables=array('purchase_request LEFT JOIN user_login ON purchase_request.user = user_login.user_id');
     if(isset($_SESSION['user_id'])){
        $where = array("purchase_request.user = '".$_SESSION['user_id']."' AND purchase_request.status='1' AND purchase_request.noti_type='0'");

     }else{
         $where = array();
     }
    
     $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
     $result= $this->FetchAll($result1); 
     return $result;			
 }

   
    // # it use message update
    function JoinPropertyGroup($array, $Id, $rid, $p_id){
    
       
    $this->UpdateData('notification',$array,'sender',$Id,'reciver',$Id,0);
 

    $this->UpdateData('favorite',$array,'p_id',$p_id,$rid,'reciver',0);
    

      
    //   if(isset($_REQUEST['user_id']) == $p_id) {
              
    //     $this->UpdateData('favorite',$array,'user_id',$Id,'p_id',$p_id,0);
       
    // }

     }

        // # it use message update
    function JoinPropertyGroup1($array, $Id, $p_id){

        $this->UpdateData('purchase_request',$array,'user',$Id,0);

   
        }
       // # it use  to delete properties request for user
       function deletePurchesPropertiesRequest($array, $Id, $p_id){

        $this->UpdateData('purchase_request',$array,'user',$Id,0);

   
        }

     // # it use user message delte
    function deleteUserMessage($array, $Id){
        $this->UpdateData('notification',$array,'n_id',$Id,0);
           echo $Id; 
        }

     // accept requiest user group that propert show on single.php page  

    function getAllUserGroupAccept($id, $search='', $limit='',$offset='') {
        // echo $id ;
      $fields=array('notification.reciver,notification.p_id,notification.sender,user_login.image,user_login.username,user_login.user_id');
      $tables=array('notification INNER JOIN user_login ON notification.reciver = user_login.user_id or notification.sender = user_login.user_id');	
      $where=array("notification.p_id='".$id."' AND notification.status='1' AND notification.requestGroup='1'");
     // $where = array("notification.reciver = '".$_SESSION['user_id']."' AND notification.status='1'");

         $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array('user_login.user_id'), $limit,$offset,0);
         $result= $this->FetchAll($result1); 
         return $result;	
         
     }

     function getPurechecrequest($search='', $limit='',$offset='') {
        // echo $id ;
      $fields=array('purchase_request.*');
      $tables=array('purchase_request');	
      $where=array();
     // $where = array("notification.reciver = '".$_SESSION['user_id']."' AND notification.status='1'");

         $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
         $result= $this->FetchAll($result1); 
         return $result;	
         
     }
     //its use in show all group properties
    function getAllUserGroupAccept1($search='', $limit='',$offset='') {
        // echo $id ;
      $fields=array('add_group.*');
      $tables=array('add_group');	
      $where=array("status='1'");
  

         $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array('add_group.p_id'), $limit,$offset,0);
         $result= $this->FetchAll($result1); 
         return $result;	
         
     }

          ## Get all Properties user in chat  details front end View page chat.php page
          function getUserForChat($id, $search='', $limit='',$offset='') {
            $fields=array('user_login.*,user_chat.*');
            $tables=array('user_login LEFT JOIN user_chat ON user_login.user_id = user_chat.sender');		
            $where=array("user_login.user_id=".$id);
        
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }

         ## Get all Properties user in chat  details front end View page chat.php page
         function getUserForChats($id, $search='', $limit='',$offset='') {
            $fields=array('property.*');
            $tables=array('property');		
            $where=array("property.id=".$id);
        
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchRow($result1); 
            return $result;		
        }

            ## chat user two user message show in message 
            // function getUserChatMessage($search='', $limit='',$offset='') {
            // $fields=array('user_chat.*,user_login.*');
            //  $tables=array('user_chat INNER JOIN user_login ON user_chat.reciver = user_login.user_id');		
            //  $where=array("user_chat.sender = '".$_SESSION['user_id']."'");
                 
            //     $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), 0,0);
            //     $result= $this->FetchAll($result1); 
            //     return $result;		
            // }

            function getUserChatMessageNew($from_user_id, $to_user_id, $id) {
               
                    $fields=array('user_chat.*');
                    $tables=array('user_chat');
                    		
                    $where=array("(sender = '".$from_user_id."' AND reciver = '".$to_user_id."' AND p_id ='".$id."') OR (sender = '".$to_user_id."' AND reciver = '".$from_user_id."' AND p_id ='".$id."') ");
                    $result1 = $this->SelectData($fields,$tables, $where, $order = array("created_date ASC"), $group=array(), 0,0);
                    $result= $this->FetchAll($result1); 
                    return $result;		
                }
            function getUserGroupChatMessageNew($id) {
               
                    $fields=array('user_chat.*');
                    $tables=array('user_chat');		
                    $where=array("reciver = '0' AND p_id=".$id);

                    $result1 = $this->SelectData($fields,$tables, $where, $order = array("created_date ASC"), $group=array(), 0,0);
                    $result= $this->FetchAll($result1); 
                    return $result;		
                }

            public function get_user_name($user_id)
            {
                $fields=array('user_login.username');
                $tables=array('user_login');		
                $where=array("user_login.user_id = $user_id");
                 
                $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), 0,0);
                $result= $this->FetchRow($result1); 
                return $result;
            }
             ## Get all Properties user in chat  details front end View page chat.php page
          function getUserForChat1($id, $search='', $limit='',$offset='') {
            $fields=array('user_login.*,user_chat.*');
            $tables=array('user_login LEFT JOIN user_chat ON user_login.user_id = user_chat.sender');		
            $where=array("user_login.user_id=".$id);
        
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('user_chat.created_date'), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

           ## Get all favroite list in user in show navbar
           function getAllfavrite($search='', $limit='',$offset='') {
            $fields=array('favorite.*,property.name as pname,property.images,units.title,units.built_area,units.price');
            $tables=array('favorite LEFT JOIN property ON favorite.p_id = property.id LEFT JOIN units ON units.p_id = property.id');		
            $where=array("favorite.user_id='".$_SESSION['user_id']."'");
            
            if(isset($_REQUEST['propertyType']) && $_REQUEST['propertyType'] != '') {
                
                $where[] = "(units.title LIKE '%".$_REQUEST['propertyType']."%')";
               
            }

            if(isset($_REQUEST['minprice']) && $_REQUEST['minprice'] != '' && $_REQUEST['maxprice'] !='' ) {
              
                $where[] = "(  units.price * units.built_area >= ".$_REQUEST['minprice']." AND units.price * units.built_area<=".$_REQUEST['maxprice'].")";
               
            }

            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit, $offset,0);
           // $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

         ## Get all favroite list in user Api
         function getAllfavriteApi($decoded='', $limit='',$offset='') {
            $fields=array('favorite.*,property.name as pname,property.images,units.title,units.built_area,units.price');
            $tables=array('favorite LEFT JOIN property ON favorite.p_id = property.id LEFT JOIN units ON units.p_id = property.id');		
            $where=array("favorite.user_id='".$decoded."'");
            
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit, $offset,0);
         
            $result= $this->FetchAll($result1); 
            return $result;		
        }

           ## Get all favroite list in user in show navbar
           function getAllfavriteCount($search='', $limit='',$offset='') {
            $fields=array('favorite.*,property.name as pname,property.images');
            $tables=array('favorite LEFT JOIN property ON favorite.p_id = property.id');		
            $where=array("favorite.user_id='".$_SESSION['user_id']."'");
            
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit, $offset,0);
           // $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

          ## Get all favroite list in user in show navbar limit 4
        //   function getAllfavritenav($id, $search='', $limit='',$offset='') {
        //     $fields=array('favorite.*,user_login.*,property.name as pname,property.images');
        //     $tables=array('favorite LEFT JOIN user_login ON favorite.user_id = user_login.user_id LEFT JOIN property ON favorite.p_id = property.id');		
        //     $where=array("favorite.user_id='".$_SESSION['user_id']."'");
        
        //     $result1 = $this->SelectData($fields,$tables, $where, $order = array('favorite.f_id DESC'), $group=array(),$limit=1,0,0); 
        //     $result= $this->FetchAll($result1); 
        //     return $result;		
        // }

         ## Get all favroite list in user in show navbar limit 4
         function getAllfavritenav($search='', $limit='',$offset='') {
            $fields=array('favorite.*,property.name as pname,property.images');
            $tables=array('favorite LEFT JOIN property ON favorite.p_id = property.id');

            if(isset($_SESSION['user_id'])){
                $where=array("favorite.user_id='".$_SESSION['user_id']."'");
            }else{
                $where = array();
            }
           
        
            $result1 = $this->SelectData($fields,$tables, $where, $order = array('favorite.f_id DESC'), $group=array(),$limit=4,0,0); 
            $result= $this->FetchAll($result1); 
            return $result;		
        }

               ## Get all slider details
               function getAllSlider($search='', $limit='',$offset='') {
                $fields=array('banner.*');	
                $tables=array('banner');
                $where = array(" status = '1'");
                $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
                $result= $this->FetchAll($result1); 
                return $result;		
            }

            ## Get all Property details for use search filter
           function getPropertiey($search='', $limit='',$offset='') 
           {
            $fields=array('properties_type.*');	
            $tables=array('properties_type');
            $where = array(" status = '1'");       
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
            }
            ## Get all Property details for use search filter for beds
           function getPropertieyBeds($search='', $limit='',$offset='') 
           {
            $fields=array('unit_type.*');	
            $tables=array('unit_type');
            $where = array(" status = '1'");       
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
            }

            ## Get all Property details for use in patnership
           function getPropertieyPartner($search='', $limit='',$offset='') 
           {
            $fields=array('property.*');	
            $tables=array('property');
            $where = array(" patnership = '1' AND status = '1' ");       
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
            }

        
    }
?>