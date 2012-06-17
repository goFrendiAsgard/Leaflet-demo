<?php
$db_server = 'localhost';
$db_user = 'root';
$db_password = 'toor';
$db_schema = 'geo';


$connection = mysql_connect($db_server, $db_user, $db_password);
mysql_select_db($db_schema, $connection);
?>