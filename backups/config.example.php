<?php

// Copy this file to "config.php" and change the following values

// If your MySQL information is already defined in another file, specify the path here
// For example: $require = "/path/to/passwords.php";
$require = false;

if($require)
{
    require $require;
}

// Otherwise define the MySQL connection information
else
{
    define("MYSQL_HOST", "localhost");
    define("MYSQL_USER", "username");
    define("MYSQL_PASSWORD", "password");
    define("MYSQL_DATABASE", "database");
}

define("BACKUP_PATH", "/path/to/backup/dir/");

?>
