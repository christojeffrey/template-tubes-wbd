<html>
 <head>
  <title>PHP Teadsfst</title>
 </head>
 <body>
 <?php echo '<p>Hello World</p>'; ?> 

 <?php
//These are the defined authentication environment in the db service

// The MySQL service named in the docker-compose.yml.
$host = 'backend';

// Database use name
$user = 'tubes';

//database user password
$pass = 'tubes';

// check the MySQL connection status
$conn = new mysqli($host, $user, $pass);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected to MySQL server successfully!";
}
?>


 </body>
</html>