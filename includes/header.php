<?php 
 include("includes/config.php"); 
 include("includes/classes/Artist.php"); 
 include("includes/classes/Album.php"); 
 include("includes/classes/Song.php");  
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
  <link rel="stylesheet" type="text/css" href="assets/css/normalize.css"> 
  <link rel="stylesheet" type="text/css" href="assets/css/index/navBar.css"> 
  <link rel="stylesheet" type="text/css" href="assets/css/index/mainIndex.css"> 
  <link rel="stylesheet" type="text/css" href="assets/css/index/album.css">  
  <link rel="stylesheet" type="text/css" href="assets/css/index/musicPlayer.css">  
  <script src="assets/js/script.js"></script>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
  <title>Hello</title>  
</head> 
<body>
  
  <div id="mainConteiner">
      <div id="topContainer">
       <?php  
        include("includes/navBarContainer.php")
       ?>
      
        <div id="mainViewContainer">
 <div id="mainContent">