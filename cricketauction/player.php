<?php
 include("logout.php");
//  include("config.php");
echo "<button class='dhome'><a href='cricketauctionhome.php'    >home</a></button>";
 session_start();
if (isset($_SESSION['username'])){
?>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="widtd=device-widtd, initial-scale=1.0">
    <title>Player List</title>
    <link rel="stylesheet" href="player.css">
</head>

<body class="playerlist-body" >
<?php 
    include ("config.php");
    $sql = "SELECT player_name,player_no,auction_id,min_amount FROM players";
    $result = mysqli_query($con,$sql);
    echo "<br>";
    echo "<table action='player.php'>";
    echo "<tr>";
        echo "<th>"."player name"."</th>";
        echo "<th>player no</th>";
        echo "<th>auction id</th>";
        echo "<th>minimum bit</th>";
        echo "</tr>";
    while ($row = mysqli_fetch_assoc($result))
    {
        
        echo"<tr>";

        foreach($row as $feild => $value)
        {
            echo "<td>".$value."</td>";
           
            
            
        }
        // echo "<td><input type = 'submit' name='update' value = 'update' class='update_btn'> 
        // <input type = 'submit' name='delete' value = 'delete' class='delete_btn'></td>";
        echo "</tr>";
    }
    echo "</table>";
    
    ?>
    
    

       
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