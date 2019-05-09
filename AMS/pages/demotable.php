<?php
$con=mysqli_connect("localhost","root","","ams_db");
// Check connection
if (mysqli_connect_errno())
{
	echo "error hai!";
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT first_name,last_name FROM student");

echo "<table border='1'>
<tr>
<th>Firstname</th>
<th>Lastname</th>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['first_name'] . "</td>";
echo "<td>" . $row['last_name'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>