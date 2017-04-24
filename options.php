<?php
		session_start();
		if(!$_SESSION['loggedIn']) {
		header("location:index1.php"); 
		die(); 
		}
		include 'dbh.php';
        
$id = $_GET['task_id']; //call on the task_id value

		$sql= "SELECT * FROM task WHERE task_id = $id"; //select file only for that task
		$result = $conn->query($sql);

		echo '<table cellspacing="15" cellpadding="15">
		<tr><th>Tasks</th>
		<th>Description</th>
		<th></th>
		<th>Tags</th>
		<th></th>
		<th>Page count</th>
		<th>Word count</th>
		<th>File format</th>
		<th>Date for task to be claimed</th>
		<th>Date for it to be completed for</th></tr>';
		while ($column = mysqli_fetch_array($result))
		{
		$task_id = $column['task_id'];
		$task_desc = $column['task_desc'];
		$task_tags = $column['task_tags'];
		$page_count = $column['page_count'];
		$word_count = $column['word_count']; 
		$file_format = $column['file_format'];
		$claimed_at = $column['claimed_at'];
		$completed_at = $column['completed_at'];
        $url = $column['url'];
						
		echo  
		
		"<tr><td>$task_id</td>
		<td>$task_desc</td>
		<td></td>
		<td>$task_tags</td>
		<td></td>
		<td>$page_count</td>
		<td>$word_count</td>
		<td>$file_format</td>
		<td>$claimed_at</td>
		<td>$completed_at</td>
		<td><button type='button' onclick=\"location.href='http://testweb3.csisad.ul.campus/modules/cs4014/group1/tasks.php'\">Back</button></td></tr>";
            
		}
		
		echo "</table>";
			
		?>