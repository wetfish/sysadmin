<?php

$motd = file_get_contents("motd.html");
$motd = preg_replace("/\n\s*/", "", $motd);
$motd = str_replace('"', "\\\"", $motd);
file_put_contents("motd.min.html", $motd);

?>
