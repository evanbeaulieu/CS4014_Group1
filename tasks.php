<?php
		session_start();
		if(!$_SESSION['loggedIn']) {
		header("location:index1.php"); 
		die(); 
		}
		include 'dbh.php';
	
		$sql= "SELECT * FROM task;";
		$result = $conn->query($sql);
		echo '<table cellspacing="18" cellpadding="1"><tr><th>Tasks</th>
		<th>Title</th>
		<th></th>
		<th>Type</th>
		<th></th>
		<th>Claim task</th>';
		while ($column = mysqli_fetch_array($result))
		{
		$task_id = $column['task_id'];
		$task_title = $column['task_title'];
		$task_type = $column['task_type'];
		$task_desc = $column['task_desc'];
		$task_tags = $column['task_tags'];
		$page_count = $column['page_count'];
		$word_count = $column['word_count']; 
		$file_format = $column['file_format'];
		$claimed_at = $column['claimed_at'];
		$completed_at = $column['completed_at'];
        $url = $column['url'];
						
		echo  "<tr><td>$task_id</td>
		<td>$task_title</td>
		<td></td>
		<td>$task_type</td>
		
		<td></td>
        <td><button type='button' onclick=\"location.href='".$url."'\">Claim</button></td>
		<td></td>
		<td><button type='button' onclick=\"location.href='http://localhost/options.php?task_id=$task_id'\">More Information</button></td>";
            
		}
		
		echo "</table>";
			
		?>