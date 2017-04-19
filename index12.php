<?php // This snippet of php should go on the top of all of your pages. If you are not logged in, you'll be redirected to the home page.
session_start();
if(!$_SESSION['loggedIn']) {
  header("location:index1.php"); 
  die(); 
}
?>


<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Main Page  </title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css?ts=<?=time()?>&quot;" rel="stylesheet" />
    <!-- FONT AWESOME STYLE CSS -->
    <link href="assets/font-awesome-4.1.0/css/font-awesome.min.css?ts=<?=time()?>&quot;" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css?ts=<?=time()?>&quot;" rel="stylesheet" />    
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	

</head>
<body data-spy="scroll" data-target=".navbar-fixed-top">
     <!--NAVBAR SECTION-->
    <div class="navbar navbar-inverse navbar-fixed-top scrollclass" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <
                </button>
                <a class="navbar-brand" href="#">Scribe Check</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home">HOME</a></li>
                    
                    <li><a href="#task">UPLOAD</a></li>
                     <li><a href="#about">TASKS</a></li>
                     <li><a href="#contact">CONTACT</a></li>
					 <li><a href="logout.php">LOG OUT</a></li>
					 
					</form></li>
                </ul>
            </div>
           
        </div>
    </div>
   <!--END NAVBAR SECTION-->
        <!--HOME SECTION-->
		
       <section id="home" class="text-center">
            <div class="container">
           <div class="row text-center pad-top" >
            <div class="col-md-12 pad-top-more">
                <h1>Welcome to Scribe_Check  </h1>
				<br></br>
                <img src="pic.png" alt="document" style="width:250px;height:200px;">
               
				<h3>About Us</h3>
                <p class="col-md-8 col-md-offset-2">
 The purpose of our website is to provide an online service for college students who are looking for their work to be corrected/reviewed
                </p>
                
            </div>
               
               </div>
        </div>
       </section>
    <!--END SECTION-->
     <!--task SECTION-->
     <section id="task"  >
            <div class="container">
                    <div class="row text-center" >
               <div class="col-md-12">
                    <h1>Upload Documents Here </h1>
					<br></br>
					<br></br>
		<form action="upload.php" method="post" enctype = "multipart/form-data">
	<div class="form-group">
			<label for="tasktitle">Task Title</label>
    <input type="task" class="form-control" name="task_title"  placeholder="Enter task title">
    </div>
			<div class="form-group">
				<label for="task_type">Task Type</label>
				<input type="task" class="form-control" name="task_type"  placeholder="Enter task type (eg. MSc thesis, BSc dissertation, project report, PhD thesis, Assignment, Conference Research Paper etc">
			</div>
			
  
			<div class="form-group">
					<label for="exampleTextarea">Brief Description of Task</label>
					<textarea class="form-control" name="task_desc" rows="3"></textarea>
			</div>
			
			<div class="form-group">
					<label for="example-number-input" class="col-2 col-form-label">Number of pages</label>
						<div class="col-10">
							<input class="form-control" type="number" value="42" name="page_count">
			</div>
			
			<div class="form-group">
					<label for="example-number-input" class="col-2 col-form-label">Number of words</label>
						<div class="col-10">
							<input class="form-control" type="number" value="5000" name="word_count">
			</div>
			
			<div class="form-group">
				<label for="exampleSelect1">File Type</label>
					<select class="form-control" name="file_format">
						<option>.docx</option>
						<option>.doc</option>
						<option>open office</option>
						<option>text</option>
						<option>pdf</option>
					</select>
			</div>
			
		
		<div class="form-group">
			<label>Tags</label>		
		<ul class="checkbox-grid" style="list-style-type: none;">
		
		
				<li><input type="checkbox" name="task_tags[]" value="Sociology" onclick='chkcontrol(0)'; >Sociology</li>
				<li><input type="checkbox" name="task_tags[]" value="Politics" onclick='chkcontrol(1)'; >Politics</li>
				<li><input type="checkbox" name="task_tags[]" value="History" onclick='chkcontrol(2)'; >History</li>
				<li><input type="checkbox" name="task_tags[]" value="Mathematics" onclick='chkcontrol(3)'; >Mathematics</li>
			
				
			
				<li><input type="checkbox" name="task_tags[]" value="Prose" onclick='chkcontrol(4)'; >Prose</li>
				<li><input type="checkbox" name="task_tags[]" value="Poetry" onclick='chkcontrol(5)'; >Poetry</li>
				<li><input type="checkbox" name="task_tags[]" value="Languages" onclick='chkcontrol(6)'; >Languages</li>
				<li><input type="checkbox" name="task_tags[]" value="Media" onclick='chkcontrol(7)'; >Media</li>
			
			
			
				<li><input type="checkbox" name="task_tags[]" value="Philosophy" onclick='chkcontrol(8)'; >Philosophy</li>
				<li><input type="checkbox" name="task_tags[]" value="Physics" onclick='chkcontrol(9)'; >Physics</li>
				<li><input type="checkbox" name="task_tags[]" value="Chemistry" onclick='chkcontrol(10)'; >Chemistry</li>
				<li><input type="checkbox" name="task_tags[]" value="Programming" onclick='chkcontrol(11)'; >Programming</li>
			
				
			
				<li><input type="checkbox" name="task_tags[]" value="Biology" onclick='chkcontrol(12)'; >Biology</li>
				<li><input type="checkbox" name="task_tags[]" value="Astrology" onclick='chkcontrol(13)'; >Astrology</li>
				<li><input type="checkbox" name="task_tags[]" value="Law" onclick='chkcontrol(14)'; >Law</li>
				<li><input type="checkbox" name="task_tags[]" value="Accounting" onclick='chkcontrol(15)'; >Accounting</li>
			
			
			
				<li><input type="checkbox" name="task_tags[]" value="Economics" onclick='chkcontrol(16)'; >Economics</li>
				<li><input type="checkbox" name="task_tags[]" value="Management" onclick='chkcontrol(17)'; >Management</li>
				<li><input type="checkbox" name="task_tags[]" value="Taxation" onclick='chkcontrol(18)'; >Taxation</li>
				<li><input type="checkbox" name="task_tags[]" value="Networking" onclick='chkcontrol(19)'; >Networking</li>
			
				
			
				<li><input type="checkbox" name="task_tags[]" value="Software Design" onclick='chkcontrol(20)'; >Software Design</li>
				<li><input type="checkbox" name="task_tags[]" value="Hardware Design" onclick='chkcontrol(21)'; >Hardware Design</li>
				<li><input type="checkbox" name="task_tags[]" value="App Design" onclick='chkcontrol(22)'; >App Design</li>
				<li><input type="checkbox" name="task_tags[]" value="Website Design" onclick='chkcontrol(23)'; >Website Design</li>
			
			
			</ul>
				
			</div>
			
			
			<div class="form-group">
					<label for="example-number-input" class="col-2 col-form-label" ><br>Number of pages</label>
						<div class="col-10">
							<input class="form-control" type="number" value="42" name="page_count">
			</div>
			
			<div class="form-group"><br>
				<label for="example-date-input" class="col-2 col-form-label">Date for task to be claimed</label>
					<div class="col-10">
						<input class="form-control" type="date"  name="claimed_at">
			</div>
 
			<div class="form-group"><br>
				<label for="example-date-input" class="col-2 col-form-label">Date for task to be completed</label>
					<div class="col-10">
						<input class="form-control" type="date"  name="completed_at">
			</div>
 
			  <br>
					<label class="custom-file-upload">
						<input type="file" name="doc"/>
					</label>
		
				<input type="submit" name="submit">  
