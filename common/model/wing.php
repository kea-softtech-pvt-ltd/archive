<?php
    class Model_Wing extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->wing = WING;
            parent::__construct();
        }	       
        ## Add wing in database
        function addBuildingTypeByValue($Array) {
            $this->InsertData( $this->wing , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit wing
	    function editUserValueById($array, $Id){
		return $this->UpdateData($this->wing,$array,"id",$Id,0);
	    }
        ##delet wing
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->wing,$array,"id",$Id,0);
            }

        ## Get all wing details
        function getAllWing($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->wing);
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
        $tables=array($this->wing);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>