<?php
require_once(__DIR__.'/../includes/config.include.php');
require_once(__DIR__.'/../includes/db.include.php');
require_once(__DIR__.'/../includes/autoloader.include.php');

$Orchid = new Orchid($Conn);
$Orchid->randomlySetFeaturedOrchids();       //excecutes method in orchid_class.php
