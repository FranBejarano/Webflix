<?php
# Set page title and display header section.
$page_title = 'What\’s On' ;
include ('includes/logout.html') ;

# Open database connection.
require ( 'includes/connect_db.php' ) ;
?>

<!doctype html>
<html lang="en">

	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<title>discovery one cinema - home</title>		
	</head>
	
	<body>
		<div class="row">
			<h1 class="text-center bg-danger text-white">Showing Now</h1>
		</div>
	</body>
	
	<?php
# Retrieve movies from 'movie' database table.
$q = "SELECT * FROM movie" ;
$r = mysqli_query( $link, $q ) ;
if ( mysqli_num_rows( $r ) > 0 )
{
	echo '
		<div class="row">
			';
				while ( $row = mysqli_fetch_array( $r, MYSQLI_ASSOC ))
				{
					echo'
					<div class="col-md-3 d-flex justify-content-center">
						<div class="card" style="width: 18rem;">
							<div class="card text-center">
								<img src='. $row['img'].' alt="Movie" class="img-thumbnail bg-light">
								<h5 class="card-title"> '. $row['movie_title'].' </h5>
								<a href="movie.php?id='.$row['id'].'" class="btn btn-block bg-danger text-white" role="button">Book Now</a>  
							</div>
						</div>
					</div>';
				}
	echo'			
			
		</div>
		<br>';
				


	
	# Close database connection.
	mysqli_close( $link) ; 
}

# Or display message.
else { echo '<p>There are currently no movies showing.</p>
' ; }

include ('includes/footer.html')
?>

