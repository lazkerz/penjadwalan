<?php
require '../lib/func/jurusan/xitav1.php';
require '../lib/func/jurusan/xitav2.php';

$days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
$times = ['07:30 - 08:05', '08:05 - 08.40', '08.40 - 09.15', '09:15 - 09:50', '09.50 - 10:05', '10.05 - 10:40', '10.40 - 11:15', '11:15 - 11:50', '11.50 - 12:05', '12:05 - 12:40', '12:40 - 13:15'];

// Memeriksa apakah tombol diklik
if (isset($_POST['generate'])) {
    sleep(1);
    $xitav1jadwal = xitav1Generate($subjects, $teachers, $days, $times);
    $xitav2jadwal = xitav2Generate($subjects, $teachers, $days, $times);
}

?>

<section>
    <div>
        <h3>Data Pelajaran</h3>
    </div>

    <div class="overflow-x-auto mt-[50px]">
        <form method="post" onsubmit="showLoading()">
            <button type="submit" name="generate" id="generateButton" class="btn">Generate Jadwal</button>
        </form>
        <!-- XI TAV 1 -->
        <div class="mt-[20px] flex overflow-x-auto gap-4 p-3">
            <?php if (isset($xitav1jadwal)): ?>                
                <table class="table w-full">
                    <thead>
                        <tr>
                            <th>Hari</th>
                            <th>Waktu</th>
                            <th>Mata Pelajaran</th>
                            <th>Guru</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($xitav1jadwal as $day => $schedule): ?>
                            <tr>
                                <td>
                                    <?php echo $day; ?>
                                </td>
                                <td>
                                    <?php foreach ($schedule as $index => $data): ?>
                                        <?php echo $times[$index % count($times)]; ?><br>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php foreach ($schedule as $index => $data): ?>
                                        <?php echo $data['subject']; ?><br>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php foreach ($schedule as $index => $data): ?>
                                        <?php echo $data['teacher']; ?><br>
                                    <?php endforeach; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>


                </table>
            <?php else: ?>
                <table class="table w-full">
                    <thead>
                        <tr>
                            <th>Hari</th>
                            <th>Waktu</th>
                            <th>Mata Pelajaran</th>
                            <th>Guru</th>
                        </tr>
                    </thead>
                </table>
            <?php endif; ?>
            <!-- XI TAV 2 -->
            <?php if (isset($xitav2jadwal)): ?>
                <table class="table w-full">
                    <thead>
                        <tr>
                            <th>Hari</th>
                            <th>Waktu</th>
                            <th>Mata Pelajaran</th>
                            <th>Guru</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($xitav2jadwal as $day => $schedule): ?>
                            <tr>
                                <td>
                                    <?php echo $day; ?>
                                </td>
                                <td>
                                    <?php foreach ($schedule as $index => $data): ?>
                                        <?php echo $times[$index % count($times)]; ?><br>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php foreach ($schedule as $index => $data): ?>
                                        <?php echo $data['subject']; ?><br>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php foreach ($schedule as $index => $data): ?>
                                        <?php echo $data['teacher']; ?><br>
                                    <?php endforeach; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>


                </table>
            <?php endif; ?>
        </div>


    </div>

</section>