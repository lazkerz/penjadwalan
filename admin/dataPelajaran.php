<section>
    <div>
        <h3 class="text-xl text-sky-600 font-bold">Data Pelajaran</h3>
    </div>
    <div class="mt-[25px]">
        <div class="flex gap-5">
            <form action="" method="POST">
                <button class="btn bg-sky-50 border border-sky-600 text-sky-600" name="generate">
                    Jadwalkan
                </button>
            </form>
            
        </div>
        <div class="mb-[50px]"></div>
        <?php
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['generate'])) {
                require '../lib/generate.php';
            }
        }

        ?>
    </div>
</section>