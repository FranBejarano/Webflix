<?php
#DISPLAY COMPLETE LOGGED OUT PAGE

#Set page title and display header section.
$page_title = 'Logout';
include('includes/header.php');

#Clear existing variables.
$_SESSION = array();


CloseCon($link);
#Destroy the session.
session_destroy();

#Display body section.
 
?>
<!DOCTYPE html>
<hmtl>
	<head>
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
		<main>
			<div class="login">
				<div class="container">
					<h3 class="title">Goodbye!</h3>
					<p class="description">
					You are now logged out.
					</p>
						<button role="button" class="button" onclick="location.href='login.php'"></i>Login</button>
						<button role="button" class="button" onclick="location.href='register.php'"></i>Register</button>
					</div>
				</div>
			</div>
		</main>
	</body>
	</html>