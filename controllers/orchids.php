<?php
$cat_id = $_GET['id'];
$Orchid = new Orchid($Conn);
$orchids = $Orchid->getAllOrchidsForCategory($cat_id);
$Smarty->assign('orchids', $orchids);

$Category = new Category($Conn);
$category = $Category->getCategory($cat_id);
$Smarty->assign('category', $category);