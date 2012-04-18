<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       addResource.tpl                                             ##
##  Developed by:  mauroalt                                                    ##
##  License:       TravianX Project                                            ##
##  Thanks to:     Dzoki & itay2277(Edit troops)                               ## 
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
?>

<?php
include("../GameEngine/Lang/".LANG.".php");

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!");


$id = $_GET['did'];

if(isset($id)){
$village = $database->getVillage($id);  
$user = $database->getUserArray($village['owner'],1);  
$coor = $database->getCoor($village['wref']); 
$varray = $database->getProfileVillages($village['owner']); 
$type = $database->getVillageType($village['wref']);
$fdata = $database->getResourceLevel($village['wref']);
$units = $database->getUnit($village['wref']);


?>


<form action="../GameEngine/Admin/Mods/addResource.php" method="GET">
<input type="hidden" name="id" id="id" value="<?php echo $id; ?>">
<input type="hidden" name="admid" id="admid" value="<?php echo $_SESSION['id']; ?>">
<table id="member">

    <thead>

    <tr>

        <th colspan="2">Edit Resource</th>
		
		
    </tr></thead><tbody> 
    <tr>
		<td class="addTroops"><img src="../img/admin/r/1.gif"></img> Lumber</td>
		<td class="addTroops"><input class="addTroops" name="wood" id="wood" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font  size="1">Currently: <b><?php echo floor($village['wood']);?></b><font></td>
	</tr>
	
	<tr>
		<td><img src="../img/admin/r/2.gif"></img> Clay</td>
		<td><input class="addTroops" name="clay" id="clay" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font  size="1">Currently: <b><?php echo floor($village['clay']);?><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/admin/r/3.gif"></img> Iron</td>
		<td><input class="addTroops" name="iron" id="iron" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font  size="1">Currently: <b><?php echo floor($village['iron']);?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/admin/r/4.gif"></img> Crop</td>
		<td><input class="addTroops" name="crop" id="crop" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font size="1">Currently: <b><?php echo floor($village['crop']);?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../gpack/travian_default/img/g/g10.gif"></img> Warehouse</td>
		<td><input class="addTroops" name="warehouse" id="warehouse" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font  size="1">Currently: <b><?php echo $village['maxstore'];?></b><font></td>
	</tr>
	
	<tr>
		<td><img src="../gpack/travian_default/img/g/g11.gif"></img> Granary</td>
		<td><input class="addTroops" name="granary" id="granary" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font  size="1">Currently: <b><?php echo $village['maxcrop'];?><font></td>
	</tr>
	
	
	
	
		
	</tbody></table>
	<br />
	<div align="right"><input type="image" border="0" src="../img/admin/b/ok1.gif">
	</form>
	<?php } ?>
	<br /><br /><div align="right"><?php if(isset($_GET['d'])) { echo '<font color="Red"><b>Resource edited</font></b>';
	} ?>

