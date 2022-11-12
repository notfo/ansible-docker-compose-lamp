<?php
	$docker_hostname = getenv('HOSTNAME'); 
	$link = mysqli_connect("database", "root", $_ENV['MYSQL_ROOT_PASSWORD'], "docker");
	if (mysqli_connect_errno()) {
		 printf("MySQL connecttion failed: %s", mysqli_connect_error());
		}
	$sql = "SELECT * FROM Firstname JOIN Lastname ON Firstname.id = Lastname.id ORDER BY RAND() LIMIT 1;";
	$result = $link->query($sql);
	while ($row = $result->fetch_assoc()) {
    		echo $row['firstname'].' '.$row['lastname'].' from '.$docker_hostname;
	}
	mysqli_close($link);
?>
                               
