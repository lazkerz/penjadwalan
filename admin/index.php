<?php 
session_start();



 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard | Admin</title>
	<link rel="stylesheet" type="text/css" href="../assets/css/dashboard.css">
	<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="navbar bg-sky-50 drop-shadow-lg" >
  <div class="navbar-start">
    <div class="dropdown">
      <label tabindex="0" class="btn btn-ghost btn-circle">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" /></svg>
      </label>
      <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-sky-50 rounded-box w-52">
        <li><a>Beranda</a></li>
        <li><a>Data Pengajar</a></li>
        <li><a>Data Jurusan</a></li>
        <li><a>Data Pelajaran</a></li>
      </ul>
    </div>
  </div>
  <div class="navbar-center">
    <a class="font-semibold normal-case text-2xl text-sky-600">Penjadwalan Mata Pelajaran</a>
  </div>
  <div class="navbar-end">
  <div class="form-control">
      <input type="text" placeholder="Search" class="input input-bordered bg-sky-100" />
    </div>
    <button class="btn btn-ghost btn-circle">
      <div class="indicator">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" /></svg>
        <span class="badge badge-xs badge-primary indicator-item"></span>
      </div>
    </button>
	<div class="dropdown dropdown-end">
      <label tabindex="0" class="btn btn-ghost btn-circle avatar">
        <div class="w-10 rounded-full">
          <img src="../assets/img/logo-icon.png" />
        </div>
      </label>
      <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-sky-50 rounded-box w-52">
        <li>
          <a class="justify-between">
            Profile
            <span class="badge">Update</span>
          </a>
        </li>
        <li><a>Logout</a></li>
      </ul>
    </div>
  </div>
  </div>
    <div class="container">
      <div class="wrapper-welcome">
        <div class="card-welcome rounded-xl drop-shadow-lg mt-[65px] ml-[55px] ">
          <div class="flex flex-row-reverse items-start ml-4">
              <img src="../assets/img/icon-02.png" alt="Deskripsi Gambar" class="image-welcome">
          <div class="mr-auto">
          <h1 class="font-semibold normal-case text-4xl text-white mb-4" >Halo, Nama</h1>
            <p class="font-semibold normal-case text-md text-gray-300 mb-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi reprehenderit.</p>
              <button class="btn btn-md bg-sky-700"><p class="text-white text-sm">Cek Jadwal</p></button>
          </div>
          </div>
        </div>
      </div>
      <div class="wrapper">
        <div class="card bg-[#DED7FF] border border-[#6C6CE8] drop-shadow-lg">
          <p class="text-sm text-[#6C6CE8]">TAHUN AJARAN</p>
          <p class="text-xl font-semibold text-[#6C6CE8]">2023/2024</p>
        </div>
        <div class="card bg-[#D5F7E6] border border-[#64CAA5] drop-shadow-lg">
          <p class="text-sm text-[#64CAA5]">SEMESTER</p>
          <p class="text-xl font-semibold text-[#64CAA5]">GENAP</p>
        </div>
        <div class="card bg-sky-50  border border-sky-600 drop-shadow-lg">
          <p class="text-sm text-sky-600">JUMLAH GURU</p>
          <p class="text-xl font-semibold text-sky-600">11</p>
        </div>
      </div>

      <div class="wrapper-info">
          <div class="card-info bg-sky-50 border border-sky-600 rounded-xl  drop-shadow-lg ml-[55px]">
              <h1 class=" text-center font-semibold normal-case text-sky-600 text-2xl mb-8">SMK NEGERI 1 LUBUK PAKAM</h1>
              <div class="flex flex-row-reverse items-start ml-4">
              <img src="../assets/img/logo-icon.png" alt="Deskripsi Gambar" class="w-1/4 h-auto rounded-md">
              <div class="mt-20 mr-auto">
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">NPSN : </p>
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Bentuk Pendidikan : </p>
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Status : </p>
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Alamat : </p>
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Kepala Sekolah : </p>
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Admin : </p>
              <p class="font-semibold normal-case text-sm text-sky-650 mb-3">Username : </p>
              </div>
              </div>
          </div>

          <div class="card-guru bg-[#D5F7E6] border border-[#64CAA5] rounded-xl  drop-shadow-lg ml-[40px]">
            <h1 class="text-center font-semibold normal-case text-2xl text-[#64CAA5] mb-8">Daftar Pengajar</h1>
            <ul class="list-none mb-4 border border-[#64CAA5] p-2">
              <li class="flex">
                <img src="../assets/img/logo-icon.png" alt="Gambar Anda" class="w-14 h-13 rounded-full mr-4">
              <div class="flex flex-col">
                <p class="font-semibold normal-case text-md text-[#64CAA5]">Suwardi</p>
                <p class="font-medium normal-case text-sm text-[#64CAA5]">Guru Matematika</p>
              </div>
              </li>
            </ul>


            <ul class="list-none mb-4 border border-[#64CAA5] p-2">
              <li class="flex">
                <img src="../assets/img/logo-icon.png" alt="Gambar Anda" class="w-14 h-13 rounded-full mr-4">
              <div class="flex flex-col">
                <p class="font-semibold normal-case text-md text-[#64CAA5]">Riska</p>
                <p class="font-medium normal-case text-sm text-[#64CAA5]">Guru Agama</p>
              </div>
              </li>
            </ul>

            <ul class="list-none mb-4 border border-[#64CAA5] p-2">
              <li class="flex">
                <img src="../assets/img/logo-icon.png" alt="Gambar Anda" class="w-14 h-13 rounded-full mr-4">
              <div class="flex flex-col">
                <p class="font-semibold normal-case text-md text-[#64CAA5]">Budi</p>
                <p class="font-medium normal-case text-sm text-[#64CAA5]">Guru </p>
              </div>
              </li>
            </ul>

            <ul>
              <li>
                <div class="flex flex-row-reverse items-start ml-4 text-[#64CAA5]">
                    <a class="link">See More ></a></li>
                </div>
            </ul>
          </div>

          </div>
      </div>
    </div>


</body>
</html>