<section>
    <div>
        <h3>Edit Data Pengajar</h3>
    </div>
    <?php
    $id = $_GET['kdguru'];
    $edit = $config1->query("SELECT * FROM tb_guru WHERE kd_guru='$id'");
    $row = $edit->fetch_assoc();
    ?>

    <form action="" method="POST">
        <table border="1">
            <tr>
                <td>Kode Guru :<br><input type="text" name="kd_guru" value="<?php echo $row['kd_guru']; ?>" class="input-field"></td>
            </tr>
            <tr>
                <td>Nama Guru :<br><input type="text" name="nama_guru" value="<?php echo $row['nama_guru']; ?>" class="input-field"></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="create" value="Edit" class="btn">
                    <a href="index.php?hal=data-pengajar">Kembali</a>
                </td>
            </tr>
        </table>
    </form>
    <?php
    if (isset($_POST['create'])) {
        $id = $_GET['kdguru'];
        $kd_guru = $_POST['kd_guru'];
        $nama_guru = $_POST['nama_guru'];

        $res = $config1->query("UPDATE tb_guru SET kd_guru= '$kd_guru', nama_guru = '$nama_guru' WHERE tb_guru.kd_guru = '$id'");
        if ($res) {
            echo "<script>alert('Update data berhasil!');document.location.href='index.php?hal=data-pengajar';</script>";
        } else {
            echo "<script>alert('Gagal! mengupdate data!');document.location.href='index.php?hal=data-pengajar';</script>";
        }
    }
    ?>
</section>