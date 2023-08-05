<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cricket Auction- Login</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<?php
include ("config.php");
session_start();
if(isset($_POST["submit"]))
{
    $username = $_POST["username"];
    $_SESSION['username'] = $username;
    $userpassword = $_POST["password"];
    $dbcheck = "select username,password from team_login where username = '$username'&& password = '$userpassword';";
    $dbresult = mysqli_query($con,$dbcheck);
    if (mysqli_num_rows($dbresult)>0){
        while ($row = mysqli_fetch_assoc($dbresult)){
            //  $_SESSION['username'] = $username;
            header("location:cricketauctionhome.php");
        }
    }else {
        $error = "Invalid username or Password";
    }
}

    
?>
<body class="login_body">
    
<form action="cricketauctionlogin.php" method="post" class="login_form">
<div class="headon" >Login</div>
    <table class="login_table" >
        <tr>
            <th class="username_label">User name </th>
            <td class="username_feild"><input type= "text" name="username" autocomplete="off" autofill="off" ></td>
            
        </tr>
        <tr>
            <th class="password_label" >Password</th>
            <td class="password_feild"><input type="password" name="password"></td>
            
        </tr>
        <tr>
            <td></td>
           <td> <input type="submit" name="submit" class="submit"</td>
        </tr>
        <tr>
            <!-- <td></td> -->
           <?php 
           if(isset($error))
           {
            echo "<tr>";
            echo "<td class='error'>".$error."</td>";
            echo "</tr>";
           }
           ?>
       
        
        
    </table>
</form>

</body>

</html>

</body>
</html>