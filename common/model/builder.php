<?php
    class Model_Builders extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->builders = BUILDERS;
            parent::__construct();
        }	       
        ## Add builder in database
        function addBuilderByValue($Array) {
            $this->InsertData( $this->builders , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit user by userid
	    function editUserValueById($array, $Id){
		$this->UpdateData($this->builders,$array,"id",$Id,0);
	    }
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->builders,$array,"id",$Id,0);
             //  echo $Id; where
            }

        ## Get all builder details
        function getAllBuilders($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->builders);
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
		$fields=array('name','partner_name','id','pan','telephone','email','password','city','street_address','state','zip','avatar','status');	//fetch fromdb
        $tables=array($this->builders);
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
        
    }
?>