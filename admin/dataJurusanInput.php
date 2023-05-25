<section>
		<h3 class="text-xl text-center font-semibold text-[#6C6CE8]">Tambah Data Jurusan</h3>
	<div class="bg-[#DED7FF] border border-[#6C6CE8] mt-[20px] p-[3rem] d-flex w-[50%] rounded-lg m-auto shadow-lg">
		<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-[#6C6CE8]">Kode Jurusan</span>
					<input type="text" name="kd_jurusan" placeholder="Type here" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Nama Jurusan</span>
					<input type="text" name="nama_jurusan" placeholder="Type here" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Tambah" class="btn bg-slate-950">
					<a href="index.php?hal=data-jurusan" class="btn btn-ghost border-0">Kembali</a>
				</div>
			</div>
		</form>
	</div>
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