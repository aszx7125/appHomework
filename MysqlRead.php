<?php
	include("connMySQL.php");
	
	$sql_query = "SELECT * FROM member";
	$result = $pdo->query($sql_query);
	
	foreach($result as $row) {
		echo "<p>";
		echo $row["id"], "：";
		echo $row["name"], "：";
		echo $row["password"];
		echo "</p>";
	}
?>