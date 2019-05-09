<?php
include 'include/DbHandler.php';
    $username=$_POST['user_name'];
    $pass=$_POST['password'];

  $myDb=new DbHandler();
  $conn=$myDb->dbConnect();

  $query1='SELECT fac_id FROM faculty WHERE username='."'".$username."'".' AND password='."'".$pass."'";
  $result=$myDb->selectFreeRun($query1);
  $number = mysqli_fetch_row($result);
  echo $number[0];




?>