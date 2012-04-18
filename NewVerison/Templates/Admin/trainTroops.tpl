<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       Train.tpl                                                   ##
##  Developed by:  mauroalt                                                    ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
?>

<?php

include("../GameEngine/Lang/".LANG.".php");

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!");


$id = $_GET['did'];

if(!empty($_GET['train'])) {
	
	$train=$_GET['train'];
	
	
	$q = "DELETE FROM ".TB_PREFIX."training WHERE `id` = $train";
    mysql_query($q); 
  	
}

if(!empty($_GET['all'])) {
	$id = $_GET['all'];
	
	$q = "DELETE FROM ".TB_PREFIX."training WHERE `vref` = $id";
	mysql_query($q); 

}



if(isset($id)){
$village = $database->getVillage($id);  
$user = $database->getUserArray($village['owner'],1);  
}
$time = time();
?>



<br /><br />
<div><strong>User name</strong>: <?php echo $user['username']; ?> </div>
<div><strong>Village Name</strong>: <?php echo $village['name']; ?> </div>
<div><strong>Trib&ugrave;</strong>: <?php 
 
switch 	($user['tribe'])
		{

   case "1":
       echo "Romani";
       break;
   case "2":
       echo "Teutoni";
       break;
   case "3":
       echo "Galli";
       break;
   case "4":
       echo "Animali";
       break;
		}		
 ?> </div>

<table id="member"> 
    <thead>
        <tr>
            <th colspan="4">Fantery Train Troops</th>
        </tr>
        <tr>
            <td class="on">id</td>
            <td class="hab">Type</td>
            <td class="on">Quantity</td>
            <td class="on"></td>
        </tr>
<?php

$fquery =  mysql_query("SELECT * FROM ".TB_PREFIX."training WHERE vref = $id AND timestamp < $time");
$row =  mysql_num_rows($fquery);
if ($row <> 0){

	while($fantery = mysql_fetch_array($fquery)){
		
?>

		<tr>
					
			<td class="on">
			<?php echo $fantery [id]; ?>
			</td>
				<?php
						switch ($user['tribe'])
								{
								case "1": 
									?>
									<td>
										<?php
										switch ($fantery['unit'])
											{
											case "1":
												echo"<img src=\"../img/un/u/1.gif\"></img>";
												break;
											case "2":
												echo"<img src=\"../img/un/u/2.gif\"></img>";
												break;
											case "3":
												echo"<img src=\"../img/un/u/3.gif\"></img>";
												break;
											case "4":
												echo"<img src=\"../img/un/u/4.gif\"></img>";
												break;
											case "5":
												echo"<img src=\"../img/un/u/5.gif\"></img>";
												break;
											case "6":
												echo"<img src=\"../img/un/u/6.gif\"></img>";
												break;
											case "7":
												echo"<img src=\"../img/un/u/7.gif\"></img>";
												break;
											case "8":
												echo"<img src=\"../img/un/u/8.gif\"></img>";
												break;
											} ?>
											</td>
										<?php
									break;
								case "2": 
									?>
									<td>
										<?php
										switch ($fantery['unit'])
											{
											case "11":
												echo"<img src=\"../img/un/u/11.gif\"></img>";
												break;
											case "12":
												echo"<img src=\"../img/un/u/12.gif\"></img>";
												break;
											case "13":
												echo"<img src=\"../img/un/u/13.gif\"></img>";
												break;
											case "14":
												echo"<img src=\"../img/un/u/14.gif\"></img>";
												break;
											case "15":
												echo"<img src=\"../img/un/u/15.gif\"></img>";
												break;
											case "16":
												echo"<img src=\"../img/un/u/16.gif\"></img>";
												break;
											case "17":
												echo"<img src=\"../img/un/u/17.gif\"></img>";
												break;
											case "18":
												echo"<img src=\"../img/un/u/18.gif\"></img>";
												break;
											} ?>
											</td>
										<?php
									break;
									
								case "3": 
										?>
										<td>
										<?php
										switch ($fantery['unit'])
											{
											case "21":
												echo"<img src=\"../img/un/u/21.gif\"></img>";
												break;
											case "22":
												echo"<img src=\"../img/un/u/22.gif\"></img>";
												break;
											case "23":
												echo"<img src=\"../img/un/u/23.gif\"></img>";
												break;
											case "24":
												echo"<img src=\"../img/un/u/24.gif\"></img>";
												break;
											case "25":
												echo"<img src=\"../img/un/u/25.gif\"></img>";
												break;
											case "26":
												echo"<img src=\"../img/un/u/26.gif\"></img>";
												break;
											case "27":
												echo"<img src=\"../img/un/u/27.gif\"></img>";
												break;
											case "28":
												echo"<img src=\"../img/un/u/28.gif\"></img>";
												break;
											} ?>
											</td>
										<?php
									
									break;
							}
							
					?>
			<td class="on">
				<?php echo $fantery ['amt']; ?>
			</td>
			<td class="on">
			<a href="?p=trainTroops&did=<?php echo $id ."&train=".$fantery ['id'];?>"><img src="../img/admin/del.gif" class="del"></a>
			</td>
		</tr>
		
	<?php }  ?>
	<tr>
			<td colspan="3">
			cancella tutto
			</td>
			<td>
		<a href="?p=trainTroops&did=<?php echo $id; ?>&all=<?php echo $id; ?>"><img src="../img/admin/del.gif" class="del"></a>
			</td>
		</tr>
<?php 
} else { ?>	
		<tr>
			<td colspan="4">
				Non ci sono truppe in addestramento
			</td>
		</tr>
<?php } ?>

    </thead>

</table>


<?php



?>