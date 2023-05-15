<?php
session_start();
require '../lib/config.php';

?>


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard | Admin</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/main.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
  <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
  <div class="navbar bg-sky-50 drop-shadow-lg flex">
    <div class="navbar-start">
      <div class="dropdown">
        <label tabindex="0" class="btn btn-ghost btn-circle">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
          </svg>
        </label>
        <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-sky-50 rounded-box w-52">
          <li><a href="index.php">Beranda</a></li>
          <li><a href="index.php?hal=data-pengajar">Data Pengajar</a></li>
          <li><a href="index.php?hal=data-jurusan">Data Jurusan</a></li>
          <li><a href="index.php?hal=data-pelajaran">Data Pelajaran</a></li >
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
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
              d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
          </svg>
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

  <main class="pb-20">
  <?php 
				if(isset($_GET["hal"])){
					if($_GET['hal'] == "data-pengajar"){
							if(@$_GET["aksi"]=="input"){
								require_once "data-pengajar-input.php";
							}else if(@$_GET["aksi"]=="edit"){
								require_once "data-pengajar-edit.php";
							}else if(@$_GET["aksi"]=="delete"){
								require_once "data-pengajar-delete.php";
							}else{
								require_once "dataPengajar.php";
							}
						}else if($_GET["hal"] == "data-jurusan"){
							if(@$_GET["aksi"]=="input"){
								require_once "data-jurusan-input.php";
							}else if(@$_GET["aksi"]=="edit"){
								require_once "data-jurusan-edit.php";
							}else if(@$_GET["aksi"]=="delete"){
								require_once "data-jurusan-delete.php";
							}else{
								require_once "dataJurusan.php";
							}
						}else if($_GET["hal"] == "data-pelajaran"){
							if(@$_GET["aksi"]=="input"){
								require_once "data-pelajaran-input.php";
							}else if(@$_GET["aksi"]=="edit"){
								require_once "data-pelajaran-edit.php";
							}else if(@$_GET["aksi"]=="delete"){
								require_once "data-pelajaran-delete.php";
							}else{
								require_once "dataPelajaran.php";
							}
						}else{
								require "dashboard.php";
							}
						}else{
							require "dashboard.php";
						}
			?>
    
  </main>


</body>

</html>