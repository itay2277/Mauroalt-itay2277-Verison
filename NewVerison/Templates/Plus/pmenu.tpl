	<div id="content"  class="plus">
<h1><?php echo SERVER_NAME; ?> <font color="#71D000">P</font><font color="#FF6F0F">l</font><font  color="#71D000">u</font><font color="#FF6F0F">s</font></h1>
<div id="textmenu">
   <a href="plus.php" <?php

        if(!isset($_GET['id'])) {
        	echo "class=\"selected\"";
        }
        if(isset($_GET['id']) && $_GET['id'] == 1) {
        	echo "class=\"selected\"";
        }

?>>Donazioni</a>

 | <a href="plus.php?id=2" <?php

        if(isset($_GET['id']) && $_GET['id'] == 2) {
        	echo "class=\"selected\"";
        }
        if(isset($_GET['id']) && $_GET['id'] >= 6) {
        	echo "class=\"selected\"";
        }

?>>Vantaggi</a>

 | <a href="plus.php?id=3" <?php

        if(isset($_GET['id']) && $_GET['id'] == 3) {
        	echo "class=\"selected\"";
        }
        if(isset($_GET['id']) && $_GET['id'] >= 6) {
        	echo "class=\"selected\"";
        }

?>>Gold</a>

 | <a href="plus.php?id=4" <?php

        if(isset($_GET['id']) && $_GET['id'] == 4) {
        	echo "class=\"selected\"";
        }

?>>FAQ</a>
<!-- fix RefLINK -->
 | <a href="plus.php?id=5" <?php

        if(isset($_GET['id']) && $_GET['id'] == 5) {
        	echo "class=\"selected\"";
        }
        if(isset($_GET['id']) && $_GET['id'] >= 6) {
        	echo "class=\"selected\"";
        }

?>>Affiliazione</a>

</div>