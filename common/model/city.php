<?php
    class Model_City extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->city = CITY;
            parent::__construct();
        }
         ## Get all citys details
           function getAllCitys($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->city);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
    }
      ## Add city in database
      function addCity($Array) {
        $this->InsertData( $this->city , $Array );		
        $insertId = $this->getLatestRecordId();
        return $insertId;
    }
     ## Edit city 
     function editCity($array, $Id){
		$this->UpdateData($this->city,$array,"id",$Id,0);
	    }
    ## delete city
        function deleteCity($array, $Id){
        $this->UpdateData($this->city,$array,"id",$Id,0);
          
     }
     ## Get city by id
     function getUserNameByUserId($id) {
		$fields=array('name','id','s_id','status');	//fetch fromdb
        $tables=array($this->city);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
    ## get state
    public function getStates()
    {
        $fields=array('name','s_id','status');	//fetch fromdb
        $tables=array('state');
		$where = array(" status = '1'");	
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchAll($result1);
		return $result;	
    }
     public function getCities()
    {
        $fields=array('name','id','s_id','status');	//fetch fromdb
        $tables=array($this->city);
		$where = array(" status = '1'");	
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;	
    }
        
    }
?>