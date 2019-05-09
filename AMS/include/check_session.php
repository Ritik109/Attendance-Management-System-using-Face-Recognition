<?php
  session_start();
  if($_SESSION['use']==null)
  {
    header("Location:index.php");
  }
  ?>