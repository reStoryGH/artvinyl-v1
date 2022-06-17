<?php
define('DB_SERVER','localhost');
define('DB_USER','a0678400_artvinyl');
define('DB_PASS' ,'QT8Nature');
define('DB_NAME', 'a0678400_artvinyl');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>