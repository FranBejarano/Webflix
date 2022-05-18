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
        <!-- All the Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Last Movies Added</h3>
			</div>

			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve movies from 'movie' database table.
							$q = "SELECT * FROM movie LIMIT 20";
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Action Movies -->
		<div class="recommended-movies container">
			<div class="title-container">
				<h3>Action Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve action movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Action' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Comedy Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Comedy Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Comedy' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Horror Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Horror Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Horror' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Romance Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Romance Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Romance' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Sci-Fi Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Sci-Fi Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Sci-Fi' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Thriller Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Thriller Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Thriller' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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

        <!-- Western Movies -->
        <div class="recommended-movies container">
			<div class="title-container">
				<h3>Western Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve comedy movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category='Western' LIMIT 20" ;
							$r = mysqli_query( $link, $q ) ;
							if ( mysqli_num_rows( $r ) > 0 )
							{
								while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC )) { ?>
									<div class="movie">                          
										<a href="movie.php?movieId=<?php echo $row['movieId']; ?>" >
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