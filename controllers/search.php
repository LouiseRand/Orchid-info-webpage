<?php 
$search_query = $_POST['query'];
$Smarty->assign('query', $search_query);

//executes searchOrchids method:
$Orchid = new Orchid($Conn); 
$orchids = $Orchid->searchOrchids($search_query);
$Smarty->assign('orchids', $orchids);