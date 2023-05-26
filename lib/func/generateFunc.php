<?php

$days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
$times = ['07:30 - 08:05','08:05 - 08.40','08.40 - 09.15','09:15 - 09:50', '09.50 - 10:05', '10.05 - 10:40', '10.40 - 11:15', '11:15 - 11:50', '11.50 - 12:05','12:05 - 12:40', '12:40 - 13:15'];

function generateSchedule($subjects, $teachers, $days, $times)
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
        $subjectsCopy = $subjects; // Salin array mata pelajaran
        shuffle($subjectsCopy); // Acak urutan mata pelajaran

        foreach ($subjectsCopy as $subject) {
            // Periksa jumlah kemunculan mata pelajaran
            if (!isset($hitung[$subject])) {
                $hitung[$subject] = 1;
            } else {
                $hitung[$subject]++;
                // Jika mata pelajaran sudah muncul 4 kali, lewati mata pelajaran ini
                if ($hitung[$subject] > 4) {
                    continue;
                }
            }

            $teacher = $teachers[$subject];
            $time = $times[array_rand($times)];
            $jadwal[$day][] = array(
                'subject' => $subject,
                'teacher' => $teacher,
                'time' => $time
            );

            $count++;

            // Hentikan loop setelah 3 mata pelajaran ditambahkan
            if ($count === 8) {
                break;
            }

            // Tambahkan waktu istirahat setiap indeks ke-2
            if ($count === 3 || $count === 7) {
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