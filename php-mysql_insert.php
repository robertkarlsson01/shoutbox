<?php
include('db_connect.php');

if(isset($_POST) && !empty($_POST)) {
   $sql = "INSERT INTO shoutbox_tabel (username, comment) 
            VALUES(:username, :comment)";
    $result = $conn->prepare($sql);
    $res = $result->execute(
        array(
            ':username' => $_POST['username'],
            ':comment' => $_POST['comment']
        )
    );
    
    if($res) {
        $msg = "Ny kommentar tillagd!";
    } else {
        $msg = "Nånting gick fel...";
    }
}

$sql_select = "SELECT * FROM shoutbox_tabel";
$stmt = $conn->query($sql_select);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Kommentera</h1>
    
    <?php if(isset($msg)) { echo '<h3>' . $msg . '</h3>'; } ?>

    <form method="post" id="usrform" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <p>Namn <input type="text" name="username"></p>
        <textarea rows="4" cols="50" name="comment" form="usrform">
</textarea>
<p><button type="submit">Kommentera</button></p>

    </form>
    

<h3>Kommentarer</h3>
<ul>
    <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)) { ?>
    <li>
        <?php echo $row['username'] . ' ' .$row['comment']; ?>
    </li>
    <?php } ?>
</ul>
</body>
</html>