<?php 
$orchid_id = $_GET['id'];
if($_POST['rating']) {    //enable add new review to database table
    $Review = new Review($Conn);
    $Review->createReview([
        "orchid_id" => (int) $orchid_id,
        "review_rating" => (int) $_POST['rating']
    ]);
}



$Orchid = new Orchid($Conn);
$orchid_data = $Orchid->getOrchid($orchid_id);
$Smarty->assign('orchid', $orchid_data);

$Review = new Review($Conn);
$orchid_rating = $Review->calculateRating($orchid_id);
$Smarty->assign('orchid_rating', round($orchid_rating['avg_rating'], 1));



if($_SESSION['user_data']) {
    $Favourite = new Favourite($Conn);
    $is_fav = $Favourite->isFavourite($orchid_id);

    
    if($is_fav){
        $Smarty->assign('is_fav', true);
    }else{
        $Smarty->assign('is_fav', false);
    }
    
}