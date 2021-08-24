<?php
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(dirname(dirname(__FILE__))))) . "/common/model/properties.php");

	$propertiesObj = new Model_Property();
	//$propertiesListArray = $propertiesObj->getAllProperties();

	$limit = 2;  
	if (isset($_GET["page"])) {
	$page  = $_GET["page"]; 
	} 
	else{ 
	$page=1;
	};  
	$start_from = ($page-1) * $limit; 
	$search = ''; 

	$propertiesListArray =$propertiesObj->getAllProperties($search,$limit,$start_from);
	$smarty->assign('propertiesListArray', $propertiesListArray);

	$result_db = $propertiesObj->getAllCount(); 
	$total_records = count($result_db);  
	$total_pages = ceil($total_records / $limit);
	$pagLink = '';
	
	$disable = '';
	$style = '';

	if($page == 1){

	$disable = 'disabled';
	$style = 'pointer-events:none';

}

$pagLink .= "<li class='page-item $disable' style='$style'><a class='page-link' href='properties?page=".($page-1)."'>&laquo;</a></li>"; 

for ($i=1; $i<=$total_pages; $i++) { 

	if($page == $i){

		$current='active';
		$icon='<span class="sr-only">(current)</span>';
	} 
	else{
		$current='';
		$icon='';
	}
	
    $pagLink .= "<li class='page-item $current'><a class='page-link' href='properties?page=".$i."'>".$i." ".$icon."</a></li>";
};  
if($page==$total_pages){   
	$disable1 = 'disabled';
	$style1='pointer-events:none';
	}
	else{
	$disable1 = '';
	$style1='';
		
	}
	$pagLink .= "<li class='page-item $disable1' style='$style1' ><a class='page-link' href='properties?page=".($page+1)."' class='button'>&raquo;</a></li>";
	$smarty->assign('pagLink', $pagLink);

	if(isset($_SESSION['isLoggedIn'])){
		if($_SESSION['role']==1 || $_SESSION['role']==2 || $_SESSION['role']==3){
			$smarty->assign('propertiesListArray', $propertiesListArray);
			$smarty->assign('moduleName', 'List of properties');
			$smarty->display(ADMIN_TEMPLATEDIR . '/properties/properties.tpl');
		}else{
			$smarty->assign('moduleName', 'login');
		$smarty->display(ADMIN_TEMPLATEDIR . '/login/login.tpl');
		}
	
	
	}else{
		header("Location: " . SITE_URL . "admin/login");
	}
?>