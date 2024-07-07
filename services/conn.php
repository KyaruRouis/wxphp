<?php
	$servername = "";
	$dbname = "";
	$username = ";//没改的话一般时root
	$password = "";
	//连接MYSQL数据库
	$conn = new mysqli($servername, $username, $password,$dbname,'3306');
	//检查连接是否成功
	if ($conn->connect_error) {
		die ("Connection failed:" . $conn->connect_error);
	}
	//echo "Connected successfully";
?>
