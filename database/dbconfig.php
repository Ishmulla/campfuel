<?php
//$dbhost = "localhost";
//$dbpass = "";
//$dbname = "gasgurudb";
//$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname); 
//if (mysqli_connect_errno()) {
//	echo "Failed to connect to database:" . 
//	mysqli_connect_error();
//}


// $dbhost = "localhost";
// $dbuser = "edusavac_gasguru_user";
// $dbpass = "gasguru2019*";
// $dbname = "edusavac_gasgurudb";
// $con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname); 
// if (mysqli_connect_errno()) {
// 	echo "Failed to connect to database:" . 
// 	mysqli_connect_error();
// }


$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "campfuel";
$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname); 
if (mysqli_connect_errno()) {
	echo "Failed to connect to database:" . 
	mysqli_connect_error();
}


?>