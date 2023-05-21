<section>
    <div>
        <h3>Data Pengajar</h3>
    </div>
    <div class="overflow-x-auto mt-[50px]">
    <a class="btn add" href="index.php?hal=data-pengajar&aksi=input">Tambah</a>
        <table class="table w-full">
            <!-- head -->
            <thead>
                <tr>
                    <th>#</th>
                    <th>Kode Guru</th>
                    <th>Nama</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $i = 1; 
                    $select_querty = $config1->query("SELECT * FROM tb_guru");
                    foreach ($select_querty as $row){
                ?>
                <tr>
                    <td><?=$i++ ?></td>
                    <td><?=$row['kd_guru'] ?></td>
                    <td><?=$row['nama_guru'] ?></td>
                    <td class="text-center">
                        <div class="flex items-center gap-5 justify-center">
                            <a href="?hal=data-pengajar&aksi=edit&kdguru=<?= $row['kd_guru']; ?>" class="text-lg text-white bg-sky-500 hover:bg-sky-700 p-1"><i class='bx bxs-edit'></i></a>
                            <a href="?hal=data-pengajar&aksi=delete&kdguru=<?= $row['kd_guru']; ?>"><i class='bx bx-message-square-x'></i></a>
                        </div>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</section>