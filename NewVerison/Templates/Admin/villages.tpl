<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       villages.tpl                                                ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

?>
<style>
.del {width:12px; height:12px; background-image: url(img/admin/icon/del.gif);} 
</style>  
<table id="member">
  <thead>
    <tr>
        <th>Villages</th>
    </tr>
  </thead> 

</table>
<table id="profile">    
    <tr>
        <td>Name</td>
        <td>Population</td>
        <td>Coordinates</td>
		<td></td>
    </tr>
<?php         
for ($i = 0; $i <= count($varray)-1; $i++) {
$coorproc = $database->getCoor($varray[$i]['wref']);
if($varray[$i]['capital']){
$capital = '<span class="c">(Capital)</span>';
$delLink = '<a href="#"><img src="../img/admin/del_g.gif" class="del"></a>'; 
}else{
$capital = '';
	if($_SESSION['access'] == ADMIN){
$delLink = '<a href="?p=villages&did='.$varray[$i]['wref'].'&usr='.$id.'"><img src="../img/admin/del.gif" class="del"></a>';
	}else if($_SESSION['access'] == MULTIHUNTER){
  $delLink = '<a href="#"><img src="../img/admin/del_g.gif" class="del"></a>';
	}
}

echo '
    <tr>
        <td><a href="?p=village&did='.$varray[$i]['wref'].'">'.$varray[$i]['name'].'</a> '.$capital.'</td>
        <td>'.$varray[$i]['pop'].' <a href="?action=recountPop&did='.$varray[$i]['wref'].'">Recount<a/></td>
        <td>('.$coorproc['x'].'|'.$coorproc['y'].')</td>
		<td>'.$delLink.'</td>
    </tr>  
'; 
}  

?>    
  
</table>
<?php

if(!empty($_GET['did'])) {
	
	$wref=$_GET['did'];
	$id = $_GET['usr'];
	
	$q = mysql_query("SELECT * FROM ".TB_PREFIX."vdata WHERE `wref` = $wref");
	
	mysql_query("Insert into ".TB_PREFIX."admin_log values (0,".$_SESSION['id'].",'Deleted village <b>$wref</b>',".time().")");
   
   	$q = "UPDATE ".TB_PREFIX."vdata SET `exp1` = '0' WHERE `exp1` = $wref";
    mysql_query($q);
	$q = "UPDATE ".TB_PREFIX."vdata SET `exp2` = '0' WHERE `exp2` = $wref";
    mysql_query($q);
	$q = "UPDATE ".TB_PREFIX."vdata SET `exp3` = '0' WHERE `exp3` = $wref";
    mysql_query($q);
	
    $q = "DELETE FROM ".TB_PREFIX."vdata WHERE `wref` = $wref";
	mysql_query($q);
    $q = "DELETE FROM ".TB_PREFIX."units WHERE `vref` = $wref";
    mysql_query($q);  
    $q = "DELETE FROM ".TB_PREFIX."bdata WHERE `wid` = $wref";
    mysql_query($q); 
    $q = "DELETE FROM ".TB_PREFIX."abdata WHERE `wid` = $wref";
    mysql_query($q);    
    $q = "DELETE FROM ".TB_PREFIX."fdata WHERE `vref` = $wref";
    mysql_query($q);
    $q = "DELETE FROM ".TB_PREFIX."training WHERE `vref` = $wref";
    mysql_query($q); 
    $q = "DELETE FROM ".TB_PREFIX."movement WHERE `from` = $wref";
    mysql_query($q);       
    $q = "UPDATE ".TB_PREFIX."wdata SET `occupied` = '0' WHERE `id` = $wref";
    mysql_query($q); 
	 
    header("Location: admin.php?p=player&uid=".$id."");
	//echo"done";

	
}
?>