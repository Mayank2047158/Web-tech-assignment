
<?php  
$host = 'localhost:3306';  
$user = 'root';  
$pass = ''; 
$dbname = 'christ';
/* Attempt to connect to MySQL database */
$conn = mysqli_connect($host, $user, $pass, $dbname); 
// Check connection
if(! $conn )  
{  
  die('Could not connect: ' . mysqli_error());  
}  
echo 'Connected successfully';  
mysqli_close($conn);  
?>  