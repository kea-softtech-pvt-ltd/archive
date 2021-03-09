<?php
    class Model_Banner extends Database 
    {	
        ## Constructor
        public function __construct(){
            $this->banner = BANNER;
            parent::__construct();
        }	       
        ## Add banner in database
        function addBanner($Array) {
            $this->InsertData( $this->banner , $Array );		
            $insertId = $this->getLatestRecordId();
            return $insertId;
        }
        ## Edit user by userid
	    function editBanner($array, $Id){
		return $this->UpdateData($this->banner,$array,"id",$Id,0);
	    }
        function deleteUserValueById($array, $Id){
               $this->UpdateData($this->banner,$array,"id",$Id,0);
             //  echo $Id; where
            }

        ## Get all builder details
        function getAllBanner($search='', $limit='',$offset='') {
            $fields=array();	
            $tables=array($this->banner);
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
		$fields=array('title','id','image');	//fetch fromdb
        $tables=array($this->banner);
		$where=array("id=".$id);		
		$result1 = $this->SelectData($fields,$tables, $where, $order = array(), $group=array(),$limit = "",0,0); 
		$result= $this->FetchRow($result1); 
		return $result;		
	}
        
    }
?>