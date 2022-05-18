<?php

require('includes/header.php');

# Check form submitted.
if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' )
{
  
  # Initialize an error array.
  $errors = array();

  # Check for a first name.
  if ( empty( $_POST[ 'firstname' ] ) )
  { $errors[] = 'Enter your first name.' ; }
  else
  { $fn = mysqli_real_escape_string( $link, trim( $_POST[ 'firstname' ] ) ) ; }

  # Check for a last name.
  if (empty( $_POST[ 'surname' ] ) )
  { $errors[] = 'Enter your last name.' ; }
  else
  { $sn = mysqli_real_escape_string( $link, trim( $_POST[ 'surname' ] ) ) ; }

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
    if ( mysqli_num_rows( $r ) != 0 ) $errors[] = 'Email address already registered. <a class="alert-link" href="login.php">Sign In Now</a>' ;
  }
  
  # Check for a card number.
  if (empty( $_POST[ 'contactNo' ] ) )
  { $errors[] = 'Enter your contact number.' ; }
  else
  { $cn = mysqli_real_escape_string( $link, trim( $_POST[ 'contactNo' ] ) ) ; }
  
  # Check for expiry month.
  if (empty( $_POST[ 'dob' ] ) )
  { $errors[] = 'Enter your dateof birth.' ; }
  else
  { 
    $dob = mysqli_real_escape_string( $link, trim( $_POST[ 'dob' ] ) ) ; }

  # On success register user inserting into 'users' database table.
  if ( empty( $errors ) ) 
  {
    $q = "INSERT INTO user (firstname, surname, email, pass, contactNo, dob, joinDate, status) VALUES ('$fn', '$sn', '$e', '$p', $cn, $dob, NOW(), 'Inactive' )";
    $r = @mysqli_query ( $link, $q ) ;
    if ($r)
    { ?>

		<div class="registration">
			<div class="container">
				<h3 class="title">Registered!</h3>
				<p class="description">
					You are now registered.
				</p>
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
					<h3 class="title">Create an account</h3>
					<div class="description"></div>
						<form action = "register.php" class="form needs-validation" method = "post" novalidate>
							<div class="form-group">
								<input type = "text" name = "firstname" class="form-control" placeholder="First name" value = "<?php if(isset($_POST['firstname']))
									echo $_POST['firstname'];?>" required>
							</div>
							<div class="form-group">
								<input type = "text" name = "surname" class="form-control" placeholder="Surname" value = "<?php if(isset($_POST['surname']))
									echo $_POST['surname'];?>" required>
							</div>
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
							<div class="formm-group">
								<input type = "text" name = "contactNo" class="form-control" placeholder="Contact Number" value = "<?php if(isset($_POST['contactNo']))
									echo $_POST['contactNo'];?>" required>
							</div>
							<div class="formm-group">
								<input type = "date" name = "dob" class="form-control" placeholder="Date of Birth" value = "<?php if(isset($_POST['dob']))
									echo $_POST['dob'];?>" required>
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