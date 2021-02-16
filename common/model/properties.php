<?php
    class Model_Property extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->property = PROPERTY;
            parent::__construct();
    
        }	
        
        
        ## Add builder in database
        function addPropertiesByValue($Array) {
            $this->InsertData( $this->property , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }

        ## Get all builder details
        function getAllBuilders($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->property);
            $where = array(" status = '1'");
            if($search != '') {
                //$where[] = "concat(first_name,' ',last_name) like '%".$search."%'";
                $where[] = "(concat(first_name,' ',last_name) LIKE '%".$search."%' OR email LIKE '%".$search."%' )";
            }
                
            $result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(), $limit,$offset,0);
            $result= $this->FetchAll($result1); 
            return $result;		
        }
        
    }
?>