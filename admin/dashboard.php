<section>
    <div class="wrapper-welcome mt-[50px]">
        <div class="card-welcome rounded-xl drop-shadow-lg">
            <div class="flex flex-row-reverse items-start ml-4">
                <img src="../assets/img/icon-02.png" alt="Deskripsi Gambar" class="image-welcome">
                <div class="mr-auto">
                    <h1 class="font-semibold normal-case text-3xl text-white mb-4">Halo, <?=$_SESSION['nama_admin'] ?></h1>
                    <p class="font-semibold normal-case text-md text-gray-300 mb-4">Lorem ipsum dolor sit amet
                        consectetur,
                        adipisicing elit. Sequi reprehenderit.</p>
                        <a href="index.php?hal=data-pelajaran" class="btn btn-md bg-sky-700 border-white text-white focus:bg-sky-500">Cek Jadwal</a>                    
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper mt-10 mb-10 gap-5 mx-auto">
        <div class="card bg-[#DED7FF] border border-[#6C6CE8] drop-shadow-lg">
            <p class="text-sm text-[#6C6CE8]">TAHUN AJARAN</p>
            <p class="text-xl font-semibold text-[#6C6CE8]">2023/2024</p>
        </div>
        <div class="card bg-[#D5F7E6] border border-[#64CAA5] drop-shadow-lg">
            <p class="text-sm text-[#64CAA5]">SEMESTER</p>
            <p class="text-xl font-semibold text-[#64CAA5]">GENAP</p>
        </div>
        <div class="card bg-sky-50 border border-sky-600 drop-shadow-lg">
            <p class="text-sm text-sky-600">JUMLAH GURU</p>
            <p class="text-xl font-semibold text-sky-600"><?=$total_guru ?></p>
        </div>
    </div>

    <div class="wrapper-info flex gap-5 justify-center">
        <div class="card-info bg-sky-50 border border-sky-600 rounded-xl drop-shadow-lg">
            <h1 class=" text-center font-semibold normal-case text-sky-600 text-2xl mb-8">SMK NEGERI 1 LUBUK PAKAM</h1>
            <div class="flex flex-row-reverse items-start ml-4">
                <img src="../assets/img/logo-icon.png" alt="Deskripsi Gambar" class="w-1/4 h-auto rounded-md">
                <div class="mt-20 mr-auto">
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">NPSN : </p>
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Bentuk Pendidikan : SMK</p>
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Status : Negeri</p>
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Alamat : </p>
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Kepala Sekolah :</p>
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Admin : </p>
                    <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Username : <?=$_SESSION['user_admin'] ?></p>
                </div>
            </div>
        </div>

        <div class="card-guru bg-[#D5F7E6] border border-[#64CAA5] rounded-xl drop-shadow-lg">
            <h1 class="text-center font-semibold normal-case text-2xl text-[#64CAA5] mb-8">Daftar Pengajar</h1>
            <?php
                    $i = 1; 
                    $select_querty = $config->query("SELECT * FROM tb_guru LIMIT 3");
                    foreach ($select_querty as $row){
                ?>
            <ul class="list-none mb-4 border border-[#64CAA5] p-2">
                <li class="flex">
                    <img src="../assets/img/logo-icon.png" alt="Gambar Anda" class="w-14 h-13 rounded-full mr-4">
                    <div class="flex flex-col">
                        <p class="font-semibold normal-case text-md text-[#64CAA5]"><?=$row['nama_guru'] ?></p>
                        <p class="font-medium normal-case text-sm text-[#64CAA5]">Kode Guru : <?=$row['kd_guru'] ?></p>
                    </div>
                </li>
            </ul>
            <?php } ?>

            <ul>
                <li>
                    <div class="flex flex-row-reverse items-start ml-4 text-[#64CAA5]">
                        <a class="link" href="index.php?hal=data-pengajar">See More ></a>
                </li>
            </ul>
        </div>
    </div>

</section>