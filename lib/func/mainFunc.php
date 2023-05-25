<?php

// require '../config.php';

function countRowsInClass($classCode) {
    global $config;

    $query = $config->prepare("SELECT COUNT(kd_jurusan) AS total_rows FROM kelas_xi WHERE kd_jurusan = ?");
    $query->bind_param("s", $classCode);
    $query->execute();

    $result = $query->get_result();
    $rows = $result->fetch_assoc();

    return $rows['total_rows'];
}

function getXiClassData($classId, $classCode) {
    global $config;

    $query = $config->prepare("SELECT kelas_xi.kd_jurusan, tb_guru.nama_guru, tb_guru.kd_guru, mapel.nama_pelajaran FROM kelas_xi AS kelas_xi JOIN tb_guru AS tb_guru ON kelas_xi.kd_guru = tb_guru.kd_guru JOIN mapel AS mapel ON kelas_xi.kd_mapel = mapel.kd_mapel WHERE kelas_xi.id = ? AND kd_jurusan = ?");
    $query->bind_param("is", $classId, $classCode);
    $query->execute();

    $result = $query->get_result();
    $row = $result->fetch_assoc();

    return $row;
}




?>