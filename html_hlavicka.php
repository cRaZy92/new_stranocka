<!DOCTYPE html>
<html lang='sk'>
  <head>
    <title><?php echo $title; ?></title>
    <meta charset='utf-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name='description' content=''>
    <meta name='keywords' content=''>
    <meta name='author' content='Adamko'>
    <meta name='robots' content='none'>
    <!-- <meta http-equiv='X-UA-Compatible' content='IE=edge'> -->
    <link rel="icon" type="image/png" href="img/favicon.png">
    <link rel="stylesheet" href="css/styles.css" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  </head>
  <body>
<?php
      if(isset($_SESSION['signed_in'])){  
        if($_SESSION['user_id'] == 1) //kontrola administratora
            $_SESSION['admin'] = true;
        else
            $_SESSION['admin'] = false;    
        include "menu_logged.php";
        }
      else{
        if(isset($_COOKIE['signed_in']) && $_COOKIE['signed_in'] == true){
          $_SESSION['signed_in'] = true;
          $_SESSION['admin'] = false; 
        }
        else
          include "menu.php";
      }       
?>