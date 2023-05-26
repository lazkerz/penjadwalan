<?php
$id = $_GET['kdguru'];
$del = $config->query("DELETE FROM tb_guru WHERE kd_guru = '$id'");
if($del){
	header('location:index.php?hal=data-pengajar');
}
?>