<?php
  include '../include/check_session.php';
  include '../include/DbHandler.php';


  if(isset($_POST['stud_add']))
  {
    $roll_no=$_POST['roll_no'];
    $dob=$_POST['dob'];
    $first_name=$_POST['first_name'];
    $middle_name=$_POST['middle_name'];
    $last_name=$_POST['last_name'];
    $address=$_POST['address'];
    $mobile_no=$_POST['mobile_no'];
    $email=$_POST['email'];
    $sem=$_POST['sem'];
    $doa=$_POST['doa'];
    $class=$_POST['class'];
    $dept=$_POST['dept'];

    if($roll_no!=null && $dob!=null && $first_name!=null && $last_name!=null && $sem!=null && $class!=null && $dept!=null)
    {
      $myDb=new DbHandler();
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
      }

    }

  }
  ?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    AMS
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="dashboard.php" class="simple-text logo-normal">
          AMS
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="./dashboard.php">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./teacher.php">
              <i class="fa fa-user-o"></i>
              <p>Teacher</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="./Student.php">
              <i class="material-icons">person</i>
              <p>student</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Student.php">
              <i class="fa fa-users"></i>
              <p>Parents</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="fa fa-angle-double-right"></i>
              <p>Classes</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="fa fa-edit"></i>
              <p>Attendance</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Student.php">
              <i class="fa fa-book"></i>
              <p>Subject</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./Student.php">
              <i class="fa fa-calendar"></i>
              <p>Calendar</p>
            </a>
          </li>
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Student</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid"><div class="clearfix">
                    <a href="add_student_photo.php">
                    <button type="submit"  class="btn btn-primary pull-left">Add Student Photo's</button>
                    </a>
          </div></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Student</h4>
                  <p class="card-category">@</p>
                </div>
                <div class="card-body">
                  <form action="" method="post">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Roll Number</label>
                          <input type="text" class="form-control" name="roll_no">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">DOB</label>
                          <input type="text" class="form-control" name="dob">
                        </div>
                      </div>
                      
                      
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Fist Name</label>
                          <input type="text" class="form-control" name="first_name">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Middle Name</label>
                          <input type="text" class="form-control" name="middle_name">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Last Name</label>
                          <input type="text" class="form-control" name="last_name">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Address</label>
                          <input type="text" class="form-control" name="address">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Mobile Number</label>
                          <input type="tel" maxlength="10" class="form-control" name="mobile_no">
                        </div>
                      </div>
                    <div class="col-md-8">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email address</label>
                          <input type="email" class="form-control" name="email">
                        </div>
                      </div>  





                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">date of Admission</label>
                          <input type="text" class="form-control" name="doa">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Semester</label>
                          <input type="text" class="form-control" name="sem">
                        </div>
                      </div>
                      
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Class</label>
                          <input type="text" class="form-control" name="class">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Department</label>
                          <input type="text" class="form-control" name="dept">
                        </div>
                      </div>
                    </div>

                   
                    <button type="submit" class="btn btn-primary pull-right" name="stud_add">Add to Database</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></scr

  ipt>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
</body>

</html>

















