<section>
    <div>
        <h3 class="text-sky-600 font-bold text-2xl">Data Mata Pelajaran</h3>
        <a class="mt-[2rem] btn bg-sky-50 border-sky-600 text-sky-600 hover:bg-sky-600 hover:border hover:border-sky-600 hover:text-white" href="index.php?hal=data-mapel&aksi=input">Tambah</a>
    </div>
    <div class="mt-5">
        <table class="w-full text-[.85rem] text-[#666] font-medium pt-3" id="example">
            <!-- head -->
            <thead class="text-white">
                <tr>
                    <th class="bg-sky-600">#</th>
                    <th class="bg-sky-600">Kode Mapel</th>
                    <th class="bg-sky-600">Nama Pelajaran</th>
                    <th class="text-center bg-sky-600">Aksi</th>
                </tr>
            </thead>
            <tbody class="bg-white">
                <?php
                    $i = 1; 
                    $select_querty = $config->query("SELECT * FROM mapel");
                    foreach ($select_querty as $row){
                ?>
                <tr>
                    <td><?=$i++ ?></td>
                    <td><?=$row['kd_mapel'] ?></td>
                    <td><?=$row['nama_pelajaran'] ?></td>
                    <td class="text-center">
                        <div class="flex items-center gap-5 justify-center">
                            <a href="?hal=data-mapel&aksi=edit&kd_mapel=<?= $row['kd_mapel']; ?>" class="i-btn btn-ed"><i class='bx bxs-edit'></i></a>
                            <a href="?hal=data-mapel&aksi=delete&kd_mapel=<?= $row['kd_mapel']; ?>" class="i-btn btn-del"><i class='bx bx-message-square-x'></i></a>
                        </div>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</section>