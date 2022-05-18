<?php

require('includes/header.php');

# Check form submitted.
if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' )
{
  
  # Initialize an error array.
  $errors = array();

    # Check for an email address:
  if ( empty( $_POST[ 'email' ] ) )
  { $errors[] = 'Enter your email address.'; }
  else
  { $e = mysqli_real_escape_string( $link, trim( $_POST[ 'email' ] ) ) ; }

  # Check for a password and matching input passwords.
  if ( !empty($_POST[ 'pass' ] ) )
  {
    if ( $_POST[ 'pass' ] != $_POST[ 'pass2' ] )
    { $errors[] = 'Passwords do not match.' ; }
    else
    { $p = mysqli_real_escape_string( $link, trim( $_POST[ 'pass' ] ) ) ; }
  }
  else { $errors[] = 'Enter your password.' ; }
  
  # Check if email address already registered.
  if ( empty( $errors ) )
  {
    $q = "SELECT userID FROM user WHERE email='$e'" ;
    $r = @mysqli_query ( $link, $q ) ;
    if ( mysqli_num_rows( $r ) === 0 ) $errors[] = 'Email no registered. <a class="alert-link" href="loregistergin.php">Register</a>' ;
  }
  
  # On success register user inserting into 'users' database table.
  if ( empty( $errors ) ) 
  {
    $q = "UPDATE `user` SET `pass`= '$p' WHERE `email` = '$e'";
    $r = @mysqli_query ( $link, $q ) ;
    if ($r)
    { ?>

		<div class="registration">
			<div class="container">
				<h3 class="title">Password changed!</h3>
				<a class="button" href="login.php">Login</a>
				
			</div>
		</div>
	<?php }
  
    # Close database connection.
    mysqli_close($link); 

    exit();
  }
  # Or report errors.
  else 
  {
    echo '
		<div class="alert alert-light">
			<p id="err_msg"><h1>The following error(s) occurred:</h1>' ;
		
				foreach ( $errors as $msg )
					{ echo " - $msg<br>" ; }
				echo 'or please <a class="alert-link" href="register.php">try again</a>.
			</p>
		</div>';
    # Close database connection.
    mysqli_close( $link );
  }  
}
?>

<!doctype html>
<html lang="en">
	
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
		<link rel="stylesheet" href="css/login.css">
		<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 
		<title>Webflix</title>		
	</head>
	
	<body>
		<main>
			<div class="login">
				<div class="container">
					<h3 class="title">Forgotten Password?</h3>
					<div class="description"></div>
						<form action = "forgot-password.php" class="form needs-validation" method = "post" novalidate>
							<div class="form-group">
								<input type = "email" name = "email" class="form-control" placeholder="Email" value = "<?php if(isset($_POST['email']))
										echo $_POST['email'];?>" required>
									<small id="emailHelp" class="form-text text-muted">
										<br>We'll never share your email with anyone else.
									</small>
							</div>
							<div class="form-group">
								<input type = "password" name = "pass" class="form-control" placeholder="Create New Password" value = "<?php if(isset($_POST['pass1']))
									echo $_POST['pass1'];?>" required>
							</div>
							<div class="form-group">
								<input type = "password" name = "pass2" class="form-control" placeholder="Confirm Password" value = "<?php if(isset($_POST['pass2']))
									echo $_POST['pass2'];?>" required>
							</div>
														<input type = "submit" class="button" value = "Submit">
						</form>
					</div>
				</div>
			</div>
		</main>	
	</body>
</html>
			
			<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
			</div>
		</div>
	</body>
</html>