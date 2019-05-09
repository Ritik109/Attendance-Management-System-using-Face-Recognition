<?php
include "include/DbHandler.php";

$facultyID=$_POST['fac_id'];

$myDb=new DbHandler();
$conn=$myDb->DbConnect();

$query2='SELECT `course_name` FROM `course` WHERE `course_id` IN (SELECT `course_id` FROM `teaches` WHERE `fac_id` = '.$facultyID.')';
$result=$myDb->selectFreeRun($query2);
$i=0;
while($number = mysqli_fetch_row($result))
{
    echo $number[0];
    echo ',';

}

?>