<?php
date_default_timezone_set('Asia/Jakarta');
DEFINE("HOST", "localhost");
DEFINE("USER", "root");
DEFINE("PASS", "");
DEFINE("DB", "db_smkjadwal");
$config = new mysqli(HOST,USER,PASS,DB);
if($config->connect_errno){
	die("Koneksi Gagal : ". $config->connect_errno);
}
?>
