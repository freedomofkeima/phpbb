<?php
	$username= $_POST['username'];
	if($_FILES["file"]["error"] > 0){
		echo "Error : ". $_FILES["file"]["error"] . "<br>";
	}
	else {
      	if (file_exists("profpics/" . $username.".jpg")) {
      		unlink("profpics/" . $username.".jpg");
      		}
      	if(!is_dir("profpics")){
      		mkdir("profpics");
      	}

      	move_uploaded_file($_FILES["file"]["tmp_name"],"profpics/" . $username.".jpg");
	}
?>