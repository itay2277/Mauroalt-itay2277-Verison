<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       admin_create.php                                            ##
##  Developed by:  mauroalt                                                    ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
		include_once ("GameEngine/Account.php");
        
        mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
        mysql_select_db(SQL_DB);

		
		
//controllo
	if(isset($_GET['user'])){
		$user=($_GET['user']);
        $query= "UPDATE " . TB_PREFIX . "users SET `access` = '9' WHERE `username` ='$user'";
		$update_user = mysql_query($query);
		
		}
        
       

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title><?php echo SERVER_NAME ?></title>
    <link REL="shortcut icon" HREF="favicon.ico"/>
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<script src="mt-full.js?0ac36" type="text/javascript"></script>
	<script src="unx.js?0ac36" type="text/javascript"></script>
	<script src="new.js?0ac36" type="text/javascript"></script>
	<link href="<?php echo GP_LOCATE; ?>lang/en/lang.css?f4b7c" rel="stylesheet" type="text/css" />
	<link href="<?php echo GP_LOCATE; ?>lang/en/compact.css?f4b7c" rel="stylesheet" type="text/css" />
	<?php
	if($session->gpack == null || GP_ENABLE == false) {
	echo "
	<link href='".GP_LOCATE."travian.css?e21d2' rel='stylesheet' type='text/css' />
	<link href='".GP_LOCATE."lang/en/lang.css?e21d2' rel='stylesheet' type='text/css' />";
	} else {
	echo "
	<link href='".$session->gpack."travian.css?e21d2' rel='stylesheet' type='text/css' />
	<link href='".$session->gpack."lang/en/lang.css?e21d2' rel='stylesheet' type='text/css' />";
	}
	?>
	<script type="text/javascript">

		window.addEvent('domready', start);
	</script>
</head> 
<body class="v35 ie ie8">
<div class="wrapper">
<img style="filter:chroma();" src="img/x.gif" id="msfilter" alt="" />
<div id="dynamic_header">
	</div>
<?php include("Templates/header.tpl"); ?>
<div id="mid">
<?php include("Templates/menu.tpl"); ?>

<div id="content"  class="login">
<?php
if(isset($_GET['user'])){?>
<h1><br/>Create Admin</h1><br />
Done!<br />
<?php echo "Now ".$user." is a Admin"; ?>

<?php
} else{ ?><h1><br/>Create Admin</h1><br />

Insert name user:
<form action="admin_create.php" method="GET" >
<input name="user" type="text" />
<input name="invia" type="submit" value="Ok">
</form>

<?php } ?></div>
<div id="side_info" class="user">
</div>

<div class="clear"></div>
			</div>

			<div class="footer-stopper user"></div>
            <div class="clear"></div>
            
<?php include("Templates/footer.tpl"); ?>
<div id="ce"></div>
</body>
</html>
<?php @mysql_close(); ?>
