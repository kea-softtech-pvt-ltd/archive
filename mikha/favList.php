<?php
	include_once(realpath(dirname(dirname(__FILE__))) . '/includefiles.php');
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/properties.php");
	include_once(realpath(dirname(dirname(__FILE__))) . "/common/model/agent.php");

	$propertiesObj = new Model_Property();
	
	//if(isset($_SESSION['isLoggedIn']) && $_SESSION['isLoggedIn'] != ''){
	if(isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 4){
	$limit = 4;  
	if (isset($_GET["page"])) {
	$page  = $_GET["page"]; 
	} 
	else{ 
	$page=1;
	};  
	$start_from = ($page-1) * $limit; 
	$search = ''; 

    $favoriteListArrayAll = $propertiesObj->getAllfavrite($search,$limit,$start_from);
	$smarty->assign('favoriteListArrayAll', $favoriteListArrayAll);

	$result_db = $propertiesObj->getAllfavriteCount(); 
	$total_records = count($result_db);  
	$total_pages = ceil($total_records / $limit);
	$pagLink = '';
	
	$disable = '';
	$style = '';

	if($page == 1){
	$disable = 'disabled';
	$style = 'pointer-events:none';
	}
	$pagLink .= "<li class='$disable' style='$style'><a href='favList?page=".($page-1)."'>&laquo;</a></li>"; 
	
	for ($i=1; $i<=$total_pages; $i++) { 
	if($page == $i){
	$current='active';
	$icon='<span class="sr-only">(current)</span>';
	} 
	else{
		$current='';
		$icon='';
	}
    $pagLink .= "<li class=".$current."><a href='favList?page=".$i."'>".$i." ".$icon."</a></li>";
};  
	if($page==$total_pages){   
	$disable1 = 'disabled';
	$style1='pointer-events:none';
	}
	else{
	$disable1 = '';
	$style1='';
		
	}	
	$pagLink .= "<li class='$disable1' style='$style1' ><a href='favList?page=".($page+1)."' class='button'>&raquo;</a></li>";
	$smarty->assign('pagLink', $pagLink);

	$favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray); // its use nav show all fav list

    $favoriteListArray = $propertiesObj->getAllfavritenav();
	$smarty->assign('favoriteListArray', $favoriteListArray);

	$propertiePartnerListArray =$propertiesObj->getPropertieyPartner();
	$smarty->assign('propertiePartnerListArray', $propertiePartnerListArray);
	
	$userMessageCount = $propertiesObj->getAllUserMessageCount($_SESSION['user_id']);
	$smarty->assign('userMessageCount',count($userMessageCount)); // show count group requist

	$userMessageCount1 = $propertiesObj->getAllUserMessageCount1($_SESSION['user_id']);
	$smarty->assign('userMessageCount1',count($userMessageCount1)); // show count group requist
	
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
	$smarty->display(FRONT_TEMPLATEDIR . '/mikha/favList.tpl');
	
		}else{
			header("Location: " . SITE_URL . "mikha/index.php");
		}
	
?>
