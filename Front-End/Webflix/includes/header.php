<?php
#Access session.
session_start();
# Open database connection.
require ( 'includes/connect_db.php' ) ;
$link = OpenCon();

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/styles.css">
	<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 
	<title>Webflix</title>
</head>
<body>
	<header>
		<div class="container">
			<a href="index.php">
                <img src="images/minilogo.png">
            </a>
			<nav>
				<a href="index.php">Home</a>
				<a href="movies.php">Movies</a>
				<a href="tvshows.php">TV Shows</a>
				<div class="dropdown">
                    <?php if(!isset($_SESSION['userID'])) { ?>
                        <button class="dropbtn" id="navbarDropdown" role="button" href="#" data-toggle="dropdown" aria-expanded="false">
                            User
                        <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a href="login.php">Login</a>
                            <a href="register.php">Register</a>
                        </div>
                  <?php }
                    else { 
                        ?>
                        <button class="dropbtn" id="navbarDropdown" role="button" href="#" data-toggle="dropdown" aria-expanded="false">
                            <?php  echo $_SESSION['firstname'].' ' . $_SESSION['surname'];  ?>
                        <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a href="movie.php">Settings</a>
                            <?php if($_SESSION[ 'status' ] === "Inactive") { ?>
                                <a href="payment.php">Become Premium</a>
                                <?php } else { ?>
                                    <a>Premium member</a> <?php
                                } ?>
                            <a href="logout.php">Logout</a>
                        </div>
                    <?php
                          } ?>
					
				</div>
			</nav>
		</div>
	</header>

    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</hmtl>