<?php
	$host='LocalHost';
	$user='root';
	$passwd='';
	
	try{
	$connection=mysqli_connect($host,$user,$passwd,"paresh");
	}
	catch(Exception $e){
		echo $e->getMessage()."Error";
	}

	$result = mysqli_query($connection,'Show databases;');
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);

	function getrel(){
		if(isset($_COOKIE["Page"])){
			return lower($_COOKIE["Page"]);	
		}
		
		return "#";
	}
?>

<html>

	<head>
		<title>Natinal News Agency</title>
		<link rel="stylesheet" href="header.css" />
		<link rel="stylesheet" href='navigation.css' />
		<link rel="stylesheet" href=<?php getrel(); ?> />
	</head>

	<body>
		<?php include('Header.html'); ?>
		<?php include('Navigation.html'); ?>
		<?php 
			if(!isset($_COOKIE["Page"])){
				include('HomePage.html');
			}
			else{
				echo "Cookie is set";
			}
		?>
	</body>



</html>

<?php
mysqli_close($connection);
?>