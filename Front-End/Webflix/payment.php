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
					<h3 class="title">Become a Webflix Premium Member</h3>
					<div class="description">
                        <p>If you want to enjoy the best movies and TV series on Webflix, become a Premium Member. For £99.00 a year you'll have access to each and every one of them anywhere, anytime.<p>
                        <br>
                        <script src="https://www.paypal.com/sdk/js?client-id=test&currency=GBP"></script>
                        <div id="paypal-button-container"></div>
                        <script>
                        paypal.Buttons({
                            // Sets up the transaction when a payment button is clicked
                            createOrder: (data, actions) => {
                            return actions.order.create({
                                purchase_units: [{
                                amount: {
                                    value: '99.00' // Can also reference a variable or function
                                }
                                }]
                            });
                            },
                            // Finalize the transaction after payer approval
                            onApprove: (data, actions) => {
                            return actions.order.capture().then(function(orderData) {
                                // Successful capture! For dev/demo purposes:
                                console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                                const transaction = orderData.purchase_units[0].payments.captures[0];
                                window.location.replace('./update_status.php');
                                // When ready to go live, remove the alert and show a success message within this page. For example:
                                // const element = document.getElementById('paypal-button-container');
                                // element.innerHTML = '<h3>Thank you for your payment!</h3>';
                                // Or go to another URL:  actions.redirect('thank_you.html');
                            });
                            }
                        }).render('#paypal-button-container');
                        </script>
					</div>
				</div>
			</div>
		</main>
	</body>
</html>