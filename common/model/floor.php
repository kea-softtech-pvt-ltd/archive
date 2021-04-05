<?php
    class Model_Floor extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->floor = FLOOR;
            parent::__construct();
        }	       
        ## Add builder in database
        function addBuilderByValue($Array) {
            $this->InsertData( $this->floor , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit user by userid
	    function editUserValueById($array, $Id){
		$this->UpdateData($this->floor,$array,"id",$Id,0);
	    }
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->builders,$array,"id",$Id,0);
             //  echo $Id; where
            }

        ## Get all builder details
        function getAllBuilders($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->floor);
            $where = array(" status = '1'");
            if($search != '') {
                //$where[] = "concat(first_name,' ',last_name) like '%".$search."%'";
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get builder by id
	    function getUserNameByUserId($id) {
		$fields=array('name','f_id','p_id');	//fetch fromdb
        $tables=array($this->floor);
		$where=array("f_id=".$id);		
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

    public function getStates()
    {
        $fields=array('name','id','status');//fetch fromdb
        $tables=array('property');
		$where = array(" status = '1'");	
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchAll($result1);
		return $result;	
    }
        
    }
?>