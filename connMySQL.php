<?php
	$db_host="localhost";
	$db_username="id20161911_id109151128_james";
	$db_password="abc1234567890D!";
	$db_name="id20161911_id109151128_appinventor";

try{
	$pdo new PDO("mysql:host={$db_host};dbname={$db_name};charset=utf8", $db_username, $db_password);
	} catch(PDOException $e) {
		print "資料庫連結失敗";
		die();
}

?>