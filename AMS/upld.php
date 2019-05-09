
<?php
/*include 'include/Dbconfig.php';
include 'include/DbHandler.php';*/
  
	$file_path = "uploads/";
	 
	$file_path = $file_path . 'new3'.'.jpg';
	if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $file_path)) {
			echo "success";
			$my_command = escapeshellcmd("python test.py");
			  $command_output = shell_exec($my_command);
			  echo $command_output;

			  /*$myDb=new DbHandler();
      $conn=$myDb->dbConnect();
// Check connection
      if (mysqli_connect_errno())
      {
        echo "error hai!";
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
      }
      else{
        $query="insert into student(roll_no,first_name,last_name,address,phone_no,dob,doa,class,sem,dept) values ('$roll_no','$first_name','$last_name','$address','$mobile_no','$dob','$doa','$class','$sem','$dept')";
        $data = mysqli_query ($conn,$query)or die(mysql_error());
        echo "sucess";
      }*/

			  
	} else{
			echo "fail";
	}
	?>
