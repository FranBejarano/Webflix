<?php

require('includes/header.php');

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
		<div class="main-movie">
			<div class="container">
				<h3 class="title">Spider-Man: No Way Home </h3>
				<p class="description">
					Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.
				</p>
				<button role="button" class="button"><i class="fas fa-play"></i>Play</button>
				<button role="button" class="button"><i class="fas fa-info-circle"></i>More Info</button>
			</div>
		</div>

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

		<div class="recommended-series container">
			<div class="title-container">
				<h3>Last TV Shows Added</h3>
			</div>
			<div class="main-container">
				<div class="series-carousel-container">
					<div class="carousel">
						<?php
							# Retrieve movies from 'movie' database table.
							$q = "SELECT * FROM tvshow LIMIT 20" ;
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
</body>
</html>