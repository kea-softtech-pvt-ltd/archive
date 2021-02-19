<?php
    class Model_State extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->state = STATE;
            parent::__construct();
        }
         ## Get all citys details
           function getAllStates($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->state);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
    }
      ## Add city in database
      function addState($Array) {
        $this->InsertData( $this->state , $Array );		
        $insertId = $this->getLatestRecordId();
        return $insertId;
    }
     ## Edit city 
     function editState($array, $s_Id){
		$this->UpdateData($this->state,$array,"s_id",$s_Id,0);
	    }
    ## delete city
        function deleteState($array, $s_id){
        $this->UpdateData($this->state,$array,"s_id",$s_id,0);
          
     }
     ## Get city by id
     function getUserNameByUserId($s_id) {
		$fields=array('name','s_id','c_id','status');	//fetch fromdb
        $tables=array($this->state);
		$where=array("s_id=".$s_id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
      ## get state
      public function getCountry()
      {
          $fields=array('name','c_id','status');	//fetch fromdb
          $tables=array('country');
          $where = array(" status = '1'");	
          $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
          $result= $this->FetchAll($result1);
          return $result;	
      }
        
    }
?>