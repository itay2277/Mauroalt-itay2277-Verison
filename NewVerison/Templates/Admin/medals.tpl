<br /><br />
<form action="../GameEngine/Admin/Mods/medals.php" method="GET">
<input type="hidden" name="uid" value="<?php echo $_GET['uid']; ?>">
<table id="profile"> 
    <thead>
        <tr>
            <th colspan="6">Player Medals (<?php echo sizeof($varmedal); ?>)</th>
        </tr>
        <tr>
            <td>Category</td>
            <td>Rank</td>
            <td>Week</td>
            <td>Points</td>
            <td>Medal</td>
            <td></td>
        </tr>
    </thead>
<?php
    if(sizeof($varmedal) ==0){ ?><td colspan="5"><center>This player has no medals yet</center></td><?php }
    elseif(sizeof($varmedal) >0)
    {
        foreach($varmedal as $medal) 
        {
            $titel="Bonus";
            switch ($medal['categorie']) 
            {
                case "1":     $titel="Attackers"; break;
                case "2":     $titel="Defenders"; break;
                case "3":    $titel="Climbers"; break;
                case "4":    $titel="Robbers"; break;
                case "5":    $titel="Top 10 Att and Def"; break;
                case "6":    $titel="Top 3 Att, ".$medal['points']." in a row"; break;
                case "7":    $titel="Top 3 Def,".$medal['points']." in a row"; break;
                case "8":    $titel="Top 3 Climber, ".$medal['points']." in a row"; break;
                case "9":    $titel="Top 3 Robber, ".$medal['points']." in a row"; break;
                case "10":    $titel="Climber of the week"; break;
                case "11":    $titel="Top 3 Climber,  ".$medal['points']." in a row"; break;
                case "12":    $titel="Top 10 Attacker, ".$medal['points']." in a row"; break;
            }
            $title = $titel;
            $rank = $medal['plaats'];
            if($rank == '0') { $rank = "<p>Bonus</p>"; } else { $rank = $rank; }
            $week = $medal['week'];
            $points = $medal['points'];
			$delLink = '<a href="?p=player&medal='.$medal['id'].'&uid='.$id.'"><img src="../img/admin/del.gif" class="del"></a>';
			$delall = '<a href="?p=player&uid='.$id.'&all='.$id.'"><img src="../img/admin/del.gif" class="del"></a>';
            if($points == '') { $points = "<p>Bonus</p>"; } else { $points = $points; }
            
            echo"
                <tr>
                    <td>$title</td>
                    <td>$rank</td>
                    <td>$week</td>
                    <td>$points</td>
                    <td><img src=\"../gpack/travian_default/img/t/".$medal['img'].".jpg\"></td>
                    <td>$delLink </td>
                </tr>";
        }
        
        $averagerank = 0;
        foreach($varmedal as $medal)
        {
            $rank = $medal['plaats'];
            if($rank > 0)
            {
                if(is_numeric($rank))
                {
                    $i = $i + 1;
                    $averagerank = $averagerank + $medal['plaats'];
                }
                else
                {
                    $averagerank = $averagerank + 0;
                }
            }
        }
        $average = $averagerank / $i;
        echo "<tr><td><b>Average Rank</b></td><td>$average</td><td></td><td></td><td>Delete All</td>"; 
    }    ?>
        <td><?php echo $delall; ?></td>
    </tbody>
</table>


<?php

if(!empty($_GET['medal'])) {
	
	$medal=$_GET['medal'];
	
	
	$q = "DELETE FROM ".TB_PREFIX."medal WHERE `id` = $medal";
    mysql_query($q); 
  	
}

if(!empty($_GET['all'])) {
	$id = $_GET['all'];
	
	$q = "DELETE FROM ".TB_PREFIX."medal WHERE `userid` = $id";
	mysql_query($q); 

}


?>