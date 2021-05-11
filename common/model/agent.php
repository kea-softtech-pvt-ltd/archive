<?php
    class Model_Agent extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->agents = AGENTS;
            parent::__construct();
        }	       
        ## Add agent in database
        function addTeamByValue($Array) {
            $this->InsertData( $this->agents , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit agent by userid
	    function editUserValueById($array, $Id){
		$this->UpdateData($this->agents,$array,"id",$Id,0);
	    }
        ##delete agent
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->agents,$array,"id",$Id,0);
            }

        ## Get all builder details
        function getAllAgent($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->agents);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get team by id
	    function getUserNameByUserId($id) {
		$fields=array('name','id','fax','description','img','phone','office_phone','email');	//fetch fromdb
        $tables=array($this->agents);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>