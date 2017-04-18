<?php
	session_start();
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login/Register</title>

 <script src="Validate.js"></script><!-- Import the Validate.js file for use in the form-->
      <link rel="stylesheet" type="text/css" href="style1.css?<?php echo time();?>" />

</head>
<body>
<h1> Scribe-Check </h1>
<p class="Intro"> The purpose of our website is to provide an online service for people enrolled in UL, who are looking for their work to be corrected/reviewed. </p>

<div class="form">
 <div class="field-wrap">
<form action="login.php" method="POST">
	<input type="text" name="email" placeholder="Email"><br>
	<input type="password" name="pwd" placeholder="Password">
</div>
	<button type="submit" class="button button-block">LOGIN</button>
</form>





<br><br><br>

<form action="signup.php" method="POST">
	<div class="top-row">
	<div class="field-wrap">
	<input type="text" name="first" placeholder="Firstname" required>
	</div>
	 <div class="field-wrap">
	<input type="text" name="last" placeholder="Lastname" required>
	</div>
	</div>
	 <div class="field-wrap">
	<input type="text" name="idnum" placeholder="Student/Staff ID Number"  pattern="\d{1,8}" title="Only digits" required>
	</div>
	 <div class="field-wrap">
	<input id="email" type="email" name="email" placeholder="Please enter a UL email 'ul.ie'" pattern="[a-zA-Z0-9]+@(studentmail.ul|ul)\.ie"  title="Only UL.ie emails" required>
	</div>
	<div class="top-row">
	 <div class="field-wrap">
	<label for='user_subject'>Select the department that best suits you:</label><br>
	<select multiple="multiple" name="user_subject">
		<option value="Engineering">Engineering Dept</option>
		<option value="Business">Business Dept</option>
		<option value="Nursing">Nursing Dept</option>
		<option value="Science">Science Dept</option>
		<option value="Education">Education Dept</option>
		<option value="Arts">Arts Dept</option>
	</select><br><br></div>
	 <div class="field-wrap">
	<div align="left">
	<label for='usertag'>Select 4 of your prefered tags, by pressing ctrl:</label><br>
<select name="usertags[]" multiple="multiple" size="4">
<option value="Sociology">Sociology</option>
<option value="Politics">Politics</option>
<option value="History">History</option>
<option value="Prose">Prose</option>
<option value="Poetry">Poetry</option>
<option value="Languages">Languages</option>
<option value="Media">Media</option>
<option value="Philosophy">Philosophy</option>
<option value="Physics">Physics</option>
<option value="Chemistry">Chemistry</option>
<option value="Biology">Biology</option>
<option value="Astrology">Astrology</option>
<option value="Law">Law</option>
<option value="Accounting">Accounting</option>
<option value="Economics">Economics</option>
<option value="Managment">Managment</option>
<option value="Taxation">Taxation</option>
<option value="Software Design">Software Design</option>
<option value="Website Design">Website Design</option>
<option value="Hardware Design">Hardware Design</option>
<option value="Mathematics">Mathematics</option>
<option value="Programming">Programming</option>
<option value="Networking">Networking</option>
<option value="App Design">App Design</option>
</select>
</div>
</div>
</div>
 <div class="field-wrap">
	<input type="password" id="pwd" name="pwd" placeholder="Password" required>
	</div>
 <div class="field-wrap">
	<input type="password" id="pwd2" name="pwd2" placeholder="Re-enter Password" required>
</div>
	<button type="submit" class="button button-block" onclick="return checkPwd(form);">SIGN UP</button>
    <!-- Call the checkPwd() function in the Validate.js file to check passwords-->
</form>


</div>
</body>
</html>