<?php
 include("logout.php");
 include("config.php");
 session_start();
if (isset($_SESSION['username'])){
    if(isset($_POST["home_player_submit"]))
    {
           $playername = $_POST["home_player_name"];
            $dbcheck = "select * from players where player_name='$playername';";
            $dbresult = mysqli_query($con,$dbcheck);
            
            if (mysqli_num_rows($dbresult)>0){
                while ($row = mysqli_fetch_assoc($dbresult)){
                    $player_name = $row['player_name'];
                    $playerno = $row['player_no'];
                    $auctionno = $row['auction_id'];
                    $startingbit = $row['min_amount'];
                    $position = $row['position'];
                    
                }
            }else {
                $error = "enter the correct player name";
            }
        }
        
            
       

    
   
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="home_body">
    <div class="home_container">
        <form action="#" method="post">
            <table>
                <tr>
                    <td style="font-weight:bold;">enter the player name </td>
                </tr>
                <tr>
                    <td><input type="text" name="home_player_name" placeholder="player name"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="home_player_submit" class="submit_btn"></td>
                </tr>
                <?php if (isset($error)){
                    echo "<tr>";
                    echo "<td>";
                    echo $error;
                    echo "</td>";
                    echo "</tr>";
                } 
                // else {
                //     header("location:#details-section");
                // }
                ?>
            </table>
        </form>
    </div>
    <button class="play-all"><a href="player.php">all players</a></button>
    <?php 
    if(isset($_POST['home_player_submit'])){
        ?>

    <div class="details-section">
        <table>
            <tr>
                <th> player name </th>
                <th>:</th>
                <td><?php echo $player_name;?></td>
            </tr>
            <tr>
                <th> player no </th>
                <th>:</td>
                <td><?php echo $playerno;?></td>
            </tr>
            <tr>
                <th> Auction id </td>
                <th>:</th>
                <td><?php echo $auctionno;?></td>
            </tr>
            <tr>
                <th> bit starting from </th>
                <th>:</th>
                <td><?php echo $startingbit;?></td>
            </tr>
            <tr>
                <th> position </th>
                <th>:</th>
                <td><?php echo $position;?></td>
            </tr>
           
            <tr>
                <th></th>
                <th><button class="bf" ><a href="auction.php" target="_blank" rel="noopener noreferrer">start bitting</a></button></th>
                <td></td>
            </tr>
        </table>
    </div>
</body>
</html>
<?php
    // sessions
    $_SESSION['playername']=$player_name;
    $_SESSION['position']= $position;
    $_SESSION['startingbit']= $startingbit;
    $_SESSION['playerno'] = $playerno;
    $_SESSION['auctionid'] = $auctionno;
    }
}
else 
{
    header("location:cricketauctionlogin.php");
}
 include("footer.php");

?>