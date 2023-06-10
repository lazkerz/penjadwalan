<section>
<?php

$id = $_GET['kdmapel'];
$edit = $config->query("SELECT * FROM mapel WHERE kd_mapel='$id'");
$row = $edit->fetch_assoc();

?>

<div class="bg-[#D5F7E6] border border-[#64CAA5] mt-[20px] p-[2rem] d-flex w-[50%] rounded-lg m-auto shadow-lg">
    <h3 class="text-xl text-center font-semibold text-[#64CAA5] mb-8">Edit Data Mapel</h3>
		<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-[#64CAA5]">Kode Mapel</span>
                    <input type="text" name="kd_guru" value="<?php echo $row['kd_mapel']; ?>" class="input input-bordered w-full bg-slate-50" >
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#64CAA5]">Nama Pelajaran</span>
                    <input type="text" name="nama_guru" value="<?php echo $row['nama_pelajaran']; ?>" class="input input-bordered w-full bg-slate-50">
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Edit" class="btn bg-[#D5F7E6] border-[#64CAA5] text-[#64CAA5]">
					<a href="index.php?hal=data-pengajar" class="btn btn-ghost border-0 text-[#64CAA5]">Kembali</a>
				</div>
			</div>
		</form>
	</div>
    
    <?php
        if (isset($_POST['create'])) {
            $id = $_GET['kdmapel'];
            $kd_mapel = $_POST['kd_mapel'];
            $nama_pelajaran = $_POST['nama_pelajaran'];

            $res = $config->query("UPDATE mapel SET kd_mapel= '$kd_mapel', nama_pelajaran = '$nama_pelajaran' WHERE kd_mapel = '$id'");
        if ($res) {
            echo "<script>alert('Update data berhasil!');document.location.href='index.php?hal=data-mapel';</script>";
        } else {
            echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php?hal=data-mapel';</script>";
        }
    }
    ?>
</section>