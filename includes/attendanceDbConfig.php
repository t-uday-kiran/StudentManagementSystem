<?php

define('DB_HOST_2','localhost');
define('DB_USER_2','root');
define('DB_PASS_2','');
define('DB_NAME_2','attendance_db');

$attconn = mysqli_connect('localhost','root','','attendance_db') or die(mysqli_error());

// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST_2.";dbname=".DB_NAME_2,DB_USER_2, DB_PASS_2,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}

?>