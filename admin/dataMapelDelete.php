<?php
$id = $_GET['kd_mapel'];
$del = $config->query("DELETE FROM mapel WHERE kd_mapel = '$id'");
if($del){
	header('location:index.php?hal=data-mapel');
}
?>