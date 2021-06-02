<?php
include('db_connect.php');

$q_select = "SELECT * FROM students";
$stmt = $conn->query($q_select);
//Kör queryn mot databasen
//FETCH_ASSOC = fetch associated
while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
  echo $row['id'] . ' ' . $row['username'] . ' ' . $row['comment'] . '<br>';
}
//echo $_SERVER['REMOTE_ADDR'];
?>