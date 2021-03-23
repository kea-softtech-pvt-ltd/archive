<?php
    class Model_ProType extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->properties_type = PROPERTIESTYPE;
            parent::__construct();
        }	       
        ## Add ProType in database
        function addProTypeByValue($Array) {
            $this->InsertData( $this->properties_type , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit ProType
	    function editProTypeId($array, $Id){
		return $this->UpdateData($this->properties_type,$array,"id",$Id,0);
	    }
        ##delet ProType
        function deleteProTypeId($array, $Id){
               $this->UpdateData($this->properties_type,$array,"id",$Id,0);
            }

        ## Get all get ProType details
        function getAllProType($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->properties_type);
            $where = array(" status = '1'");
            if($search != '') {
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        ## Get ProType by id view page
	    function getUserNameByUserId($id) {
		$fields=array('name','id');	//fetch fromdb
        $tables=array($this->properties_type);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>