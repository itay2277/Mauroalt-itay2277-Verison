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
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!"); ?>

<?php

$logins = mysql_query("SELECT * FROM s1_login_log WHERE `ip` IN (SELECT `ip` FROM s1_login_log GROUP BY `ip`
HAVING COUNT(`ip`) > 1) ORDER BY `s1_login_log`.`ip`  DESC");



?>
</br>
<br />
<br /><img src="icon/groupofusers32.png" alt="Multi Account" />
<br />
<br />
<table id="profile">
<thead>
<tr><th colspan="3">Multi Account Detect</th></tr>
<td class="b">Player</td>
<td class="b">IP</td>
</thead>
<tbody>


     </div>
	 
<?php 
	 
	 while($multi_array = mysql_fetch_array($logins)){ 
	 //var_dump ($multi_array);
	 ?>
     <tr > 
        <td >
		<?php echo $multi_array ['uid']; ?>
        </td>
        <td > 
        <?php echo $multi_array ['ip']; ?>
		</td> 
	</tr>
<?php } ?>
</tbody>
</table>
     <div align="center">

       
     </div>
