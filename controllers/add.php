<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL & ~E_NOTICE);
$Category = new Category($Conn);
$categories = $Category->getAllCategories();
$Smarty->assign('categories', $categories);


if($_POST) {
    if(!$_POST['orchid_name']){
        $error = "Orchid name not set";
    }else if(!$_POST['cat_id']){
        $error = "Orchid category not set";
    }else if(!$_POST['orchid_temperature']){
        $error = "Orchid temperature not set";
    }else if(!$_POST['orchid_requirements']){
        $error = "Orchid requirements not set";
    }   
    else if(!$_FILES['orchid_image'][ 'name']) {
        $error = "Please upload an Orchid image";
    }
    
    if($error) {
        $Smarty->assign('error', $error);
    }else{
        $random = substr(str_shuffle(MD5(microtime())), 0, 10);
        $new_filename = $random . $_FILES['orchid_image']['name'];
        
        if (move_uploaded_file($_FILES['orchid_image']['tmp_name'], __DIR__.'/../user-images/'.$new_filename)) {

            $Orchid = new Orchid($Conn);
            $_POST['orchid_image'] = $new_filename;
            $attempt = $Orchid->addOrchid($_POST);
    
    
            if($attempt) {
                $Smarty->assign('success', "Your orchid has been added.");
            }else{
                $Smarty->assign('error', "An error occurred.");
            }
        } 
    }   
}