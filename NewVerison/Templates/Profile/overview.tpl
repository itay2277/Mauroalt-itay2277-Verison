<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       overview.tpl                                                ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

$ranking->procRankReq($_GET);
$displayarray = $database->getUserArray($_GET['uid'],1);
 

$varmedal = $database->getProfileMedal($_GET['uid']);

$profiel="".$displayarray['desc1']."".md5(skJkev3)."".$displayarray['desc2']."";
require("medal.php");
$profiel=explode("".md5(skJkev3)."", $profiel);

$varray = $database->getProfileVillages($_GET['uid']);
$totalpop = 0;
foreach($varray as $vil) {
	$totalpop += $vil['pop'];
}

		include_once ("GameEngine/config.php");
        
        mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
        mysql_select_db(SQL_DB);
		
		$user =($_GET['uid']);
		$query = mysql_query("SELECT * FROM ".TB_PREFIX."uavatar WHERE uid  = '".$user."'")or die(mysql_error());
		$check = mysql_num_rows($query);

		if ($check==0){
			$avatar="noavatar.gif";
		}	
		else{
		//$query1 =  mysql_query("SELECT * FROM ".TB_PREFIX."uavatar WHERE uid = '".$user."'")or die(mysql_error());
		$avatar1 = mysql_fetch_array($query);
		$avatar=$avatar1['avatar'];
		}
			

?>
<h1>Player profile</h1>

<?php 
if($_GET['uid'] == $session->uid) { include("menu.tpl"); } ?>
<table id="profile" cellpadding="1" cellspacing="1" >
  <!--DWLayoutTable-->
    <thead>
    <tr>
        <th height="21" colspan="2" valign="top">Player <?php echo $displayarray['username']; ?></th>
      </tr>
    <tr>
        <td width="87" height="21">Details</td>
        <td width="71" valign="top">Description</td>
      </tr>
    </thead><tbody>
    <tr>
        <td height="27" align="center" valign="middle" ><?php echo "<div align=\"center\"><img src=\"avatar/".$avatar."\" width=\"90\" height=\"100\" /></div>"; ?></td>
      <td rowspan="2" valign="top" class="desc1" >
      <div><?php echo nl2br($profiel[1]); ?>            </div>      </div>        </td>
      </tr>
    <tr>
        <td height="117" class="details">
            <table cellpadding="0" cellspacing="0">
 
<?php if($displayarray['access']==BANNED){ echo "<tr><td colspan='2'><center><b>Banned</b></center></td></tr>"; } ?>

            <tr>

                <th>Rank</th>
                <td><?php echo $ranking->searchRank($displayarray['username'],"username"); ?></td>
            </tr>
            <tr>
                <th>Tribe</th>
                <td><?php 
                if($displayarray['tribe'] == 1) {
                echo "Roman";
                }
                else if($displayarray['tribe'] == 2) {
                echo "Teutons";
                }
                else if($displayarray['tribe'] == 3) {
                echo "Gauls";
                }
                else if($displayarray['tribe'] == 4) {
                echo "Nature";
                
                }else if($displayarray['tribe'] == 5) {
                echo "Natars";
                }                ?></td>
            </tr>

            <tr>
                <th>Alliance</th>
                <td><?php if($displayarray['alliance'] == 0) {
                echo "-";
                }
                else {
                $displayalliance = $database->getAllianceName($displayarray['alliance']);
                echo "<a href=\"allianz.php?aid=".$displayarray['alliance']."\">".$displayalliance."</a>";
                } ?></td>
            </tr>
            <tr>
                <th>Villages</th>
                <td><?php echo count($varray);?></td>
            </tr>
            <tr>
                <th>Population</th>
                <td><?php echo $totalpop; ?></td>
            </tr>
            <?php 
            //Date of Birth
            if(isset($displayarray['birthday']) && $displayarray['birthday'] != 0) {
            $age = date('Y') - substr($displayarray['birthday'],0,4);
                if ((date('m') - substr($displayarray['birthday'],5,2)) < 0){$age --;}
                elseif ((date('m') - substr($displayarray['birthday'],5,2)) == 0){
                    if(date('d') < substr($displayarray['birthday'],8,2)){$age --;}
                }
            echo "<tr><th>Age</th><td>$age</td></tr>";
            }
            //Gender
            if(isset($displayarray['gender']) && $displayarray['gender'] != 0) {
            $gender = ($displayarray['gender']== 1)? "Male" : "Female";
            echo "<tr><th>Gender</th><td>".$gender."</td></tr>";
            }
            //Location
            if($displayarray['location'] != "") {
            echo "<tr><th>Location</th><td>".$displayarray['location']."</td></tr>";
            }
            ?>
            <tr>
                <td colspan="2" class="empty"></td>
            </tr>
            <tr>
                <?php if($_GET['uid'] == $session->uid) {
                echo "<td colspan=\"2\"> <a href=\"spieler.php?s=1\">&raquo; Change profile</a></td>";
                } else {
             echo "<td colspan=\"2\"> <a href=\"nachrichten.php?t=1&amp;id=".$_GET['uid']."\">&raquo; Write message</a></td>";
             }
                ?>                
            </tr>
            <!--<tr><td colspan="2"><a href="nachrichten.php?t=1&id=0"><font color="Red">&raquo; Report Player</font></a></td></tr>-->
            <tr>
                            <td colspan="2" class="desc2">
                                <div class="desc2div"><?php echo nl2br($profiel[0]); ?></div>                            </td>
              </tr>
            </table>        </td>
      </tr>
    </tbody>
</table>
<table cellpadding="1" cellspacing="1" id="villages">
    <thead>
    <tr>
        <th colspan="4">Villages</th>
    </tr>
    <tr>
        <td>Name</td>
        <td>Inhabitants</td>
        <td>Coordinates</td>
        <td>Distance</td>
    </tr>
    </thead><tbody>
    
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
    
    foreach($varray as $vil) {
        $coor = $database->getCoor($vil['wref']);
        echo "<tr><td class=\"nam\"><a href=\"karte.php?d=".$vil['wref']."&amp;c=".$generator->getMapCheck($vil['wref'])."\">".$vil['name']."</a>";
        if($vil['capital'] == 1) {
            echo "<span class=\"none3\"> (capital)</span>";
        }
        echo "</td>";
        echo "<td class=\"hab\">".$vil['pop']."</td><td class=\"aligned_coords\">";
        echo "<div class=\"cox\">(".$coor['x']."</div><div class=\"pi\">|</div><div class=\"coy\">".$coor['y'].")</div></td>";
        echo "<td class=\"hab\"><center>".getDistance($coor2['x'], $coor2['y'], $coor['x'], $coor['y'])."</center></td><tr>";
    }
    ?>
        </tbody></table>