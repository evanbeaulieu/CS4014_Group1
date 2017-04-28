<?php
session_start();
include 'dbh.php';
$email = $_POST['email'];
$pwd = $_POST['pwd'];

//Cant query on pwd because this is the unhashed password. We can query on email because it will be unique.
$sql = "SELECT * FROM user1 WHERE email='$email' AND user_rep >='40'";
$result = $conn->query($sql);

if($result->num_rows > 0) {
    // output data of each row
    $row = mysqli_fetch_assoc($result);
    $hashedpwd = $row['pwd'];
    $row['idnum'];
    if(password_verify($pwd, $hashedpwd)){//password_verify verifies the password against the hashed password
    $_SESSION['loggedIn'] = true;
    $_SESSION['student_id'] =  $row['idnum'];
	$sql2 = "DELETE FROM task WHERE completed_at <= CURDATE()"; //checks to see if completed at date has been passed, if so deletes from the table

	if(!$conn->query($sql2)) {
    printf("Error:%s\n", $conn->error);
	}
    header("Location: index12admin.php"); 
    exit;  
    }
}

echo "Your email or password is incorrect!";
echo "<br>";
echo "<br>";
echo("<button onclick=\"location.href='admin_loginpage.php'\">BACK</button>"); 

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>

 
      <link rel="stylesheet" type="text/css" href="style1.css?<?php echo time();?>" />

</head>