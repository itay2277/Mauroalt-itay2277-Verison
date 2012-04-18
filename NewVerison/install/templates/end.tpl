<?php
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             TRAVIANX                                             //
//            Only for advanced users, do not edit if you dont know what are you doing!             //
//                                Made by: Dzoki & Dixie (TravianX)                                 //
//                              - TravianX = Travian Clone Project -                                //
//                                 DO NOT REMOVE COPYRIGHT NOTICE!                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
$time = time();
rename("../install/","../installed_".$time);
?>
<p>
Thanks for installing TravianX.
<h4>The installation folder is renamed.</h4>
All the files are placed. The database is created, so you can now start playing on your own Travian.
</p>
    
<?php include("../GameEngine/config.php"); ?>
<p>
<center><font size="4"><a href="<?php echo HOMEPAGE; ?>">> My TravianX homepage <</font></a></center>
</p>
</div>

