<?php
date_default_timezone_set('Asia/Jakarta');
DEFINE("HOST", "localhost");
DEFINE("USER", "root");
DEFINE("PASS", "");
DEFINE("DB", "db_jadwal");
DEFINE("DB2", "db_jurusan");
$config = new mysqli(HOST,USER,PASS,DB);
if($config->connect_errno){
	die("Koneksi Gagal : ". $config->connect_errno);
}

$config2 = new mysqli(HOST,USER,PASS,DB2);
if($config2->connect_errno){
	die("Koneksi Gagal : ". $config2->connect_errno);
}
?>
