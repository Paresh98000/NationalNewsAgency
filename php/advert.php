<?php

if(isset($_SESSION["add"])){ 
				
				if($_SESSION["add"]>$_SESSION["timgs"])
					$_SESSION["add"]=0;
				
				$jk = $_SESSION["add"];
				$_SESSION["add"]++;
} else{ 	
	$jk = 0;
}
		//echo $_SESSION["add"];
		//echo $jk;
		if(isset($_COOKIE["User"])){
			$sign=1;
			
		}
		
		?>