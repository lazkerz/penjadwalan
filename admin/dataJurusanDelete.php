<?php
$id = $_GET['kd_jurusan'];
$del = $config->query("DELETE FROM tb_jurusan WHERE kd_jurusan = '$id'");
if($del){
	header('location:index.php?hal=data-jurusan');
}
?>