<?php
$days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
$times = [
    '07:30 - 08:05', '08:05 - 08:40', '08:40 - 09:15', '09:15 - 09:50',
    '09:50 - 10:05', '10:05 - 10:40', '10:40 - 11:15', '11:15 - 11:30',
    '11:30 - 12:05', '12:05 - 12:40', '12:40 - 13:15'
];
?>

<section>
    <div>
        <h3 class="text-sky-600 font-bold text-2xl">Data Penjadwalan</h3>
        <form method="post" onsubmit="showLoading()">
            <button type="submit" name="generate" id="generateButton"
                class="mt-[2rem] btn bg-sky-50 border-sky-600 text-sky-600 hover:bg-sky-600 hover:border hover:border-sky-600 hover:text-white">Generate
                Jadwal</button>
        </form>
    </div>
    <!-- Hasil -->
    <div class="mt-[4rem]">
        <?php
        if(isset($_POST['generate'])){ ?>
            <div>
                <h3 class="text-sky-600 font-bold text-2xl mb-[2rem]">TAV</h3>
                <div class="flex">
                    <?php require './xi/tav/tav-1.php';?>
                    <?php require './xii/tav/tav-1.php';?>
                </div>
            </div>
            <div>
                <h3 class="text-sky-600 font-bold text-2xl mt-[4rem] mb-[2rem]">DPIB</h3>
                <div class="flex">
                    <?php require './xi/dpib/dpib-1.php';?>
                    <?php require './xii/dpib/dpib-1.php';?>
                </div>
            </div>
            <div>
                <h3 class="text-sky-600 font-bold text-2xl mt-[4rem] mb-[2rem]">TKP</h3>
                <div class="">
                    <?php require './xi/tkp/tkp-1.php';?>
                </div>
            </div>
            <div>
                <h3 class="text-sky-600 font-bold text-2xl mt-[4rem] mb-[2rem]">TITL</h3>
                <div class="flex">
                    <?php require './xi/titl/titl-1.php';?>
                    <?php require './xii/titl/titl-1.php';?>
                </div>
            </div>
            <div>
                <h3 class="text-sky-600 font-bold text-2xl mt-[4rem] mb-[2rem]">TLAS</h3>
                <div class="flex">
                    <?php require './xi/tlas/tlas-1.php';?>
                    <?php require './xii/tlas/tlas-1.php';?>
                </div>
            </div>
            <div>
                <h3 class="text-sky-600 font-bold text-2xl mt-[4rem] mb-[2rem]">TJTL</h3>
                <div class="flex">
                    <?php require './xi/tjtl/tjtl-1.php';?>
                    <?php require './xii/tjtl/tjtl-1.php';?>
                </div>
            </div>
            <div><?php require './xi/tp/tp-1.php';?></div>  
        <?php } ?>
    </div>

</section>