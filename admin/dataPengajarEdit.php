<section>
    <div>
        <h3 class="text-xl text-center font-semibold text-[#64CAA5]">Edit Data Pengajar</h3>
    </div>
    <?php
    $id = $_GET['kdguru'];
    $edit = $config->query("SELECT * FROM tb_guru WHERE kd_guru='$id'");
    $row = $edit->fetch_assoc();
    ?>

<div class="bg-[#D5F7E6] border border-[#64CAA5] mt-[20px] p-[3rem] d-flex w-[50%] rounded-lg m-auto shadow-lg">
		<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-[#64CAA5]">Kode Guru</span>
                    <input type="text" name="kd_guru" value="<?php echo $row['kd_guru']; ?>" class="input input-bordered w-full bg-slate-50" >
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#64CAA5]">Nama Guru</span>
                    <input type="text" name="nama_guru" value="<?php echo $row['nama_guru']; ?>" class="input input-bordered w-full bg-slate-50">
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Edit" class="btn bg-slate-950">
					<a href="index.php?hal=data-pengajar" class="btn btn-ghost border-0 text-[#64CAA5]">Kembali</a>
				</div>
			</div>
		</form>
	</div>

    <?php
    if (isset($_POST['create'])) {
        $id = $_GET['kdguru'];
        $kd_guru = $_POST['kd_guru'];
        $nama_guru = $_POST['nama_guru'];

        $res = $config->query("UPDATE tb_guru SET kd_guru= '$kd_guru', nama_guru = '$nama_guru' WHERE tb_guru.kd_guru = '$id'");
        if ($res) {
            echo "<script>alert('Update data berhasil!');document.location.href='index.php?hal=data-pengajar';</script>";
        } else {
            echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php?hal=data-pengajar';</script>";
        }
    }
    ?>
</section>