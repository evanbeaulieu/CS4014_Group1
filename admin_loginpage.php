<?php
	session_start();
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

 <script src="Validate.js"></script><!-- Import the Validate.js file for use in the form-->
      <link rel="stylesheet" type="text/css" href="style1.css?<?php echo time();?>" />

</head>
<body>
<h1> Scribe-Check Moderator Login </h1>

<p class="Intro"> The purpose of our website is to provide an online service for people enrolled in UL, who are looking for their work to be corrected/reviewed. </p>

<div class="form">
 <div class="field-wrap">
<form action="admin_login.php" method="POST">
	<input type="text" name="email" placeholder="Email"><br>
	<input type="password" name="pwd" placeholder="Password">
</div>
	<button type="submit" class="button button-block">LOGIN</button>
	
</form>
<br>
<button class="button button-block" onclick=location.href='index1.php'>Back</button>
</div>





<br><br><br>


</body>
</html>