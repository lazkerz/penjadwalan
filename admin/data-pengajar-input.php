<section>
    <div>
    <h3>Tambah Data Pengajar</h3>
    </div>
    <form action="" method="POST">
        <table class="tb-create">
        <tr>
			<td>Kode Guru :<br><input type="text" name="kd_guru" class="input-field"></td>
		</tr>
		<tr>
			<td>Nama Guru :<br><input type="text" name="nama_guru" class="input-field"></td>
		</tr>
		<tr>
			<td>
				<input type="submit" name="create" value="Tambah" class="btn">
				<a href="index.php?hal=data-pengajar">Kembali</a>
			</td>
		</tr>
        </table>
    </form>
<?php
if(isset($_POST['create'])){
$kd_guru = $_POST['kd_guru'];
$nama_guru = $_POST['nama_guru'];

$res = $config1->query("INSERT INTO tb_guru VALUES('$kd_guru', '$nama_guru')");
	if($res){
		echo "<script>alert('Data berhasil ditambahkan!');document.location.href='index.php?hal=data-pengajar';</script>";
	} else{
		echo "<script>alert('Gagal menambahkan data!');document.location.href='index.php?hal=data-pengajar';</script>";
	}
}
?>
</section>