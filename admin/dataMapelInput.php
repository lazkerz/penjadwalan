<section>
    <div class="bg-[#d7efff] border border-[#6c92e8] mt-[20px] p-[2rem] d-flex w-[50%] rounded-lg m-auto shadow-lg">
        <h3 class="text-xl text-center font-semibold text-[#6c92e8]">Tambah Mata Pelarajan</h3>
        <form action="" method="POST">
            <div class="flex flex-col">
                <div class="flex flex-col gap-2 mb-[1rem]">
                    <span class="text-[#6c92e8]">Kode Mapel</span>
                    <input type="text" name="kd_mapel" placeholder="Type Here"
                        class="input input-bordered w-full bg-slate-100" />
                </div>
                <div class="flex flex-col gap-2 mb-[2rem]">
                    <span class="text-[#6c92e8]">Nama Pelarajan</span>
                    <input type="text" name="nama_pelajaran" placeholder="Type Here"
                        class="input input-bordered w-full bg-slate-100" />
                </div>
                <div class="flex items-center gap-2 mt-3">
                    <input type="submit" name="create" value="Tambah"
                        class="btn bg-[#d7efff] border-[#6c92e8] text-[#6c92e8]">
                    <a href="index.php?hal=data-mapel" class="btn btn-ghost border-0 text-[#6c92e8]">Kembali</a>
                </div>
            </div>
        </form>
    </div>
    <?php
    if (isset($_POST['create'])) {
        $kd_mapel = $_POST['kd_mapel'];
        $nama_pelajaran = $_POST['nama_pelajaran'];

        $res = $config->query("INSERT INTO mapel VALUES('$kd_mapel', '$nama_pelajaran')");
        if ($res) {
            echo "<script>alert('Data berhasil ditambahkan!');document.location.href='index.php?hal=data-mapel';</script>";
        } else {
            echo "<script>alert('Gagal menambahkan data!');document.location.href='index.php?hal=data-mapel';</script>";
        }
    }
    ?>
</section>