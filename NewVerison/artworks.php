<?php


include("GameEngine/Village.php");
include ("extra_mysql.php");
$start = $generator->pageLoadTimeStart();
if(isset($_GET['newdid'])) { $_SESSION['wid'] = $_GET['newdid']; header("Location: ".$_SERVER['PHP_SELF']);}
else {$building->procBuild($_GET);}?>

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
<script src="mt-full.js?0faaa" type="text/javascript"></script>
<script src="unx.js?0faaa" type="text/javascript"></script>
<script src="new.js?0faaa" type="text/javascript"></script>
<link href="<?php echo GP_LOCATE; ?>lang/en/lang.css?f4b7c" rel="stylesheet" type="text/css" />
<link href="<?php echo GP_LOCATE; ?>lang/en/compact.css?f4b7c" rel="stylesheet" type="text/css" />
<?php if($session->gpack == null || GP_ENABLE == false) {
echo "
<link href='".GP_LOCATE."travian.css?e21d2' rel='stylesheet' type='text/css' />
<link href='".GP_LOCATE."lang/en/lang.css?e21d2' rel='stylesheet' type='text/css' />";
} else {
echo "
<link href='".$session->gpack."travian.css?e21d2' rel='stylesheet' type='text/css' />
<link href='".$session->gpack."lang/en/lang.css?e21d2' rel='stylesheet' type='text/css' />";}?>
<script type="text/javascript">window.addEvent('domready', start);</script>
</head>
<body class="v35 ie ie8">
<div class="wrapper">
<img style="filter: chroma();" src="img/x.gif" id="msfilter" alt="">
<div id="dynamic_header">
</div>
<?php include("Templates/header.tpl"); ?>
<div id="mid">
<?php include("Templates/menu.tpl"); ?>
<div id="content"  class="village2">
<br/>
<h2><?php echo G_ARTWORK; ?> Gold per 1 Opera</h2><br/><br/>

<form action="artworks.php" method="POST"> 

<table border="0">
<tr><td>Username UID</td><td>
<input type="text" name="username" maxlength="60" disabled="disabled" value="<?php echo $session->uid; ?>">
</td></tr>



<tr><td><img src="addons/images/artwork.png"></td><td>
<input type="text" name="artwork" maxlength="60" value="0" size="2">
</td></tr>

<tr><td colspan="2"  align="center"> 
<input type="submit" name="submit" value="Calcola" >

</td></tr> 
</table>

<?php
if(isset($_GET['username'])){

	
	$TotalCost= $_GET['TotalCost'];
	$cp= $_GET['cp'];
	$user= $_GET['username'];
	$village= $_GET['village'];
	
	mysql_query("UPDATE ".TB_PREFIX."users SET `gold` = `gold`- '$TotalCost' WHERE id =".$user."")or die(mysql_error());         
	mysql_query("UPDATE ".TB_PREFIX."vdata SET `cp` = `cp`+ '$cp' WHERE wref =".$village."")or die(mysql_error());  
	
	echo "Acquisto completato";
}
?>
</form>



<?php
if(isset($_POST['submit'])){

$artwork= $_POST['artwork'];

$Total = $artwork;

if($Total == 0){
	$TotalCost=0;
	}
	else{
	$TotalCost= $Total*50;
	$cp=$Total*2500;
	}
	
	$sql = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE id  = '".$session->uid."'")or die(mysql_error());
	while($row = mysql_fetch_array($sql)){
		$gold = $row["gold"];
	}
if ($gold < $TotalCost){
		echo "<br/>Mancanza di  gold! Non hai ".$TotalCost." gold per completare l'aquisto";
	}
	else
	{
?>
<form action="artworks.php" method="GET"> 
<p>
<table>
	<tr>
    	<th>
        	Costo totale
        </th>
     </tr>
     <tr>
    	<td>   	
            <input type="hidden" name="username" maxlength="60"  value="<?php echo $session->uid; ?>">
     	</td>
    </tr>
   
	<tr>
    	<td>
        	<input type="hidden" name="artwork" maxlength="60" value="<?php echo $artwork; ?>" >
        </td>
		
    </tr>
    <tr>
    	<td>
        	<input type="hidden" name="cp" maxlength="60" value="<?php echo $cp; ?>" >
        </td>
		
    </tr>
     <tr>
     	<td>
        	Totale Opere: <img src="addons/images/artwork1.png"> <?php echo $Total; ?> <br/>Totale Gold: <img src="img/admin/gold.gif"> <?php echo $TotalCost; ?> Punti cultura Totali : <?php echo $cp; ?>
            <input type="hidden" name="TotalCost" maxlength="60"  value="<?php echo $TotalCost; ?>">
			<input type="hidden" name="village" maxlength="60"  value="<?php echo $village->wid; ?>">
        </td>
     </tr>
</table>

</p>
<input type="submit" name "get_resurce" value="Compra" />
</form>
<?php
	}
}
?>

    




              
<?php

?>
 <br/><br/>
</div>
<div id="side_info">
<?php
include("Templates/quest.tpl");
include("Templates/multivillage.tpl");
include("Templates/links.tpl");
include("Templates/news.tpl");
?>
</div>
<div class="clear"></div>
</div>
<div class="footer-stopper"></div>
<div class="clear"></div>
<?php
//include_once("Templates/res.tpl");
include_once("Templates/footer.tpl"); 
?>
<div id="stime">
<div id="ltime">
<div id="ltimeWrap">
Calculated in <b><?php echo round(($generator->pageLoadTimeEnd()-$start)*1000);?></b> ms
<br/>Server time: <span id="tp1" class="b"><?php echo date('H:i:s'); ?></span>
</div>
</div>
</div>
<div id="ce">
</html>