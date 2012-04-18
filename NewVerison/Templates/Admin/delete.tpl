<?php

$villaggio=$_GET['did'];

echo $villaggio;
$q = "SELECT * FROM ".TB_PREFIX."vdata WHERE `wref` = $villaggio";
	  $result = mysql_query($q);  
	
	    	  
    if(mysql_num_rows($result) > 0){ 
	mysql_query("Insert into ".TB_PREFIX."admin_log values (0,".$_SESSION['id'].",'Deleted village <b>$wref</b>',".time().")");
    $q = "DELETE FROM ".TB_PREFIX."vdata WHERE `wref` = $wref and capital = 1;";
	  mysql_query($q, $this->connection);
    $q = "DELETE FROM ".TB_PREFIX."units WHERE `vref` = $wref;";
    mysql_query($q, $this->connection);  
    $q = "DELETE FROM ".TB_PREFIX."bdata WHERE `wid` = $wref;";
    mysql_query($q, $this->connection); 
    $q = "DELETE FROM ".TB_PREFIX."abdata WHERE `wid` = $wref;";
    mysql_query($q, $this->connection);    
    $q = "DELETE FROM ".TB_PREFIX."fdata WHERE `vref` = $wref;";
    mysql_query($q, $this->connection);
    $q = "DELETE FROM ".TB_PREFIX."training WHERE `vref` = $wref;";
    mysql_query($q, $this->connection); 
    $q = "DELETE FROM ".TB_PREFIX."movement WHERE `from` = $wref;";
    mysql_query($q, $this->connection);       
    $q = "UPDATE ".TB_PREFIX."wdata SET `occupied` = '0' WHERE `id` = $wref;";
    mysql_query($q, $this->connection);  
    header("Location: build.php?id=30&land&done=true");
	}
	
	echo"done";

?>