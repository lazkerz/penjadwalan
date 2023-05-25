<?php
$id = $_GET['kdjurusan'];
$edit = $config2->query("SELECT * FROM jurusan_tav WHERE kd_jurusan='$id'");
$row = $edit->fetch_assoc();
?>

<section>
    <div>
        <h3>Edit Data Jurusan</h3>
    </div>
    <form action="" method="POST">
	<table border="1">
		<tr>
			<td>Kode Jurusan :<br><input type="text" name="kd_jurusan" value="<?php echo $row['kd_jurusan']; ?>"class="input-field"></td>
		</tr>
		<tr>
			<td>Nama Jurusan :<br><input type="text" name="nama_jurusan" value="<?php echo $row['nama_jurusan']; ?>"class="input-field"></td>
		</tr>
		<tr>
			<td>
				<input type="submit" name="create" value="Edit" class="btn">
				<a href="index.php?hal=data-jurusan">Kembali</a>
			</td>
		</tr>
	</table>
	</form>
<?php
if(isset($_POST['create'])){
    $id = $_GET['kdjurusan'];
    $kd_jurusan = $_POST['kd_jurusan'];
    $nama_jurusan = $_POST['nama_jurusan'];

    $res = $config2->query("UPDATE jurusan_tav SET kd_jurusan= '$kd_jurusan', nama_jurusan = '$nama_jurusan' WHERE jurusan_tav.kd_jurusan = '$id'");
	if($res){
		echo "<script>alert('Update data berhasil!');document.location.href='index.php?hal=data-jurusan';</script>";
	} else{
		echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php?hal=data-jurusan';</script>";
	}
}
?>
</section>