<?php
$id = $_GET['kd_jurusan'];
$edit = $config->query("SELECT * FROM tb_jurusan WHERE kd_jurusan='$id'");
$row = $edit->fetch_assoc();
?>

<section>
	<div class="bg-[#DED7FF] border border-[#6C6CE8] mt-[20px] p-[2rem] d-flex w-[50%] rounded-lg m-auto shadow-lg">
	<h3 class="text-xl text-center font-semibold text-[#6C6CE8] mb-8">Edit Data Jurusan</h3>
		<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-[#6C6CE8]">Kode Jurusan</span>
					<input type="text" name="kd_jurusan" value="<?=$row['kd_jurusan']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Nama Jurusan</span>
					<input type="text" name="nama_jurusan" value="<?=$row['nama_jurusan']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Tambah" class="btn bg-[#DED7FF] border border-[#6C6CE8] text-[#6C6CE8]">
					<a href="index.php?hal=data-jurusan" class="btn btn-ghost border-0 text-[#6C6CE8]">Kembali</a>
				</div>
			</div>
		</form>
	</div>
<?php
if(isset($_POST['edit'])){
    $id = $_GET['kd_jurusan'];
    $kd_jurusan = $_POST['kd_jurusan'];
    $nama_jurusan = $_POST['nama_jurusan'];

    $res = $config->query("UPDATE tb_jurusan SET kd_jurusan= '$kd_jurusan', nama_jurusan = '$nama_jurusan' WHERE tb_jurusan.kd_jurusan = '$id'");
	if($res){
		echo "<script>alert('Update data berhasil!');document.location.href='index.php?hal=data-jurusan';</script>";
	} else{
		echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php?hal=data-jurusan';</script>";
	}
}
?>
</section>