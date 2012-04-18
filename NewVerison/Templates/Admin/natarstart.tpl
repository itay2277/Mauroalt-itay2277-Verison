<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       natarstart.php                                                    ##
##  Developed by:  advocaite                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!");

?>
<br/>
<br/>
<br/>
<img src="icon/favbadd32.png" alt="Natar" />
<?php $id = $_SESSION['id']; ?>
<form action="../GameEngine/Admin/Mods/create_account.php" method="POST">
<input type="hidden" name="id" id="id" value="<?php echo $id; ?>">
<br /><br /><br /><br /><br /><br /><br /><br /><br />
<center><b>Create Natar Capital?</b></center>
<center>
  <img src="icon/typeww.gif" alt="Natar" width="490" height="148" /><br />
  <input class="give_gold" name="vill_amount" id="vill_amount" value="88" maxlength="4">
<br/><br/>
<font color="black" size="2"> Press 'enter' to create Natar
</center></form>
<?php
    if(isset($_GET['g'])) {

          echo '<br /><br /><font color="Red"><b>Capital Added</font></b>';
          }
          ?>