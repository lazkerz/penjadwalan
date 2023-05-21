<?php

$days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum\'at', 'Sabtu'];
$jam = ['7.30 - 10.40', '10.40 - 11.50', '12.05 - 13.15'];

$xitav1Total = $config1->query("SELECT COUNT(kd_jurusan) AS total_rows FROM kelas_xi WHERE kd_jurusan = 'JTAV-1'");
$xitav1Rows = $xitav1Total->fetch_assoc();
$xitav1_TotalRows = $xitav1Rows['total_rows'];
// 
$xitav2Total = $config1->query("SELECT COUNT(kd_jurusan) AS total_rows FROM kelas_xi WHERE kd_jurusan = 'JTAV-2'");
$xitav2Rows = $xitav2Total->fetch_assoc();
$xitav2_TotalRows = $xitav2Rows['total_rows'];

?>

<table border="1" class="table w-full p-5">
    <thead>
        <tr>
            <th rowspan="2">Hari</th>
            <th rowspan="2">Waktu</th>
            <th colspan="3">XI TAV 1</th>
            <th colspan="3">XI TAV 2</th>
        </tr>
        <tr>
            <th>Kode Guru</th>
            <th>Nama Guru</th>
            <th>Mapel</th>
            <!--  -->
            <th>Kode Guru</th>
            <th>Nama Guru</th>
            <th>Mapel</th>
        </tr>
    <tbody>
        <!-- Hari -->
        <?php foreach ($days as $key => $value) { ?>
            <tr>
                <td rowspan="4">
                    <?= $value ?>
                </td>
            </tr>
            <!-- jam -->
            <?php
            // Mengacak kode guru, kode guru, mapel
            foreach ($jam as $key => $value) {
                $xitav1Num = rand(1, $xitav1_TotalRows);
                $xitav1 = $config1->query("SELECT kelas_xi.kd_jurusan, tb_guru.nama_guru, tb_guru.kd_guru, mapel.nama_pelajaran FROM kelas_xi AS kelas_xi JOIN tb_guru AS tb_guru ON kelas_xi.kd_guru = tb_guru.kd_guru JOIN mapel AS mapel ON kelas_xi.kd_mapel = mapel.kd_mapel WHERE kelas_xi.id = '$xitav1Num' AND kd_jurusan = 'JTAV-1'");
                $xitav1_row = $xitav1->fetch_assoc();
                // 
                $xitav2Num = rand(1, $xitav2_TotalRows);
                $xitav2 = $config1->query("SELECT kelas_xi.kd_jurusan, tb_guru.nama_guru, tb_guru.kd_guru, mapel.nama_pelajaran FROM kelas_xi AS kelas_xi JOIN tb_guru AS tb_guru ON kelas_xi.kd_guru = tb_guru.kd_guru JOIN mapel AS mapel ON kelas_xi.kd_mapel = mapel.kd_mapel WHERE kelas_xi.id = '$xitav2Num' AND kd_jurusan = 'JTAV-1'");
                $xitav2_row = $xitav2->fetch_assoc();
                ?>
                <tr>
                    <td>
                        <?= $value ?>
                    </td>
                    <td>
                        <?= $xitav1_row['kd_guru'] ?>
                    </td>
                    <td>
                        <?= $xitav1_row['nama_guru'] ?>
                    </td>
                    <td>
                        <?= $xitav1_row['nama_pelajaran'] ?>
                    </td>
                    <!--  -->
                    <td>
                        <?= $xitav2_row['kd_guru'] ?>
                    </td>
                    <td>
                        <?= $xitav2_row['nama_guru'] ?>
                    </td>
                    <td>
                        <?= $xitav2_row['nama_pelajaran'] ?>
                    </td>
                </tr>
            <?php } ?>
        <?php } ?>
    </tbody>
    </thead>
</table>