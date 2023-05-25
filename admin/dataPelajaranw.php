<?php
$days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum\'at', 'Sabtu'];
$time = ['07.30 - 08.05', '8.05 - 08.40', '8.40 - 09.15', '09.15 - 09.50', '10.05 - 10.40', '10.40 - 11.15', '11.15 - 11.50', '12.05 - 12.40', '12.40 - 13.15'];
$index = 1;
$newValue = "Istirahat";
// array_splice($time, $index, 0, $newValue);
$subjects = ['Kode Guru', 'Nama Guru', 'Mapel'];

// $xitav1_TotalRows = countRowsInClass('JTAV-1');
// $xitav2_TotalRows = countRowsInClass('JTAV-2');

?>
<section>
    <div>
        <h3>Acak Roster</h3>
    </div>
    <div class="mt-[25px]">
        <div class="flex gap-5">
            <form action="" method="POST" onsubmit="showLoading()">
                <button class="btn gap-2" name="generate" id="generateButton">
                    <i class='bx bx-loader-circle'></i>
                    Jadwalkan
                </button>
            </form>
        </div>
        <div class="mt-[50px] overflow-x-auto">
            <table class="table w-full bordered border-2 p-5">
                <thead>
                    <tr>
                        <th rowspan="2">Hari</th>
                        <th rowspan="2">Waktu</th>
                        <th colspan="3" class="text-center">XI TAV 1</th>
                    </tr>
                    <tr>
                        <?php
                        for ($x = 1; $x <= 1; $x++) {
                            foreach ($subjects as $i => $v) {
                                echo "<th>$v</th>";
                            }
                        }
                        ?>
                    </tr>
                </thead>
                <?php
                if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                    if (isset($_POST['generate'])) {
                        // sleep(1);
                        require 'generate.php';
                    }
                }
                ?>
            </table>

        </div>
    </div>
</section>