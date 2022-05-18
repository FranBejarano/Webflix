<?php
# Set page title and display header section.
require_once('includes/header.php');

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
					<h3 class="title">Login</h3>
					<div class="description">
						<form action="login_action.php" class="form was-validated" method="post">
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Email" name="email" required>
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Password" name="pass" required>
								<br>
								<a href="forgot-password.php"><b style="color: white">Forgot password?</b></a>
							</div>
							<input type="submit" class="button" value="Login" id="submitBtn">
						</form>
					</div>
				</div>
			</div>
		</main>
	</body>
</html>