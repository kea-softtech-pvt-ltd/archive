<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();
	
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){
		
	$limit = 6;  
	if (isset($_GET["page"])) {
	$page  = $_GET["page"]; 
	} 
	else{ 
	$page=1;
	};  
	$start_from = ($page-1) * $limit; 
	$search = ''; 
	$propertiesListArray =$propertiesObj->getAllProperties1($search,$limit,$start_from);
	$smarty->assign('propertiesListArray', $propertiesListArray);


	$result_db = $propertiesObj->getAllCount(); 
	$total_records = count($result_db);  
	$total_pages = ceil($total_records / $limit);
	$pagLink = '';
	
	$disable = '';
	$style = '';
	//for ($i=1; $i<=$total_pages; $i++) {
	//	$pagLink .= "<li class='page-item'><a class='page-link' href='category?page=".$i."'>".$i."</a></li>";	
//}

if($page == 1){
	$disable = 'disabled';

	$style = 'pointer-events:none';

}

$pagLink .= "<li class='$disable' style='$style'><a href='category?page=".($page-1)."'>&laquo;</a></li>"; 

for ($i=1; $i<=$total_pages; $i++) { 

	if($page == $i){

		$current='active';
		$icon='<span class="sr-only">(current)</span>';
	} 
	else{
		$current='';
		$icon='';
	}
	
    $pagLink .= "<li class=".$current."><a href='category?page=".$i."'>".$i." ".$icon."</a></li>";
};  
if($page==$total_pages){   
	$disable1 = 'disabled';
	$style1='pointer-events:none';
	}
	else{
	$disable1 = '';
	$style1='';
		
	}
//echo $page ." ".$total_pages ;	
$pagLink .= "<li class='$disable1' style='$style1' ><a href='category?page=".($page+1)."' class='button'>&raquo;</a></li>";

	$smarty->assign('pagLink', $pagLink);

	// print_r($result_db);
	// die();
	//$row_db = mysqli_fetch_row($result_db);  

	 
//$result = mysqli_query($conn,"SELECT * FROM user_table ORDER BY userid ASC LIMIT $start_from, $limit");



	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list

	$userMessageCount = $propertiesObj->getAllUserMessageCount();
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist

	$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
	$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
	
	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);
	
	$proListArray = $propertiesObj->getPropertiey();
	$smarty->assign('proListArray', $proListArray);

	$proTypeListArray = $propertiesObj->getProType();
    $smarty->assign('proTypeListArray', $proTypeListArray);

	$proBedsListArray = $propertiesObj->getPropertieyBeds();
	$smarty->assign('proBedsListArray', $proBedsListArray);


	$smarty->assign('moduleName', 'List of properties');

	$agentObj = new Model_Agent();
	$agentListArray = $agentObj->getAllAgent();
	$smarty->assign('agentListArray', $agentListArray);
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/category.tpl');
	
		}else{
			header("Location: " . SITE_URL . "mikha/index.php");
		}
	
?>
