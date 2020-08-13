<!DOCTYPE html> 
 <html> 
 <body> 
 <style> 
 table, td, th 
 { 
 border: 1px solid black; 
 width: 33%; 
 text-align: center; 
 border-collapse:collapse; 
 background-color:lightblue; 
 } 
 table { margin: auto; } 
 </style> 
 <?php 
 $servername = "localhost"; 
 $username = "root"; 
 $password = ""; 
 $dbname = "weblab"; 
 $a=[]; 
 // Create connection 
 
// Opens a new connection to the 
$conn = mysqli_connect($servername, $username, $password, $dbname); // Check connection and return an error description from the last connection error, if any 
 
if ($conn->connect_error) 
 die("Connection failed: " . $conn->connect_error); 
 
 
$sql = "SELECT * FROM student"; 
 // performs a query against the database 
 $result = $conn->query($sql); 
 echo "<br>"; 
 echo "<center> BEFORE SORTING </center>"; echo "<table border='2'>"; 
 echo "<tr>"; 
 echo "<th>USN</th><th>NAME</th><th>Address</th></tr>";
  if ($result->num_rows > 0) 
 { 
 // output data of each row and fetches a result row as an associative array 
 while($row = $result->fetch_assoc()){ 
 echo "<tr>"; 
 echo "<td>". $row["usn"]."</td>"; 
 echo "<td>". $row["name"]."</td>"; 
 echo "<td>". $row["addr"]."</td></tr>"; 
 array_push($a,$row["usn"]); 
 } 
}
 else 
 echo "Table is Empty"; 
 echo "</table>"; 
 $n=count($a); 
 $b=$a; 
 for ( $i = 0 ; $i< ($n - 1) ; $i++ ) 
 { 
 $pos= $i; 
 echo "<td>". $d[$i]."</td></tr>"; 
 
} 
 echo "</table>"; 
 $conn->close(); 
 
?> 
 </body> 
 </html> 
 