<?php
    class Model_Country extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->country = COUNTRY;
            parent::__construct();
        }
         ## Get all citys details
           function getAllCountry($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->country);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
    }
      ## Add city in database
      function addCountry($Array) {
        $this->InsertData( $this->country , $Array );		
        $insertId = $this->getLatestRecordId();
        return $insertId;
    }
     ## Edit city 
     function editCountry($array, $c_Id){
		$this->UpdateData($this->country,$array,"c_id",$c_Id,0);
	    }
    ## delete city
        function deleteCountry($array, $c_Id){
        $this->UpdateData($this->country,$array,"c_id",$c_Id,0);
          
     }
     ## Get city by id
     function getUserNameByUserId($c_id) {
		$fields=array('name','c_id','status');	//fetch fromdb
        $tables=array($this->country);
		$where=array("c_id=".$c_id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>