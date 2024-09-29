<?php
$Orchid = new Orchid($Conn);
$user_orchids = $Orchid->getUserOrchids();
$Smarty->assign('user_orchids', $user_orchids);
