<?php
	session_start();
	
	if(!isset($_SESSION["add"])){
		$_SESSION["add"]=0;		
	}

	$db['db_host'] = "localhost";
	$db['db_user'] = "root";
	$db['db_pass'] = "";
	$db['db_name'] = "cms";

	foreach ($db as $key => $value) {
		define(strtoupper($key), $value);
	}
	
	$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
	
	
	
	if(isset($_GET["del"])){
		setcookie("User","",time()-3600,"/");
		header("Location: HomePage.php");
	}
	
	include('stic.php');
	include('advert.php');
	
?>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" id="linkh" href="../Stylesheets/header.css" />
	<link rel="stylesheet" id="linkn" href="../Stylesheets/navigation.css" />
	<style>
div.add{
	
	float:left;
	//border: 1px solid black;
	position: relative;
	top: 100px;
	//margin-top: -350px;
	//margin-left: 250px;'
	//margin-top: 200px;
	//left: 230px;

	//z-index:-5;
	display:block;
	margin-bottom: 150px;
	//padding-bottom: 100px;
	

}

div.add img{ 
	width: 300px;
	min-height:800px;
	border-radius: 10px;
	box-shadow: 3px 3px 3px gray;
}
	</style>
</head>


<?php

	
		
	include("../Pages/HeaderHindi.html");
	
?>
<div style='position: relative; left: 30px; margin-top: 100px; width: 60%; font-size: 30px; font-family: \"Courier New\";'>वेबसाइट अभी भी विकासीत हौ रही है, यह सुविधा जल्द ही यहां उपलब्ध होगी...</div>

<div class="add">
	<img id="add_img" src='../editor/resource/images/Business/<?php echo $addimg[$jk]; ?>' />
</div>
<?php
	//include("../Pages/Homepage.html");
	//include("../Pages/Slide.html");
	//include("../Pages/Homepage.php");
	include("../Pages/FooterHindi.html");


?>