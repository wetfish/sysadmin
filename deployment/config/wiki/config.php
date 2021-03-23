<?php

// Copy this file to "config.php" and change the following values

define("MYSQL_USER", getenv(DB_USERNAME));
define("MYSQL_PASSWORD", getenv(DB_PASSWORD));
define("MYSQL_DATABASE", getenv(DB_DATABASE)); 

// Password used to avoid captchas via the login page
define("LOGIN_PASSWORD", getenv(WIKI_LOGIN_PASSWORD)); 

// Password for admins to do admin things via the login page
define("ADMIN_PASSWORD", getenv(WIKI_ADMIN_PASSWORD));

// Password used to ban users
define("BAN_PASSWORD", getenv(WIKI_BAN_PASSWORD));

// reCAPTCHA options
define("RECAPTCHA_PUBLIC", getenv(WIKI_PUBKEY));
define("RECAPTCHA_PRIVATE", getenv(WIKI_CERT));

// Secret regex to bypass captchas
define("CAPTCHA_BYPASS", getenv(WIKI_BYPASS));

// Leave this as is so the docker containers integrate correctly
define("MYSQL_HOST", "db");

?>
