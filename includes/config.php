<?php 
 ob_start();
 session_start();
 $timezone = date_default_timezone_set("Europe/Moscow");  
 
 $con = mysqli_connect("localhost","root","","oms_bd");    
 mysqli_set_charset($con, "utf8");  
 if(mysqli_connect_errno()) {
   echo "Не удалось подключиться:" .mysqli_connect_errno();  
 }
?>   