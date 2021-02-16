<?php
    class Model_Units extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->units = UNITS;
            parent::__construct();
        }	       
        ## Add builder in database
        function addUnitsByValue($Array) {
            $this->InsertData( $this->units , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit user by userid
	    function editUserValueById($array, $Id){
		$this->UpdateData($this->units,$array,"id",$Id,0);
	    }
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->units,$array,"id",$Id,0);
            }

        ## Get all builder details
        function getAllUnits($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->units);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get builder by id
	    function getUserNameByUserId($id) {
		$fields=array('type','title','id','size','price','carpet_area','built_area','images','status');	//fetch fromdb
        $tables=array($this->units);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>