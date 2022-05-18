<?php # PROCESS LOGIN ATTEMPT.

# Check form submitted.
if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' )
{
  
  # Open database connection.
  require_once ( 'includes/connect_db.php' ) ;
  $link = OpenCon();

  # Get connection, load, and validate functions.
  require ( 'login_tools.php' );

  $email = $_POST[ "email" ];
  $pass =  $_POST[ "pass" ] ;

  # Check login.
  list ( $check, $data ) = validate ( $link, $email, $pass) ;

  # On success set session data and display logged in page.
  if ( $check )  
  {
    # Access session.
    session_start();
    $_SESSION[ 'userID' ] = $data[ 'userID' ] ;
    $_SESSION[ 'firstname' ] = $data[ 'firstname' ] ;
    $_SESSION[ 'surname' ] = $data[ 'surname' ] ;
    $_SESSION[ 'status' ] = $data[ 'status' ];
    load ( 'index.php' ) ;
  }
  # Or on failure set errors.
  else { $errors = $data; } 

  # Close database connection.
  mysqli_close( $link ) ; 
}

# Continue to display login page on failure.
include ( 'login.php' ) ;

?>