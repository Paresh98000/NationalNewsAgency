<?php


		$q = "Select advertname from tbl_adverts where curdate()<=duedate;";
		$r = mysqli_query($connection,$q);
		$rows1=0;
		while($row = mysqli_fetch_assoc($r)){
			if($row["advertname"]!=""){
			$addimg[$rows1]=$row["advertname"];
			$rows1++;
			}
		}
		//echo $rows1;
		//echo $jk;
		//echo $_SESSION["add"];
	if(isset($_SESSION["timgs"])){
		$_SESSION["timgs"]=$rows1-1;
	}


?>