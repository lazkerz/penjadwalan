<section>
    <div>
    <h3>Tambah Data Jurusan</h3>
    </div>
    <form action="" method="POST">
        <table class="tb-create">
        <tr>
			<td>Kode Jurusan :<br><input type="text" name="kd_jurusan" class="input-field"></td>
		</tr>
		<tr>
			<td>Nama Jurusan :<br><input type="text" name="nama_jurusan" class="input-field"></td>
		</tr>
		<tr>
			<td>
				<input type="submit" name="create" value="Tambah" class="btn">
				<a href="index.php?hal=data-jurusan">Kembali</a>
			</td>
		</tr>
        </table>
    </form>
<?php
if(isset($_POST['create'])){
$kd_jurusan = $_POST['kd_jurusan'];
$nama_jurusan = $_POST['nama_jurusan'];

$res = $config2->query("INSERT INTO jurusan_tav VALUES('$kd_jurusan', '$nama_jurusan')");
	if($res){
		echo "<script>alert('Data berhasil ditambahkan!');document.location.href='index.php?hal=data-jurusan';</script>";
	} else{
		echo "<script>alert('Gagal menambahkan data!');document.location.href='index.php?hal=data-jurusan';</script>";
	}
}
?>
</section>