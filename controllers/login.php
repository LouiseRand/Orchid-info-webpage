<?php
if($_POST){
    if($_POST['register']) {
        if(!$_POST['email']){
            $error = "Email not set";      
        }else if(!$_POST['password']){
            $error = "Password not set";      
        }else if(!$_POST['password_confirm']){
            $error = "Password not set";      
        }
        else if($_POST['password']!=$_POST['password_confirm']){
            $error = "password and confirm password must match";
        }
        else if(strlen($_POST['password']) <8) {
            $error = "Password must be at least 8 characters in length";
        }
        else if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            $error = "Email is not valid";
        }

        
        if($error) {
            $Smarty->assign('error',$error);  //pass through the content of $error variable to Smarty template. 
        }else{    
          $User =new User($Conn);
          $attempt = $User ->createUser($_POST);
          if($attempt) {


            $email = new \SendGrid\Mail\Mail(); 
            $email->setFrom("S224306@uos.ac.uk", "Louise Rand");
            $email->setSubject("Welcome to Orchids for everyone!");
            $email->addTo($_POST['email'], "User");
            $email->addContent(
                 "text/html", "<h1>Welcome to Orchids for everyone!</h1>" //email contents
            );
            $sendgrid = new \SendGrid('');
            $response = $sendgrid->send($email);

            $Smarty->assign('success', "Your account has been created. Please now login.");
          }else{
            $Smarty->assign('error', "an error occured, please try again later.");  //notification to user of error
          }
               
        }
    }else if($_POST['login']){
        if(!$_POST['email']){
            $error = "Email not valid";      
        }else if(!$_POST['password']){
            $error = "Password not valid"; //should be changed to email or password not valid

        }else if(strlen($_POST['password']) <8) {
            $error = "Password must be at least 8 characters in length";
        }
        else if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            $error = "Email is not valid";        //notification to user of error
        }else{
            $User=new User($Conn);
            $user_data=$User->loginUser($_POST['email'],$_POST['password']);
            if($user_data) {
                $_SESSION['is_loggedin'] = true;
                $_SESSION['user_data'] = $user_data;               
                header("Location: index.php?p=account");  
                exit();   
            }else{   
                $Smarty->assign('error', "Incorrect Email/Password");    //notification to user of error
            }
        }

    }

}