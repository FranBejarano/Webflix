<?php

# Set page title and display header section.
require('includes/header.php');

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
	<main>
        <!-- All the TV Shows -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Last TV Shows Added</h3>
			</div>

			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve movies from 'movie' database table.
							$q = "SELECT * FROM tvshow LIMIT 20";
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Action Series -->
		<div class="recommended-movies container">
			<div class="title-container">
				<h3>Action Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve action movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Action' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Comedy Series -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Comedy Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Comedy' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Horror Series -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Horror Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Horror' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Romance Series -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Romance Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Romance' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Sci-Fi Series -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Sci-Fi Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Sci-Fi' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Thriller Series -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Thriller Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Thriller' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>

        <!-- Western Series -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Western Series</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM tvshow WHERE category='Western' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="tvshow.php?tvId=<?php echo $row['tvId']; ?>" >
											<img src="<?php echo $row['cover'];?>" alt="Movie" >
										</a>
									</div>  <?php
								} ;
							}
								# Or display message.
								else { echo '<p>There are currently no movies showing.</p>
								' ; }

						?>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</html>