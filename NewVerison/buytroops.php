<?php
include("GameEngine/Village.php");
$start = $generator->pageLoadTimeStart();
if(isset($_GET['newdid'])) {
    $_SESSION['wid'] = $_GET['newdid'];
    header("Location: ".$_SERVER['PHP_SELF']);
}
else {
    $building->procBuild($_GET);
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
<script src="mt-full.js?0faaa" type="text/javascript"></script>
<script src="unx.js?0faaa" type="text/javascript"></script>
<script src="new.js?0faaa" type="text/javascript"></script>
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
<img style="filter: chroma();" src="img/x.gif" id="msfilter" alt="">
<div id="dynamic_header">
</div>
<?php include("Templates/header.tpl"); ?>
<div id="mid">
<?php include("Templates/menu.tpl"); ?>
<div id="content"  class="village2">
<br /><br /><br />
<h2>Complete Queued Troops in This Village <img class="unit u3" src="img/x.gif"/><img class="unit u11" src="img/x.gif"/><img class="unit u18" src="img/x.gif"/><img class="unit u24" src="img/x.gif"/></h2><br />
<h2><?php echo '<a href="plus.php?id=3"><img src="gold.png" alt="Remaining gold" title="You currently have: '.$session->gold.' gold"/></a> You have: '.$session->gold.' Gold'; ?></h2>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post"> 
<table border="0">
<tr><td>Username UID:</td><td>
<input type="text" name="username" maxlength="60" disabled="disabled" value="<?php echo $session->uid; ?>">
</td></tr>
<tr><td>Village ID (Current Village):</td><td>
<input type="text" name="village" maxlength="60" disabled="disabled" value="<?php echo $village->wid; ?>">
</td></tr>
<tr><td colspan="2" align="right"> 
<input type="submit" name="submit" value="Complete Troop Queues In This Village"> 
</td></tr> 
</table> 
</form> 
<?php
error_reporting (E_ALL ^ E_NOTICE);
include ("extra_mysql.php");
if (isset($_POST['submit'])) { // if form has been submitted
// checks it against the database
$check = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE id  = '".$session->uid."'")or die(mysql_error());
//Gives error if user dosen't exist
$check2 = mysql_num_rows($check);
if ($check2 == 0) {die('Username id or Village id is wrong. <a href=dorf1.php>Click Here to go back to your village</a>');}
//Gives error if user dosen't exist
$check2 = mysql_num_rows($check);
if ($check2 == 0) {die('Username uid or Village id is wrong. <a href=dorf1.php>Click Here to go back to your village</a>');}                    
$sql = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE id  = '".$session->uid."'")or die(mysql_error());
while($row = mysql_fetch_array($sql)){};
$sql = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE id  = '".$session->uid."'")or die(mysql_error());
while($row = mysql_fetch_array($sql)){
$gold = $row["gold"];};
if ($gold < G_TRAIN ) {die('Sorry you dont have enough gold');}
else {
mysql_query("UPDATE ".TB_PREFIX."users SET `gold` = `gold`- ".G_TRAIN." WHERE id ='".$session->uid."'")or die(mysql_error());    
mysql_query("UPDATE ".TB_PREFIX."training SET `commence` = 0 WHERE vref ='".$village->wid."'")or die(mysql_error());
echo "<h2>All Queued Troops In This Village Completed at the Cost of ". G_TRAIN. " Gold.</h2>";}}?>
<br>
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
include("Templates/res.tpl");
include("Templates/footer.tpl"); 
?>
<div id="stime">
<div id="ltime">
<div id="ltimeWrap">
Calculated in <b><?php
echo round(($generator->pageLoadTimeEnd()-$start)*1000);
?></b> ms
<br />Server time: <span id="tp1" class="b"><?php echo date('H:i:s'); ?></span>
</div>
</div>
</div>
<div id="ce">
</html>