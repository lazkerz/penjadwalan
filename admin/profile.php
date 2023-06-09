<section>
<div class="bg-sky-50 border border-sky-600 mt-[20px] p-[2rem] d-flex w-[30%] rounded-lg m-auto shadow-lg">
<h3 class="text-xl text-center font-semibold text-sky-600 mb-8">Informasi Profil</h3>
		<div>
			<div class="flex flex-col">
			<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-sky-600">Id Admin</span>
                    <P class="text-sky-600 font-semibold"><?=$row['id_admin'] ?></P>
				</div>
				<div class="flex flex-col gap-2 mb-[1rem]">
					<span class="text-sky-600">Nama Admin</span>
                    <P class="text-sky-600 font-semibold"><?=$row['nama_admin'] ?></P>
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-sky-600">User Admin</span>
                    <p class="text-sky-600 font-semibold"><?=$user?></p>
				</div>
				<div class="flex flex-col gap-2 mb-[2rem]">
					<span class="text-sky-600">Pass Admin</span>
                    <p class="text-sky-600 font-semibold"><?=$pass?></p>
				</div>
				<div class="flex items-center gap-2 mt-3">
                    <a href="?hal=profile&aksi=edit&idadmin=<?= $row['id_admin']; ?>" class="btn bg-sky-50 border border-sky-600 text-sky-600" >Edit</a>
				</div>
			</div>
		</div>
	</div>
</section>