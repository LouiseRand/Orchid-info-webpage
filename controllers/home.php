<?php 
$Orchid = new Orchid($Conn);
$featured_orchids = $Orchid->getFeaturedOrchids();
$Smarty->assign('featured_orchids', $featured_orchids);
