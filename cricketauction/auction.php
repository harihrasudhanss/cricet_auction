<?php
 include("logout.php");
 session_start();
 
if (isset($_SESSION['username']))
{
    if(isset($_POST['amountbsubmit']))
    {
        include("config.php");
        $k= $_SESSION['username'];
        $playname = $_SESSION['playername'];
        $playno =  $_SESSION['playerno'];
        $aucid =  $_SESSION['auctionid'];
        $startbit =  $_SESSION['startingbit'];
        $bitamountb = $_POST['amountb'];
        
        if(empty($bitamountb))
        {
            $error = "enter the amount";
        }
        elseif($bitamountb<$_SESSION['startingbit'])
        {
            $error = "enter amount more than starting auction amount";
        }
        elseif (!preg_match("/^[0-9]*$/",$bitamountb))
        {
            $error = "enter the valid amount";
        }
        else 
        {
            $insert = "INSERT INTO $k (player_name,player_no,auction_id,min_amount,final_amount) VALUES('$playname','$playno','$aucid','$startbit','$bitamountb'); ";
            if ($con->query($insert) === TRUE) {
                $error = "<script>alert('New record created successfully');</script>";
            } 
            else {
                $error =  "Error: " . $insert . "<br>" . $con->error;
            }
        // header("location:cricketauctionhome.php");
            
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auction</title>
    <link rel="stylesheet" href="style.css">
</head>



<body class="auction-body">
    <div class="auction-container">
        <h1>auction <?php echo $_SESSION['username'];?></h1>
        <table>
            <tr>
                <th>player name</th>
                <th>:</th>
                <td><?php echo $_SESSION['playername']; ?></td>
            </tr>
            <tr>
                <th>player no</th>
                <th>:</th>
                <td><?php echo $_SESSION['playerno']; ?></td>
            </tr>
            <tr>
                <th>position</th>
                <th>:</th>
                <td><?php echo $_SESSION['position']; ?></td>
            </tr>
            <tr>
                <th>auction starts from</th>
                <th>:</th>
                <td><?php echo "rs &nbsp". $_SESSION['startingbit']; ?></td>
            </tr>
            <tr>
                <th> your bitting amount</th>
                <th>:</th>
                <form action="" method="post">
                <td><input type="text" name="amountb"></td>
                <td><input type="submit" name="amountbsubmit" ></td>
                <?php if(isset($error)){ ?>
                    <td style="color:red"><?php echo $error;?></td>
                    <?php }?>
                        
                </form>
            </tr>
        </table>
    </div>
</body>
</html>
<?php
}
else 
{
    header("location:cricketauctionlogin.php");
}
 include("footer.php");

?>