<?php

require('includes/header.php');


# Get passed product id and assign it to a variable.
if ( isset( $_GET['movieId'] ) )  $id = $_GET['movieId'] ;

# Retrieve selective item data from 'movie' database table. 
$q = "SELECT * FROM movie WHERE movieId = $id" ;
$r = mysqli_query( $link, $q ) ;

if ( mysqli_num_rows( $r ) == 1 )
{
  $row = mysqli_fetch_array( $r, MYSQLI_ASSOC );
?>
  <!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="css/sel-movie.css">
	<title>Webflix</title>
</head>
<body>
<?php
if ( isset( $_SESSION['userID'] ) ) {
  if($_SESSION[ 'status' ] === "Inactive"){	  
?>
	<div class="container">
		<div class="cover">
			<img src="<?php echo $row['cover'];?>" alt="<?php echo $row['title'];?>">
		</div>
		<div class="text">
			<h5 class="title">
				<?php echo $row['title'];?>
			</h5>
			<p class="description">
				<?php echo $row['sinopsis'];?>
			</p>
			<div class="info">
				<p><b>Released: </b><br><?php
					$date = strtotime($row['released']);
 					$date = date('d-m-Y', $date); 
					 echo $date?>
				</p>
				<p><b>Duration: </b><br><?php echo $row['mov_duration'];?> min.</p>
				<p><b>Language: </b><br><?php echo $row['language'];?> </p>
				<p><b>Category: </b><br><?php echo $row['category'];?> </p>
			</div>
		</div>
		<div class="trailer">
			<p>Play Trailer</p>
			<iframe class="play-trailer" src="<?php echo $row['mov_link'];?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
			</iframe>
			<p>Play Movie (only Premium Users)</p>
			<button role="button" class="button" onclick="window.open('<?php echo $row['mov_link'];?>')" disabled><i class="fas fa-play"></i>Play Movie</button>
		</div>
	</div>


<?php
} else {
?>
	<div class="container">
		<div class="cover">
			<img src="<?php echo $row['cover'];?>" alt="<?php echo $row['title'];?>">
		</div>
		<div class="text">
			<h5 class="title">
				<?php echo $row['title'];?>
			</h5>
			<p class="description">
				<?php echo $row['sinopsis'];?>
			</p>
			<div class="info">
				<p><b>Released: </b><br><?php
					$date = strtotime($row['released']);
					$date = date('d-m-Y', $date); 
					echo $date?>
				</p>
				<p><b>Duration: </b><br><?php echo $row['mov_duration'];?> min.</p>
				<p><b>Language: </b><br><?php echo $row['language'];?> </p>
				<p><b>Category: </b><br><?php echo $row['category'];?> </p>
			</div>
		</div>
		<div class="trailer">
			<p>Play Trailer</p>
			<iframe class="play-trailer" src="<?php echo $row['mov_link'];?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
			</iframe>
			<p>Play Movie</p>
			<button role="button" class="button" onclick="window.open('<?php echo $row['mov_link'];?>')"><i class="fas fa-play"></i>Play Movie</button>
		</div>
	</div>	
	<?php	
  } ?>
  <!-- Action Movies -->
		<div class="similar-movies">
			<div class="title-container">
				<h3>Similar Movies</h3>
			</div>
			<div class="main-container">
				<div class="movies-carousel-container">
					<div class="carousel">
						<?php
						$cat = $row['category'];
							# Retrieve action movies from 'movie' database table.
							$q = "SELECT * FROM movie WHERE category= '$cat' LIMIT 20" ;
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

<?php	
  }else { ?>
	<div class="container">
	<div class="cover">
		<img src="<?php echo $row['cover'];?>" alt="<?php echo $row['title'];?>">
	</div>
	<div class="text">
		<h5 class="title">
			<?php echo $row['title'];?>
		</h5>
		<p class="description">
			<?php echo $row['sinopsis'];?>
		</p>
		<div class="info">
			<p><b>Released: </b><br><?php
				$date = strtotime($row['released']);
				 $date = date('d-m-Y', $date); 
				 echo $date?>
			</p>
			<p><b>Duration: </b><br><?php echo $row['mov_duration'];?> min.</p>
			<p><b>Language: </b><br><?php echo $row['language'];?> </p>
			<p><b>Category: </b><br><?php echo $row['category'];?> </p>
		</div>
	</div>
	<div class="trailer">
		<p>Play Trailer</p>
		<iframe class="play-trailer" src="<?php echo $row['mov_link'];?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
		</iframe>
		<p>Play Movie (only Premium Users)</p>
		<button role="button" class="button" onclick="window.open('<?php echo $row['mov_link'];?>')" disabled><i class="fas fa-play"></i>Play Movie</button>
	</div>
</div>
</body> <?php

  }
}

# Close database connection.
mysqli_close($link);
?>