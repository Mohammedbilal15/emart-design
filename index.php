<?php session_start(); ?>
<?php include('dbcon.php'); ?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
<div class="from">
<center><h3 style=font-size:3em;"> welcome to E-MART<h3></center>
</div>
<div class="form-wrapper">
  
  <form action="#" method="post">
    <h3><B>Login here</B></h3>
	
    <div class="form-item">
		<input type="text" name="user" required="required" placeholder="Username" autofocus required></input>
    </div>
    
    <div class="form-item">
		<input type="password" name="pass" required="required" placeholder="Password" required></input>
    </div>
    
    <div class="button-panel">
		<input type="submit" class="button" title="Log In" name="login" value="Login"></input>
    </div>
  </form>
  <?php
	if (isset($_POST['login']))
		{
			$username = mysqli_real_escape_string($con, $_POST['user']);
			$password = mysqli_real_escape_string($con, $_POST['pass']);
			
			$query 		= mysqli_query($con, "SELECT * FROM users WHERE  password='$password' and username='$username'");
			$row		= mysqli_fetch_array($query);
			$num_row 	= mysqli_num_rows($query);
			
			if ($num_row > 0) 
				{			
					$_SESSION['user_id']=$row['user_id'];
					 if($_POST['user']=="admin"){
						header('location:home.php');
					 }
					 else{
						 header('location:user.php');
					 }
						 
					
				}
			else
				{
					echo 'Invalid Username and Password Combination';
				}
		}
  ?>
 

</body>
</html>