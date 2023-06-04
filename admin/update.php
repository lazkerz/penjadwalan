<section>
	<?php 
	include "../lib/config.php";
	session_start();
	$id = $_SESSION['id_admin'];
    $edit = $config->query("SELECT * FROM user WHERE id_admin='$id'");
    $row = $edit->fetch_assoc();
	?>

<div class="bg-[#D5F7E6] border border-[#64CAA5] mt-[20px] p-[2rem] d-flex w-[50%] rounded-lg m-auto shadow-lg">
<h3 class="text-xl text-center font-semibold text-[#64CAA5] mb-8">Edit Profile</h3>
	<form action="" method="POST">
			<div class="flex flex-col">
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-[#6C6CE8]">Nama Admin</span>
					<input type="text" name="nama_admin" value="<?php echo $row['nama_admin']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Username</span>
					<input type="text" name="user_admin" value="<?php echo $row['user_admin']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Password</span>
					<input type="text" name="pass_admin" value="<?php echo $row['pass_admin']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Jenis Kelamin</span>
					<input type="text" name="jk" value="<?php echo $row['jk']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Jabatan</span>
					<input type="text" name="jabatan" value="<?php echo $row['jabatan']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">Alamat</span>
					<input type="text" name="alamat" value="<?php echo $row['alamat']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-[#6C6CE8]">No Telp</span>
					<input type="text" name="no_telp" value="<?php echo $row['no_telp']; ?>" class="input input-bordered w-full bg-slate-50" />
				</div>
				<div class="flex items-center gap-2 mt-3">
					<input type="submit" name="create" value="Tambah" class="btn bg-slate-950">
					<a href="index.php" class="btn btn-ghost border-0 text-[#6C6CE8]">Kembali</a>
				</div>
			</div>
		</form>
		<?php
if(isset($_POST['create'])){
    $id = $_SESSION['id_admin'];
    $nama_admin = $_POST['nama_admin'];
    $user_admin = $_POST['user_admin'];
	$pass_admin = $_POST['pass_admin'];
	$jk = $_POST['jk'];
	$alamat = $_POST['alamat'];
	$no_telp = $_POST['no_telp'];

    $res = $config->query("UPDATE user SET nama_admin = '$nama_admin', user_admin = '$user_admin', pass_admin = '$pass_admin', jk = '$jk', alamat = '$alamat', no_telp = '$no_telp' WHERE user.id_admin = '$id'");
	if($res){
		echo "<script>alert('Update data berhasil!');document.location.href='index.php';</script>";
	} else{
		echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php';</script>";
	}
}
?>
</section>