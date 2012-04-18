<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       gold_lod.tpl                                                ##
##  Developed by:  mauroalt                                                       ##
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
        <th>Gold Log - Ultime 10 donazioni</th>
    </tr>
  </thead> 

</table>
<table id="profile">    
    <tr>
        <td>Gold <img src="../img/admin/gold.gif" class='gold' alt='Gold' /></td>
      <td>Data </td>
    </tr>
    <tr>
<?php

$id = $_GET['uid'];
$query = mysql_query("SELECT * FROM ".TB_PREFIX."gold_log WHERE uid  = '".$id."' ORDER BY time DESC LIMIT 10")or die(mysql_error());
while ($results = mysql_fetch_array($query)) {  
$gold_log = $results[gold];  
$data = $results[time];

?>
<td>
	<?php echo $gold_log; ?>
</td>
<td>
	<?php echo $data; ?>
</td>
<tr>
<?php
}  
?>    
  
</table>
