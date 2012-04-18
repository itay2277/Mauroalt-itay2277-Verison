<?php
if(!is_numeric($_SESSION['search'])) {
    echo "<p class=\"error\">The village <b>".$_SESSION['search']."</b> does not exist.</p>";
    $search = 0;
}
else {
    $search = $_SESSION['search'];
}
?>
<table cellpadding="1" cellspacing="1" id="villages" class="row_table_data">
            <thead>
                <tr>
                    <th colspan="6">The largest villages</th>
                </tr>
                <tr>
                    <td></td>
                    <td>Village</td>
                    <td>Player</td>
                    <td>Inhabitants</td>
                    <td>Coordinates</td>
                    <td>Distance</td>
                </tr>
        </thead>
        <tbody>  
            <?php
            function getDistance($coorx1, $coory1, $coorx2, $coory2) {
                $max = 2 * WORLD_MAX + 1;
                $x1 = intval($coorx1);
                $y1 = intval($coory1);
                $x2 = intval($coorx2);
                $y2 = intval($coory2);
                $distanceX = min(abs($x2 - $x1), abs($max - abs($x2 - $x1)));
                $distanceY = min(abs($y2 - $y1), abs($max - abs($y2 - $y1)));
                $dist = sqrt(pow($distanceX, 2) + pow($distanceY, 2));
                return round($dist, 1);
            }
    
            $wref2 = $village->wid;
            $coor2 = $database->getCoor($wref2);
         
        if(isset($_GET['rank'])){
        $multiplier = 1;
            if(is_numeric($_GET['rank'])) {
                if($_GET['rank'] > count($ranking->getRank())) {
                $_GET['rank'] = count($ranking->getRank())-1;
                }
                while($_GET['rank'] > (20*$multiplier)) {
                    $multiplier +=1;
                }
            $start = 20*$multiplier-19;
            } else { $start = ($_SESSION['start']+1); }
        } else { $start = ($_SESSION['start']+1); }
        if(count($ranking->getRank()) > 0) {
            $ranking = $ranking->getRank();
            for($i=$start;$i<($start+20);$i++) {
            if(isset($ranking[$i]['wref']) && $ranking[$i] != "pad") {
                    if($i == $search) {
                    echo "<tr class=\"hl\"><td class=\"ra fc\" >";
                    }
                    else {
                    echo "<tr><td class=\"ra \" >";
                    }
                    echo $i.".</td><td class=\"vil \" ><a href=\"karte.php?d=".$ranking[$i]['wref']."&amp;c=".$generator->getMapCheck($ranking[$i]['wref'])."\">".$ranking[$i]['name']."</a></td>";
                    echo "<td class=\"pla \" ><a href=\"spieler.php?uid=".$ranking[$i]['owner']."\">".$ranking[$i]['user']."</a></td>";
                    echo "<td class=\"hab\">".$ranking[$i]['pop']."</td><td class=\"aligned_coords \" ><div class=\"cox\">(".$ranking[$i]['x']."</div><div class=\"pi\">|</div><div class=\"coy\">".$ranking[$i]['y'].")</div></td>";
                    echo "<td class=\"hab\"><center>".getDistance($coor2['x'], $coor2['y'], $ranking[$i]['x'], $ranking[$i]['y'])."</center></td><tr>";
                    
                }
            }
        }
         else {
            echo "<td class=\"none\" colspan=\"5\">No villages found</td>";
        }
            ?>
            <?php
include("ranksearch.tpl");
?> 