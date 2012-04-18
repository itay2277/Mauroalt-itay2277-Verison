<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       natarstart.php                                              ##
##  Developed by:  advocaite                                                   ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!");

?>
<br/>
<br/>
<br/>
<img src="icon/wizard32.png" alt="Wonder" />
<?php $id = $_SESSION['id']; ?>
<form action="../GameEngine/Admin/Mods/natarend.php" method="POST">
<input type="hidden" name="id" id="id" value="<?php echo $id; ?>">
<br /><br /><br /><br /><br />
<center><b>Create World Wonder villages?</b></center>
<center>
  <img src="icon/g40_5.gif" alt="Wonder" width="214" height="302" /><br />
  <input class="give_gold" name="vill_amount" id="vill_amount" value="10" maxlength="4"><br/><br/><font color="black" size="2">Press 'enter' to create Wonder</center></form>
<?php
    if(isset($_GET['g'])) {

          echo '<br /><br /><font color="Red"><b>World Wonders Added</font></b>';
          }
          ?>