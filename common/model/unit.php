<?php
    class Model_Unit extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->unit_type = UNITTYPE;
            parent::__construct();
        }	       
        ## Add unit_type in database
        function addUnitTypeByValue($Array) {
            $this->InsertData( $this->unit_type , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit unit_type
	    function editUserValueById($array, $Id){
		return $this->UpdateData($this->unit_type,$array,"id",$Id,0);
	    }
        ##delet unit_type
        function deleteUnitById($array, $Id){
               $this->UpdateData($this->unit_type,$array,"id",$Id,0);
            }

        ## Get all unit_type details
        function getAllUnit($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->unit_type);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get wing by id
	    function getUserNameByUserId($id) {
		$fields=array('name','id');	//fetch fromdb
        $tables=array($this->unit_type);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>