<p>Please upload your document to be reviewed/corrected</p>
			 </div>
                     </div>
					 </div>
					  </div>
					   </div>
					   </div>
					    </div>
							</section>
			</form>



		
		
		

		
		
		
    <!--END task SECTION-->
		<br></br>
	<br></br>
	
        <section id="about"  >
            <div class="container">
                 <div class="row text-center" >
               <div class="col-md-12">
                    <h1>TASKS </h1>
					<br><br>
               </div>
			   <iframe src="http://localhost/tasks.php" width="100%" height="100%"
		style="	float:center;
				border:none;
				background-color:white;" >Tasks</iframe>
                     </div>
          </section> 
		
		
    <!--END task SECTION-->
    <!--ABOUT SECTION-->
	
    <!--END ABOUT SECTION-->
    <!--CONTACT SECTION-->
         <section id="contact">
               <div class="container">
                     <div class="row text-center" >
               <div class="col-md-12">
                    <h1>CONTACT HERE</h1>
               </div>
			   
		
		
		
                     </div>
	
           
        </div>
		<h3> How to reach us! </h3>

    
          <div class="add" >
		Number: 061 202368<br>
		Email: 15142151@studentmail.ie<br>
		Address: B2005,Main Building, University of Limerick, Ireland<br>
		</div>
		<script>
			function googleTranslateElementInit() {
			new google.translate.TranslateElement({
			pageLanguage: 'en',
			layout: google.translate.TranslateElement.InlineLayout.SIMPLE
			}, 'google_translate_element');
			}
			</script><script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


		<div id="google_translate_element"></div>

  
       
         </section>
		 
   
     <!--FOOTER SECTION-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/plugins/bootstrap.js"></script>
     <!-- EASING SCROLL SCRIPTS PLUGIN  -->
    <script src="assets/plugins/jquery.easing.min.js"></script>
     <!-- CUSTOM SCRIPTS   -->
    <script src="assets/js/custom.js"></script>
</body>
</html>