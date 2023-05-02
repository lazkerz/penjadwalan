<?php 
session_start();



 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard | Admin</title>
</head>
<body>

	<h3><?= $_SESSION['nama_admin']; ?></h3>
	<?php 
	$hari = ['Senin','Selasa','Rabu','Kamis','Jum\'at','Sabtu','Minggu'];
	$matkul = ['Matematika','Bhs Inggris', 'IPA','IPS','Agama'];

	foreach ($hari as $key => $value) {
		echo "<br>".$value."<br> ";
		for($i = 0; $i < 5;$i++){
			echo $i;
		};
	}

	 ?>

</body>
</html>