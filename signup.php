<?php

session_start();
include 'dbh.php';


$first = $_POST['first'];
$last = $_POST['last'];
$idnum = $_POST['idnum'];
$email = $_POST['email'];
$tags_as_array = $_POST['usertags'];
$task_as_string = implode(", ",$tags_as_array);
$user_subject = $_POST['user_subject'];
$pwd = $_POST['pwd'];
$hashedPassword = password_hash($pwd,PASSWORD_BCRYPT);


$sql = "SELECT * FROM user1 WHERE email = '$email'";
$result = $conn->query($sql);

if($result->num_rows > 0) {//Check to see if a user is already registered with the email address.
echo("An account already exists for " . $email . ". Please register with another email address.");
echo"<br>";
echo"<br>";
echo("Please also check that you haven't already registered with an ID before. If so, use the login with your email and password");
echo "<br>";
echo "<br>";
echo("<button onclick=\"location.href='index1.php'\">REGISTER</button>");
}else{
$sql = "INSERT INTO user1 (first, last, idnum, email, user_subject, pwd, user_tags) 
VALUES ('$first', '$last', '$idnum', '$email', '$user_subject', '$hashedPassword', '$task_as_string')";
$result = $conn->query($sql);
echo("You have successfully registered.");
	echo "<br>";
	echo "<br>";
echo("<button onclick=\"location.href='index1.php'\">NOW LOGIN</button>");  } 

/*
if(!$conn->query($sql)) {
    printf("Error:%s\n", $conn->error);
	echo "<br>";
	echo "<br>";
	echo("An ID already exists for " . $idnum . ". Please register with another ID number.");
	echo "<br>";
	echo "<br>";
	echo("<button onclick=\"location.href='index1.php'\">Back</button>"); 
	}
	else{
	echo("You have successfully registered.");
	echo "<br>";
	echo "<br>";
	echo("<button onclick=\"location.href='index1.php'\">NOW LOGIN</button>");   

}
*/
?>	



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>

 
      <link rel="stylesheet" type="text/css" href="style1.css?<?php echo time();?>" />

</head>