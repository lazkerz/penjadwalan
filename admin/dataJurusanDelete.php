<?php
$id = $_GET['kdjurusan'];
$del = $config2->query("DELETE FROM jurusan_tav WHERE kd_jurusan = '$id'");
if($del){
	header('location:index.php?hal=data-jurusan');
}
?>