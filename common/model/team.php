<?php
    class Model_Team extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->team = TEAM;
            parent::__construct();
        }	       
        ## Add Team in database
        function addTeamByValue($Array) {
            $this->InsertData( $this->team , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit team by userid
	    function editUserValueById($array, $Id){
		$this->UpdateData($this->team,$array,"id",$Id,0);
	    }
        ##delete team
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->team,$array,"id",$Id,0);
            }

        ## Get all team details
        function getAllTeam($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->team);
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
		$fields=array('name','id','title','description','img');	//fetch fromdb
        $tables=array($this->team);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
    function getAllBuilderscount($search='', $limit='',$offset='') {
        $fields=array();	
        $tables=array($this->builders);
        $where = array(" status = '1'");
        if($search != '') {
            $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
        }
            
        $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
        $result= $this->FetchAll($result1); 
        return $result;		
    }

    public function getCities()
    {
        $fields=array('name','id','status');	//fetch fromdb
        $tables=array('city');
		$where = array(" status = '1'");	
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchAll($result1);
		return $result;	
    }
    public function getStates()
    {
        $fields=array('name','s_id','status');	//fetch fromdb
        $tables=array('state');
		$where = array(" status = '1'");	
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchAll($result1);
		return $result;	
    }
    public function getModels($s_id)
    {
        $fields=array('name','s_id','status','id');	//fetch fromdb
        $tables=array('city');
		$where = array(" status = '1'");	
        $and = array(" s_id = '$s_id'");	
		$result1 = $this->SelectData($fields,$tables, $and, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchAll($result1);
		return $result;	
    }
        
    }
?>