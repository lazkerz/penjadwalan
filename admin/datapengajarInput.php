<section>
	<div class="text-center">
		<h3 class="text-xl font-semibold text-sky-600">Tambah Data Pengajar</h3>
	</div>
	<div class="bg-white mt-[50px] p-[3rem] d-flex w-[50%] rounded-lg m-auto">
		<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span>Kode Guru</span>
					<input type="text" name="kd_guru" placeholder="Type here" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span>Nama Guru</span>
					<input type="text" name="nama_guru" placeholder="Type here" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Tambah" class="btn bg-slate-950">
					<a href="index.php?hal=data-pengajar" class="btn bg-slate-200 border-0">Kembali</a>
				</div>
			</div>
		</form>
	</div>


	<?php
	if (isset($_POST['create'])) {
		$kd_guru = $_POST['kd_guru'];
		$nama_guru = $_POST['nama_guru'];

		$res = $config->query("INSERT INTO tb_guru VALUES('$kd_guru', '$nama_guru')");
		if ($res) {
			echo "<script>alert('Data berhasil ditambahkan!');document.location.href='index.php?hal=data-pengajar';</script>";
		} else {
			echo "<script>alert('Gagal menambahkan data!');document.location.href='index.php?hal=data-pengajar';</script>";
		}
	}
	?>
</section>