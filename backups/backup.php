<?php

require "config.php";

$date = date("Y_m_d");
$user = escapeshellarg(MYSQL_USER);
$password = escapeshellarg(MYSQL_PASSWORD);
$host = escapeshellarg(MYSQL_HOST);
$database = escapeshellarg(MYSQL_DATABASE);
$path = escapeshellarg(BACKUP_PATH.MYSQL_DATABASE."_backup_$date.sql");

exec("mysqldump -u{$user} -p{$password} -h{$host} {$database} > {$path}");

?>
