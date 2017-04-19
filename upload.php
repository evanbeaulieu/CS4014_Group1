<?php

session_start();
if(!$_SESSION['loggedIn']) {
  header("location:index1.php"); 
  die(); 
}
include 'dbh.php';



$student_id = $_SESSION['student_id']; //gets idnum to be inserted into id in task table
$task_title = $_POST['task_title'];
$task_type = $_POST['task_type'];
$task_desc = $_POST['task_desc'];
$task_tags_array = $_POST['task_tags'];
$task_tags_string = implode(", ",$task_tags_array); // Converting the array to a string, displaying selected tags
$page_count = $_POST['page_count'];
$word_count = $_POST['word_count']; 
$file_format = $_POST['file_format'];
$claimed_at = $_POST['claimed_at'];
$completed_at = $_POST['completed_at']; 


if(isset($_FILES['doc'])){
      $errors= array();
      $file_name = $_FILES['doc']['name'];
      $file_size =$_FILES['doc']['size'];
      $file_tmp =$_FILES['doc']['tmp_name'];
      $file_type=$_FILES['doc']['type'];
	  $tmp = explode ('.',$file_name);
      $file_ext=strtolower(end($tmp));
	  $uploads_dir ='uploads/';
      
      $expensions= array("docx","doc","pdf","txt","sxw","stw");
      
      if(in_array($file_ext,$expensions)=== false){
         $errors[]="extension not allowed, please choose a file format shown in form";
      }
      
     if(empty($errors)==true){
        
         $file_name_new = uniqid('',true) . '.' . $file_ext; // create a unique name for the document
         $url = $uploads_dir.$file_name;
         move_uploaded_file($file_tmp, $url);
         echo "Well done.";
      }else{
         print_r($errors);
      }
	  
   }

$sql = "INSERT INTO task (task_title, task_type, task_desc, task_tags, page_count, word_count, file_format, claimed_at, completed_at, url, id) 
VALUES ('$task_title', '$task_type', '$task_desc', '$task_tags_string', '$page_count', '$word_count', '$file_format', '$claimed_at', '$completed_at', '$url', '$student_id')";

if(!$conn->query($sql)) {
    printf("Error:%s\n", $conn->error);
}


$sql = "DELETE FROM task WHERE completed_at <= CURDATE()"; //checks to see if completed at date has been passed, if so deletes from the table

if(!$conn->query($sql)) {
    printf("Error:%s\n", $conn->error);
}


echo "<br>";
echo("You have successfully uploaded.");
echo "<br>";
echo "<br>";
echo("<button onclick=\"location.href='index12.php'\">Now return to homepage</button>");


?>



