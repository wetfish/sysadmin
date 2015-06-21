<?php

require "config.php";
exec("mysqldump -u ".MYSQL_USER." -p ".MYSQL_PASSWORD." -h ".MYSQL_HOST." ".MYSQL_DATABASE." > ".BACKUP_PATH.MYSQL_DATABASE."_backup_".date("Y_m_d").".sql");

?>
