<?php
$xititl1 = "SELECT kelas_xi.jenis_kelas, tb_guru.nama_guru, tb_guru.kd_guru, mapel.nama_pelajaran FROM kelas_xi AS kelas_xi JOIN tb_guru AS tb_guru ON kelas_xi.kd_guru = tb_guru.kd_guru JOIN mapel AS mapel ON kelas_xi.kd_mapel = mapel.kd_mapel WHERE jenis_kelas = 'TITL-1'";
$xititl1Data = mysqli_query($config, $xititl1);
$subjects = array();

if ($xititl1Data->num_rows > 0) {
    // Memasukkan data ke dalam array
    while ($row = $xititl1Data->fetch_assoc()) {
        $subject = $row['nama_pelajaran'];
        $teacher = $row['nama_guru'];
        $subjects[$subject] = $teacher;
    }
} else {
    echo "Tidak ada data yang ditemukan.";
}

// Function to randomly select an item from an array
function get_titl1($array)
{
    $index = array_rand($array);
    return $array[$index];
}

// Initialize the schedule
$schedule = array();

// Generate the schedule for each day
foreach ($days as $day) {
    $daySchedule = array();
    $selectedSubjects = array(); // Array to store selected subjects

    foreach ($times as $time) {
        if ($day == 'Jumat' && $time == '11:15 - 11:50') {
            break; // Skip the time slot after 11:50 - 12:05 on Friday
        }
        if ($day == 'Sabtu' && $time == '12:40 - 13:15') {
            break; // Skip the time slot after 12:40 - 13:15 on Saturday
        }

        if ($day == 'Senin' && $time == '07:40 - 08:05') {
            $subject = 'Upacara'; // Set Upacara on Monday 07:40 - 08:05
            $teacher = '';
        } elseif (($time == '09:50 - 10:05' || $time == '11:15 - 11:30') && $day != 'Jumat') {
            $subject = 'Istirahat'; // Set Istirahat on other days except Friday
            $teacher = '';
        } elseif ($time == '09:50 - 10:05' && $day == 'Jumat') {
            $subject = 'Istirahat';
            $teacher = ''; // Skip the time slot 09:50 - 10:05 on Friday
        } else {
            // Randomly select a subject, but check if it has reached the maximum limit
            if (count($selectedSubjects) >= 3) {
                $subject = get_titl1($selectedSubjects); // Select from the already selected subjects
            } else {
                $subject = get_titl1(array_keys($subjects)); // Select from all subjects
                $selectedSubjects[] = $subject;
            }

            $teacher = $subjects[$subject]; // Get the teacher for the selected subject
        }

        $daySchedule[] = [
            'time' => $time,
            'subject' => $subject,
            'teacher' => $teacher
        ];
    }

    $schedule[$day] = $daySchedule;
} ?>

<table class="tb-gen w-full text-[.85rem] text-[#666] font-medium pt-3">
    <thead class="text-white">
        <tr>
            <th colspan="4" class="bg-sky-600">XI TITL 1</th>
        </tr>
        <tr>
            <th class="bg-sky-600">Hari</th>
            <th class="bg-sky-600">Waktu</th>
            <th class="bg-sky-600">Mata Pelajaran</th>
            <th class="bg-sky-600">Guru</th>
        </tr>
    </thead>
    <tbody class="bg-white">

        <?php
        foreach ($schedule as $day => $daySchedule) {
            echo '<tr>';
            echo '<td rowspan="' . count($daySchedule) . '">' . $day . '</td>';

            foreach ($daySchedule as $key => $slot) {
                if ($key > 0) {
                    echo '<tr>';
                }

                echo '<td>' . $slot['time'] . '</td>';
                echo '<td>' . $slot['subject'] . '</td>';

                if ($slot['subject'] != 'Istirahat') {
                    echo '<td>' . $slot['teacher'] . '</td>';
                } else {
                    echo '<td>-</td>'; // Display a hyphen for Istirahat instead of the teacher's name
                }

                echo '</tr>';
            }
        } ?>

    </tbody>
</table>