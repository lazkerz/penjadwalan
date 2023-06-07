<section>
<div class="bg-sky-50 border border-sky-600 mt-[20px] p-[2rem] d-flex w-[30%] rounded-lg m-auto shadow-lg">
<h3 class="text-xl text-center font-semibold text-sky-600 mb-8">Edit Profil</h3>
		<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-sky-600">Nama Admin</span>
                    <input type="text" name="nama_admin" value="<?=$_SESSION['nama_admin']; ?>" class="input input-bordered w-full bg-slate-50" >
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-sky-600">User Admin</span>
                    <input type="text" name="user_admin" value="<?php echo $row['user_admin']; ?>" class="input input-bordered w-full bg-slate-50">
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-sky-600">Pass Admin</span>
                    <input type="text" name="pass_admin" value="<?php echo $row['pass_admin']; ?>" class="input input-bordered w-full bg-slate-50">
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Save" class="btn bg-sky-50 border border-sky-600 text-sky-600" ">
					<a href="index.php?hal=profile" class="btn btn-ghost border-0 text-sky-600">Kembali</a>
				</div>
			</div>
		</form>
	</div>

    <?php
    if (isset($_POST['create'])) {
        $nama_admin = $_POST['nama_admin'];
		$user = $_POST['user_admin'];
        $pass = $_POST['pass_admin'];

        $res = $config->query("UPDATE user SET nama_admin = '$nama_admin', user_admin = '$user', pass_admin = '$pass' WHERE user.nama_admin = '$nama_admin'");
        if ($res) {
            echo "<script>alert('Update data berhasil!');document.location.href='index.php?hal=profile';</script>";
        } else {
            echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php?hal=update';</script>";
        }
    }
    ?>
</section>