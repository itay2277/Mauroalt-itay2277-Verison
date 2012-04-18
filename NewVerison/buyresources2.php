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
<h2><?php echo G_RESOURCE; ?> Gold per 1000 Resources</h2><br/><br/>

<form action="buyresources2.php" method="POST"> 

<table border="0">
<tr><td>Username UID</td><td>
<input type="text" name="username" maxlength="60" disabled="disabled" value="<?php echo $session->uid; ?>">
</td></tr>

<tr><td>Village ID (Current Village):</td><td>
<input type="text" name="village" maxlength="60" disabled="disabled" value="<?php echo $village->wid; ?>">
</td></tr>

<tr><td><img src="img/x.gif" class="r1"> Wood:</td><td>
<input type="text" name="wood" maxlength="60" value="0">
</td></tr>
<tr><td><img src="img/x.gif" class="r2"> Clay:</td><td>
<input type="text" name="clay" maxlength="60" value="0">
</td></tr>
<tr><td><img src="img/x.gif" class="r3"> Iron:</td><td>
<input type="text" name="iron" maxlength="60" value="0">
</td></tr>
<tr><td><img src="img/x.gif" class="r4"> Crop:</td><td>
<input type="text" name="crop" maxlength="60" value="0">
</td></tr>
<tr><td colspan="2"  align="center"> 
<input type="submit" name="submit" value="Calcolate" >

</td></tr> 
</table>

<?php
if(isset($_GET['village'])){

	$wood= $_GET['wood'];
	$clay= $_GET['clay'];
	$iron= $_GET['iron'];
	$crop= $_GET['crop'];
	$TotalCost= $_GET['TotalCost'];
	$village= $_GET['village'];
	$user= $_GET['username'];
	
	mysql_query("UPDATE ".TB_PREFIX."users SET `gold` = `gold`- '$TotalCost' WHERE id =".$user."")or die(mysql_error());         
	mysql_query("UPDATE ".TB_PREFIX."vdata SET `wood` = `wood` + '$wood' WHERE wref =".$village."")or die(mysql_error());
	mysql_query("UPDATE ".TB_PREFIX."vdata SET `clay` = `clay` + '$clay' WHERE wref =".$village."")or die(mysql_error());
	mysql_query("UPDATE ".TB_PREFIX."vdata SET `iron` = `iron` + '$iron' WHERE wref =".$village."")or die(mysql_error());
	mysql_query("UPDATE ".TB_PREFIX."vdata SET `crop` = `crop` + '$crop' WHERE wref =".$village."")or die(mysql_error());
	echo "Done";
}
?>
</form>



<?php
if(isset($_POST['submit'])){

$wood= $_POST['wood'];
$clay= $_POST['clay'];
$iron= $_POST['iron'];
$crop= $_POST['crop'];
$Total = ($wood + $clay + $iron + $crop);

if($Total == 0){
	$TotalCost=0;
	}
	if($Total >= 1 And $Total <= 999){
		$TotalCost = G_RESOURCE;
	}
	if($Total >=1000){
		$TotalCost = round($Total/(G_RESOURCE*10));
	}
	
	$sql = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE id  = '".$session->uid."'")or die(mysql_error());
	while($row = mysql_fetch_array($sql)){
		$gold = $row["gold"];
	}
if ($gold < $TotalCost){
		echo "<br/>Enough gold! Do not have ".$TotalCost." gold to make the purchase";
	}
	else
	{
?>
<form action="buyresources2.php" method="GET"> 
<p>
<table>
	<tr>
    	<th>
        	Costo risorse
        </th>
     </tr>
     <tr>
    	<td>   	
            <input type="hidden" name="username" maxlength="60"  value="<?php echo $session->uid; ?>">
     	</td>
    </tr>
    <tr>
    	<td>   	
            <input type="hidden" name="village" maxlength="60"  value="<?php echo $village->wid; ?>">
     	</td>
    </tr>
	<tr>
    	<td>
        	<img src="img/x.gif" class="r1"><input type="text" name="wood" maxlength="60" value="<?php echo $wood; ?>">
        </td>
    </tr>
    <tr>
    	<td>
        	<img src="img/x.gif" class="r2"><input type="text" name="clay" maxlength="60" value="<?php echo $clay; ?>">
        </td>
    </tr>
    <tr>
    	<td>
        	<img src="img/x.gif" class="r3"><input type="text" name="iron" maxlength="60" value="<?php echo $iron; ?>">
        </td>
     </tr>
     <tr>
     	<td>
        	<img src="img/x.gif" class="r4"><input type="text" name="crop" maxlength="60" value="<?php echo $crop; ?>">
        </td>
     </tr>
     <tr>
     	<td>
        	<img src="img/x.gif" class="r1"><img src="img/x.gif" class="r2"><img src="img/x.gif" class="r3"><img src="img/x.gif" class="r4">Total: <?php echo $Total; ?> <br/>Total Gold: <img src="img/admin/gold.gif"> <?php echo $TotalCost; ?>
            <input type="hidden" name="TotalCost" maxlength="60"  value="<?php echo $TotalCost; ?>">
        </td>
     </tr>
</table>

</p>
<input type="submit" name "get_resurce" value="OK" />
</form>
<?php
	}
}
?>

    




              
<?php
/*





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
if ($gold < 10 ) {die('Sorry you dont have enough gold');}

$uid = '$session->uid';
$vref = '$village->wid';
$Wood = $_POST['wood']; $Clay = $_POST['clay']; $Iron = $_POST['iron']; $Crop = $_POST['crop'];
$Total = $Wood + $Clay + $Iron + $Crop;




mysql_query("UPDATE ".TB_PREFIX."users SET `gold` = `gold` - '$TotalCost' WHERE id =".$session->uid."")or die(mysql_error());            
mysql_query("UPDATE ".TB_PREFIX."vdata SET `wood` = `wood` + '$Wood' WHERE wref =".$village->wid."")or die(mysql_error());
mysql_query("UPDATE ".TB_PREFIX."vdata SET `clay` = `clay` + '$Clay' WHERE wref =".$village->wid."")or die(mysql_error());
mysql_query("UPDATE ".TB_PREFIX."vdata SET `iron` = `iron` + '$Iron' WHERE wref =".$village->wid."")or die(mysql_error());
mysql_query("UPDATE ".TB_PREFIX."vdata SET `crop` = `crop` + '$Crop' WHERE wref =".$village->wid."")or die(mysql_error());
echo Done;
}


*/
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