<?php
session_start();
require '../lib/config.php';
require '../lib/func/mainFunc.php';

$guru_query = $config->query("SELECT COUNT(tb_guru.kd_guru) AS total_guru FROM tb_guru");
$get_rows = $guru_query->fetch_assoc();
$total_guru = $get_rows['total_guru'];


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
  <style>
    .ovy {
      position: absolute;
      display: none;
      inset: 0;
      background: rgba(0, 0, 0, .5);
      z-index: 9999999;
    }

    .loading {
      position: absolute;
      left: 50%;
      margin: auto;
      transform: translate(-50%, -50%);
      top: 50%;
      margin-top: 10px;
    }

    @keyframes spin {
      to {
        transform: rotate(360deg);
      }
    }

    .loading::after {
      content: '';
      display: block;
      width: 70px;
      height: 70px;
      border-radius: 50%;
      border: 2px solid #ccc;
      border-top-color: #333;
      animation: spin 1s linear infinite;
      margin: 10px auto;
    }
  </style>
</head>

<body id="body">
<div class="ovy">
        <div id="loading" class="loading"></div>
    </div>
  <div class="navbar bg-sky-50 drop-shadow-lg flex">
    <div class="navbar-start">
      <div class="dropdown">
        <label tabindex="0" class="btn btn-ghost btn-circle">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
          </svg>
        </label>
        <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-sky-50 rounded-box w-52">
          <li><a href="index.php" class="focus:bg-sky-500">Beranda</a></li>
          <li><a href="index.php?hal=data-pengajar" class="focus:bg-sky-500">Data Pengajar</a></li>
          <li><a href="index.php?hal=data-jurusan" class="focus:bg-sky-500">Data Jurusan</a></li>
          <li><a href="index.php?hal=data-pelajaran" class="focus:bg-sky-500">Penjadwalan</a></li>
        </ul>
      </div>
    </div>
    <div class="navbar-center">
      <a class="font-semibold normal-case text-2xl text-sky-600">Penjadwalan Mata Pelajaran</a>
    </div>
    <div class="navbar-end">
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
          <li><a href="logout.php">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>

  <main class="pb-20">
    <?php
    if (isset($_GET["hal"])) {
      if ($_GET['hal'] == "data-pengajar") {
        if (@$_GET["aksi"] == "input") {
          require_once "dataPengajarInput.php";
        } else if (@$_GET["aksi"] == "edit") {
          require_once "dataPengajarEdit.php";
        } else if (@$_GET["aksi"] == "delete") {
          require_once "dataPengajarDelete.php";
        } else {
          require_once "dataPengajar.php";
        }
      } else if ($_GET["hal"] == "data-jurusan") {
        if (@$_GET["aksi"] == "input") {
          require_once "dataJurusanInput.php";
        } else if (@$_GET["aksi"] == "edit") {
          require_once "dataJurusanEdit.php";
        } else if (@$_GET["aksi"] == "delete") {
          require_once "dataJurusanDelete.php";
        } else {
          require_once "dataJurusan.php";
        }
      } else if ($_GET["hal"] == "data-pelajaran") {
        if (@$_GET["aksi"] == "input") {
          require_once "dataPelajaranInput.php";
        } else if (@$_GET["aksi"] == "edit") {
          require_once "dataPelajaranEdit.php";
        } else if (@$_GET["aksi"] == "delete") {
          require_once "dataPelajaranDelete.php";
        } else {
          require_once "dataPelajaran.php";
        }
      } else {
        require "dashboard.php";
      }
    } else {
      require "dashboard.php";
    }
    ?>

  </main>

  <script>
    function showLoading() {
      var button = document.getElementById('generateButton');
      var loading = document.getElementById('loading');
      const ovy = document.querySelector('.ovy');

      button.style.display = 'none';
      ovy.style.display = 'block';
    }
  </script>
</body>

</html>