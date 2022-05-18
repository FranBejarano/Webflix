<?php
# Open database connection.
require('includes/header.php');

$userID = $_SESSION['userID'];

if(isset($_SESSION['userID'])) {
    $q = "UPDATE `user` SET `status`='Active' WHERE `userID` = '$userID'";
    $r = mysqli_query( $link, $q ) ;
    if($r){
		$_SESSION[ 'status' ] = 'Active';
 ?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/login.css">
		<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 
		<title>Webflix</title>
	</head>
	<body>
		<main>
			<div class="login">
				<div class="container">
					<h3 class="title">Enjoy your Premium Membership</h3>
					<div class="description">
                        <p>From now on you have a year to access your series and movies wherever and whenever you want without advertising that bothers you.<p>
					</div>
				</div>
			</div>
		</main>
	</body>
</html> <?php } } ?>