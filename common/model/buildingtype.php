<?php
    class Model_Buildingtype extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->building_type = BUILDING_TYPE;
            parent::__construct();
        }	       
        ## Add builder in database
        function addBuildingTypeByValue($Array) {
            $this->InsertData( $this->building_type , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit user by userid
	    function editUserValueById($array, $Id){
		return $this->UpdateData($this->building_type,$array,"id",$Id,0);
	    }
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->building_type,$array,"id",$Id,0);
             //  echo $Id; where
            }

        ## Get all builder details
        function getAllAmenities($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->building_type);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get builder by id
	    function getUserNameByUserId($id) {
		$fields=array('title','id');	//fetch fromdb
        $tables=array($this->building_type);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>