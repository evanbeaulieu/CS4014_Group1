
<?php
		session_start();
		if(!$_SESSION['loggedIn']) {
		header("location:index1.php"); 
		die(); 
		}
		include 'dbh.php';
		
		
$id = $_GET['task_id'];

// sql to delete a record
$sql = "DELETE FROM task WHERE task_id = '$id'";

if ($conn->query($sql) === TRUE) {
    echo "Task has been deleted successfully";
} else {
    echo "Error deleting task: " . $conn->error;
}
echo ("
<br><br>");
$conn->close();
echo("<button onclick=\"location.href='tasksadmin.php'\">Now return to Moderator Homepage</button>");
?>