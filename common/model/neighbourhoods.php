<?php
    class Model_Neighbourhoods extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->neighbourhoods = NEIGHBOURHOODS;
            parent::__construct();
        }	       
        ## Add Neighbourhoods in database
        function addNeighbourhoods($Array) {
            $this->InsertData( $this->neighbourhoods , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit Neighbourhoods
	    function editNeighbourhoods($array, $Id){
		return $this->UpdateData($this->neighbourhoods,$array,"id",$Id,0);
	    }
        ##delet Neighbourhoods
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->neighbourhoods,$array,"id",$Id,0);
            }

        ## Get all Neighbourhoods details
        function getAllNeighbourhoods($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->neighbourhoods);
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
		$fields=array('name','id','geolocations');	//fetch fromdb
        $tables=array($this->neighbourhoods);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>