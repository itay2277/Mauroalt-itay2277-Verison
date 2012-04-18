<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       admin.php                                                   ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
session_start();
include("../GameEngine/Database.php");
include("../GameEngine/Admin/database.php");  
?>                                             
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link REL="shortcut icon" HREF="favicon.ico"/>
	<title><?php if($_SESSION['access'] == ADMIN){ echo 'Admin Control Panel - TravianX'; } else if($_SESSION['access'] == MULTIHUNTER){ echo 'Multihunter Control Panel - TravianX'; } ?></title>    
	<link rel=stylesheet type="text/css" href="../img/admin/admin.css">
	<link rel=stylesheet type="text/css" href="../img/admin/acp.css">
	<link rel=stylesheet type="text/css" href="../img/img.css">
		<script src="/mt-full.js?423cb"  type="text/javascript"></script>
	<script src="ajax.js" type="text/javascript"></script>

	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta http-equiv="imagetoolbar" content="no">
</head>
<body>

<script language="javascript">
function aktiv() {this.srcElement.className='fl1'; }
function inaktiv() {event.srcElement.className='fl2'; }

function del(e,id){
if(e == 'did'){ var conf = confirm('Dou you really want delete village id '+id+'?'); } 
if(e == 'unban'){ var conf = confirm('Dou you really want unban player '+id+'?'); } 
if(e == 'stopDel'){ var conf = confirm('Dou you really want stop deleting user '+id+'?'); } 
if(conf){return true;}else{return false;}
}

</script>

<div id="ltop1">
<div style="position:relative; width:231px; height:100px; float:left;">
	<img src="../img/x.gif" width="1" height="1">
</div>
<img class="fl2" src="../img/admin/x1.gif" width="70" height="100" border="0" onMouseOver="this.className='fl1'" onMouseOut="this.className='fl2'"><img class="fl2" src="../img/admin/x2.gif" width="70" height="100" border="0" onMouseOver="this.className='fl1'" onMouseOut="this.className='fl2'"><img class="fl2" src="../img/admin/x3.gif" width="70" height="100" border="0" onMouseOver="this.className='fl1'" onMouseOut="this.className='fl2'"><img class="fl2" src="../img/admin/x4.gif" width="70" height="100" border="0" onMouseOver="this.className='fl1'" onMouseOut="this.className='fl2'"><img class="fl2" src="../img/admin/x5.gif" width="70" height="100" border="0" onMouseOver="this.className='fl1'" onMouseOut="this.className='fl2'"></div>

<div id="lmidall">
<div id="lmidlc">
<div id="lleft">
<img src="../img/en/a/travian0.gif" class="logo_plus" width="116" height="60" border="0"></a>

<table id="navi_table" cellspacing="0" cellpadding="0">
<tr>
<td  align="center">
<?php     
  if($funct->CheckLogin()){?>
	<?php if($_SESSION['access'] == ADMIN){ ?>
	  <p><a href="<?php echo HOMEPAGE; ?>"><img src="icon/home32.png" alt="Home Page" width="32" height="32"></a></p> 
		
	<a href="admin.php"><img src="icon/app32.png" alt="ACP Home" width="32" height="32"></a>	
	  
	  
	  <a href="#"></a><a href="#"></a>

	  <a href="?p=server_info"><img src="icon/infoabout32.png" alt="Server Info" width="32" height="32"></a>
	  <a href="?p=news"><img src="icon/edit32.png" alt="News" width="32" height="32"></a>
      <a href="?p=online"><img src="icon/user32.png" alt="Online User" width="32" height="32"></a>     
      <a href="?p=search"><img src="icon/networksearch32.png" alt="Search" width="32" height="32"></a>
      <a href="?p=message"><img src="icon/filesearch32.png" alt="Msg/Rep" width="32" height="32"></a>
      <a href="?p=ban"><img src="icon/deleteuser32.png" alt="Ban User" width="32" height="32"></a>
      <a href="?p=multi"><img src="icon/groupofusers32.png" alt="Multi Account" width="32" height="32"></a>
	  <a href="?p=natarstart"><img src="icon/favbadd32.png" alt="Add Natar" width="32" height="32"></a>
	  <a href="?p=natarend"><img src="icon/wizard32.png" alt="Add Wonder" width="32" height="32"></a>
	  <a href="?p=gold"><img src="icon/money32.png" alt="Give Gold" width="32" height="32"></a>
	  <a href="?p=admin_log"><img src="icon/printer32.png" alt="Admin Log"></a>
	  <a href="?p=market_log"><img src="icon/printer32.png" alt="Market Log"></a>
      <a href="?p=config"><img src="icon/configure32.png" alt="Config" width="32" height="32"></a>
	  
	  <a href="#"></a><a href="#"></a><a href="#"></a>
      <p><a href="?action=logout"><img src="icon/delete32.png" alt="Logout" width="32" height="32"></a></p>
<?php } } ?>	  
	
	  <?php /* } else if($_SESSION['access'] == MULTIHUNTER){ ?>
	  
	  <a href="admin.php">MCP Home</a> 
			
	  <a href="<?php echo HOMEPAGE; ?>">Homepage</a>
	  
	  <a href="#"></a><a href="#"></a>

	  <a href="?p=server_info">Server Info</a>

       <a href="?p=online">Online users</a>    

      <a href="?p=search">Search</a>

      <a href="?p=message">Msg/Rep</a>

      <a href="?p=ban">Ban</a>
	  
	  <a href="#"></a><a href="#"></a><a href="#"></a>

      <a href="?action=logout">Logout</a>
	  
<?php } }  */?></td>
</tr>
</table></div>
<div id="lmid1">
<div id="lmid3">

<?php     

  if($funct->CheckLogin()){            
    if($_POST or $_GET){  
      if($_GET['p'] and $_GET['p']!="search"){
          $filename = '../Templates/Admin/'.$_GET['p'].'.tpl';
          if(file_exists($filename)){
            include($filename);
          }else{
            include('../Templates/Admin/404.tpl');
          }
      }else{
        include('../Templates/Admin/search.tpl');
      }  
      if($_POST['p'] and $_POST['s']){
        $filename = '../Templates/Admin/results_'.$_POST['p'].'.tpl';
          if(file_exists($filename)){
            include($filename);
          }else{
            include('../Templates/Admin/404.tpl');
          }        
      }
    }else{
      include('../Templates/Admin/home.tpl');  
    }
  }else{           
    include('../Templates/Admin/login.tpl');
  }    
?>

</div>  
</div>

</div>  
<div id="lright1"></div>

<div id="ce"></div>  



</body>
</html>

