<section>
    <div>
        <h3>Data Jurusan</h3>
    </div>
    <div class="overflow-x-auto mt-[50px]">
    <a class="btn add" href="index.php?hal=data-jurusan&aksi=input">Tambah</a>
        <table class="table w-full">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Kode Jurusan</th>
                    <th>Nama Jurusan</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 1; 
                    $select_querty = $config2->query("SELECT * FROM jurusan_tav");
                    foreach ($select_querty as $row){
                ?>
                <tr>
                    <td><?=$i++ ?></td>
                    <td><?=$row['kd_jurusan'] ?></td>
                    <td><?=$row['nama_jurusan'] ?></td>
                    <td class="text-center">
                        <div class="flex items-center gap-5 justify-center">
                            <a href="?hal=data-jurusan&aksi=edit&kdjurusan=<?= $row['kd_jurusan']; ?>" class="text-lg text-sky-500 rounded p-1"><i class='bx bxs-edit'></i></a>
                            <a href="?hal=data-jurusan&aksi=delete&kdjurusan=<?= $row['kd_jurusan']; ?>" class="text-lg text-red-500 rounded p-1"><i class='bx bx-message-square-x'></i></a>
                        </div>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</section>