<?php

$xitav1 = "SELECT kelas_xi.kd_jurusan, tb_guru.nama_guru, tb_guru.kd_guru, mapel.nama_pelajaran FROM kelas_xi AS kelas_xi JOIN tb_guru AS tb_guru ON kelas_xi.kd_guru = tb_guru.kd_guru JOIN mapel AS mapel ON kelas_xi.kd_mapel = mapel.kd_mapel WHERE kd_jurusan = 'JTAV-1'";
$xitav1Data = mysqli_query($config, $xitav1);

$teachers = array();
$subjects = array();
while ($row = mysqli_fetch_assoc($xitav1Data)) {
    $teachers[$row['nama_pelajaran']] = $row['nama_guru'];
    $subjects[] = $row['nama_pelajaran'];
}

function xitav1Generate($subjects, $teachers, $days, $times)
{
    $jadwal = array();
    $hitung = array(); // Menyimpan jumlah kemunculan setiap mata pelajaran

    foreach ($days as $day) {
        $jadwal[$day] = array();
    
        // Menambahkan waktu upacara pada hari Senin
        if ($day === 'Senin') {
            $jadwal[$day][] = array(
                'subject' => 'Upacara',
                'teacher' => '',
                'time' => '07:00 - 07:30'
            );
        }
    
        $count = 0;
        $subjectCount = 0;
        $selectedSubjects = array();
    
        while ($count < 8) {
            $subjectIndex = array_rand($subjects);
            $subject = $subjects[$subjectIndex];
    
            $teacher = $teachers[$subject];
            $time = $times[array_rand($times)];
            $jadwal[$day][] = array(
                'subject' => $subject,
                'teacher' => $teacher,
                'time' => $time
            );
    
            $count++;
            $selectedSubjects[] = $subject;
    
            // Hentikan loop jika slot sudah terisi 8 atau jika sudah menambahkan 3 jenis mata pelajaran
            if ($count === 8 || count(array_unique($selectedSubjects)) === 4) {
                break;
            }

            // Tambahkan waktu istirahat setiap indeks ke-2
            if ($count === 2) {
            $jadwal[$day][] = array(
            'subject' => 'Istirahat',
            'teacher' => '',
            'time' => '09:00 - 10:00'
            );
        }
    }
    
        // Jika slot pelajaran kurang dari 9, tambahkan pelajaran yang sama hingga mencapai total 9
        while ($count < 9) {
            $subjectIndex = array_rand($selectedSubjects);
            $subject = $selectedSubjects[$subjectIndex];

            $teacher = $teachers[$subject];
            $time = $times[array_rand($times)];
            $jadwal[$day][] = array(
            'subject' => $subject,
            'teacher' => $teacher,
            'time' => $time
            );
    
        $count++;

        // Tambahkan waktu istirahat setiap indeks ke-7
                if ($count === 7) {
                $jadwal[$day][] = array(
                'subject' => 'Istirahat',
                'teacher' => '',
                'time' => '12:00 - 13:00'
                );
            }

        }
    }
    
    return $jadwal;
}


?>