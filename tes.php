<?php

// Array untuk menyimpan nama mata pelajaran
$subjects = array("Matematika", "Bahasa Inggris", "Fisika", "Kimia", "Biologi");

// Array untuk menyimpan nama kelas
$classes = array("Kelas 1", "Kelas 2", "Kelas 3", "Kelas 4", "Kelas 5");

// Array untuk menyimpan jadwal pelajaran
$schedule = array();

// Looping untuk mengisi jadwal pelajaran
foreach($classes as $class) {
  $temp = array();
  foreach($subjects as $subject) {
    $temp[] = $subject;
  }
  shuffle($temp);
  $schedule[$class] = $temp;
}

// Menampilkan jadwal pelajaran
foreach($schedule as $class => $subjects) {
  echo  "<br>".$class."<br>";
  foreach($subjects as $subject) {
    echo "<br>" . $subject;
  }
}

?>
