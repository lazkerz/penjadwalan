<tbody>
    <?php foreach ($days as $i => $v) { ?>
        <tr>
            <td rowspan="10">
                <?= $v ?>
            </td>
        </tr>

        <?php foreach ($time as $i => $v) {
            $xitav1 = "SELECT kelas_xi.kd_jurusan, tb_guru.nama_guru, tb_guru.kd_guru, mapel.nama_pelajaran FROM kelas_xi AS kelas_xi JOIN tb_guru AS tb_guru ON kelas_xi.kd_guru = tb_guru.kd_guru JOIN mapel AS mapel ON kelas_xi.kd_mapel = mapel.kd_mapel WHERE kd_jurusan = 'JTAV-1'";
            $result = mysqli_query($config, $xitav1);
            
            $data_array = array();
            
            // Menambahkan setiap baris hasil query ke dalam array
            while ($row = mysqli_fetch_assoc($result)) {
                $data_array[] = $row;
            }
            
            // Menghitung jumlah data dan membuat array kosong untuk data acak
            $num_data = count($data_array);
            $random_data = array();
            
            // Mengacak dan membatasi jumlah munculnya setiap nama
            $name_count = array();
            while (count($random_data) < $num_data) {
                // Mengacak urutan data dalam array
                shuffle($data_array);
            
                foreach ($data_array as $data) {
                    $name = $data['kd_guru'];
            
                    // Memeriksa apakah nama sudah mencapai batas maksimal muncul (3 kali)
                    if (!isset($name_count[$name]) || $name_count[$name] < 2) {
                        $random_data[] = $data;
                        $name_count[$name] = isset($name_count[$name]) ? $name_count[$name] + 1 : 1;
                    }
            
                    // Memeriksa apakah sudah mencapai jumlah data yang diinginkan
                    if (count($random_data) === $num_data) {
                        break 2;
                    }
                }
            }
            ?>
            <tr>
                <td>
                    <?= $v ?>
                </td>
                <td>
                    <?= $data['kd_guru'] ?>
                </td>
                <td>
                    <?= $data['nama_guru'] ?>
                </td>
                <td>
                    <?= $data['nama_pelajaran'] ?>
                </td>
            </tr>
        <?php } ?>
    <?php } ?>
</tbody>