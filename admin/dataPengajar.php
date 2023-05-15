<section>
    <div>
        <h3>Data Pengajar</h3>
    </div>
    <div class="overflow-x-auto mt-[50px]">
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
                    $select_querty = $config->query("SELECT * FROM tb_guru");
                    foreach ($select_querty as $row){
                ?>
                <tr>
                    <td><?=$i++ ?></td>
                    <td><?=$row['kd_guru'] ?></td>
                    <td><?=$row['nama_guru'] ?></td>
                    <td class="text-center">
                        <div class="flex items-center gap-5 justify-center">
                            <a href="" class="text-lg text-white bg-sky-500 hover:bg-sky-700 p-1"><i class='bx bxs-edit'></i></a>
                            <a href=""><i class='bx bx-message-square-x'></i></a>
                        </div>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</section>