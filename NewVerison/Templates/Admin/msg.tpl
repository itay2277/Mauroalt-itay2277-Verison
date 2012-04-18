<?php 
################################################################################# 
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ## 
## --------------------------------------------------------------------------- ## 
##  Filename       msg.tpl                                                     ## 
##  Developed by:  Dzoki                                                       ## 
##  Improved:      aggenkeech                                                  ## 
##  License:       TravianX Project                                            ## 
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ## 
##                                                                             ## 
################################################################################# 
$msg = $database->getMessage($_GET['nid'],3);; 
if($msg){ 
?> 

<link href="../../gpack/travian_default/lang/en/compact.css?f4b7c" rel="stylesheet" type="text/css"> 
<div id="content" class="messages"> 
<h1>Messages</h1> 
<br /> 

<table id="member" style="width:80%"> 
  <thead> 
    <tr> 
        <th colspan="2">IGM Details</th> 
    </tr> 
  </thead>  
    <tbody><tr> 
        <td>Sender:</td> 
        <td><a href="admin.php?p=player&uid=<?php echo $database->getUserField($msg[0]['owner'],'id',0); ?>"><?php echo $database->getUserField($msg[0]['owner'],'username',0); ?></a></td> 
    </tr> 
    <tr> 
        <td>Recipient:</td> 
        <td><a href="admin.php?p=player&uid=<?php echo $database->getUserField($msg[0]['target'],'id',0); ?>"><?php echo $database->getUserField($msg[0]['target'],'username',0); ?></a></td> 
    </tr> 
    <tr> 
        <td>Viewed</td> 
        <td><?php  
             $viewed = $database->getUserField($msg[0]['viewed'],'id',0); 
             if($viewed == 0){ echo "<font color=\"red\">This message has not been read yet</font>"; } 
             if($viewed == 1){ echo "<font color=\"blue\">This message has been viewed</font>"; } 
        ?></td> 
    </tr> 
    <tr> 
         <td>Archived</td> 
         <td><?php  
              $archived = $database->getUserField($msg[0]['archive'],'id',0);  
              if($archived == 0){ echo "<font color=\"red\">This message has not been archived</font>"; } 
              if($archived == 1){ echo "<font color=\"blue\">This message has been archived</font>"; } 
         ?></td> 
   </tbody> 
</table><br /><br /><br /> 

<div id="read_head" class="msg_head"></div> 
<div id="read_content" class="msg_content"> 

<img src="../../gpack/travian_default/lang/en/msg/block_bg24a.gif" id="label" class="read" alt=""> 
<div id="heading"> 
    <div><a href="admin.php?p=player&uid=<?php echo $database->getUserField($msg[0]['owner'],'id',0); ?>"><?php echo $database->getUserField($msg[0]['owner'],'username',0); ?></a></div> 
    <div><?php echo $msg[0]['topic'];?></div> 
</div> 

<div id="time"> 
       <div><?php echo date('d.m.y',$msg[0]['time']);?></div> 
       <div><?php echo date('H:i:s',$msg[0]['time']);?></div> 
</div>   

<div class="clear"></div> 
<div class="line"></div> 
<div class="message" style="margin-top: 10px;"> 
<?php echo $msg[0]['message'];?> 
</div>  
</div> 
<div id="read_foot" class="msg_foot"></div> 
</form> 
</div> 
<?php 
}else{ echo "Message id ".$_GET['nid']." wasn´t found."; } 
?> 