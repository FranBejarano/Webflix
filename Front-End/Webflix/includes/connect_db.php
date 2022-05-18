<?php
function OpenCon()
 {
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "test";

 $link = mysqli_connect($dbhost, $dbuser, $dbpass,$db);
 
 if(!$link) {
    die("Connect failed: " .mysqli_connect_error());
 }
 return $link;
 }
 
function CloseCon($link)
 {
 $link -> close();
 }
    $link = OpenCon();
?>