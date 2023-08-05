<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
</head>

<?php
if(isset($_POST['logout'])) {
session_start();
session_unset();
session_destroy();
ob_start();
header("location:cricketauctionlogin.php");
ob_end_flush(); 
// include 'home.php';
//include 'home.php';
exit();
}
?>

<body>
    <form action="#" method="post">
    <input type="submit" name="logout" value ="logout"class="logout_btn">
    </form>
</body>
</html>