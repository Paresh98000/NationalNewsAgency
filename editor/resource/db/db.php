<?php 

$db['db_host'] = "localhost";
$db['db_user'] = "root";
$db['db_pass'] = "";
$db['db_name'] = "cms";

foreach ($db as $key => $value) {
	define(strtoupper($key), $value);
}

$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

mysqli_query($connection,'SET character_set_results=utf8');
mysqli_query($connection,'SET names=utf8');
mysqli_query($connection,'SET character_set_client=utf8');
mysqli_query($connection,'SET character_set_connection=utf8');
mysqli_query($connection,'SET character_set_results=utf8');
mysqli_query($connection,'SET collation_connection=utf8_general_ci');
mysqli_query($connection,'set names utf8;');

// if ($connection) {
// 	echo "We are in";
// }



?>