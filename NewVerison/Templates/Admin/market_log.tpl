<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><head>

  <link REL="shortcut icon" HREF="favicon.ico"/>

	<title><?php if($_SESSION['access'] == ADMIN){ echo 'Admin Control Panel - TravianX'; } else if($_SESSION['access'] == MULTIHUNTER){ echo 'Multihunter Control Panel - TravianX'; } ?></title>    

	<link rel=stylesheet type="text/css" href="../img/admin/admin.css">

	<link rel=stylesheet type="text/css" href="../img/admin/acp.css">

	<link rel=stylesheet type="text/css" href="../img/../img.css">

		<script src="mt-full.js?423cb"  type="text/javascript"></script>

	<script src="ajax.js" type="text/javascript"></script>



	<meta http-equiv="content-type" content="text/html; charset=UTF-8">

	<meta http-equiv="imagetoolbar" content="no">

</head>
<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       admin_log.tpl                                               ##
##  Developed by:  Muroalt                                                     ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!"); ?>

<br/>
<br/>
<br/>
<img src="../../Admin/icon/printer32.png" alt="Admin Log" />
<br/>
<?php 
		
		$no = count($database->getMarketLog());
		$log = $database->getMarketLog();
		for($i=0;$i<$no;$i++) {
		$village= $database->getMarketLogVillage($log[$i]['wid']);
		$user_send= $database->getMarketLogUsers($village[0]['owner']);
		
		$riceve = substr($log[$i]['log'], -6, 6);
		$village1= $database->getMarketLogVillage($riceve);
		$user_riceve= $database->getMarketLogUsers($village1[0]['owner']);
		$admid = $log[$i]['user']?>
	
		<hr />
		<b>Log ID:</b> <?php echo $log[$i]['id']; ?><br />
		<b>Admin:</b> <?php $user = $database->getUserField($admid,"username",0);
		if($user == 'Multihunter') {
		echo '<b>MARKET CONTROL PANEL</b>';
		} else { echo '<a href="admin.php?p=player&uid='.$admid.'">'.$user.'</a>'; }
			?><br />
		<b>Player: </b><?php echo '<a href="admin.php?p=player&uid='.$village[0]['owner'].'">'.$user_send[0]['username'].'</a>';?><br />	
		<b>ID Village:</b> <?php echo $log[$i]['wid']."<b> Village Name: </b>".$village[0]['name'] ; ?><br />	
		<b>Maket:</b> <?php echo $log[$i]['log']; ?><br />
		<b>Player: </b><?php echo '<a href="admin.php?p=player&uid='.$village1[0]['owner'].'">'.$user_riceve[0]['username'].'</a>';?><br />
		<b>ID Village:</b> <?php echo $riceve."<b> Village Name: </b>".$village1[0]['name'] ; ?><br />
		<!--<b>Date:</b> <?php echo date("d.m.Y H:i:s",$log[$i]['time']+3600*2); ?><br />-->
	
	
	<?php }  ?>
		 
