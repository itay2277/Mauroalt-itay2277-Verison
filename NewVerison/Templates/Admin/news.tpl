<link href="../addons/css/default.css" rel="stylesheet" type="text/css" />
<br />
<br /><img src="icon/edit32.png" alt="News" />
<br />
<br />
<?php

function Add_News() {
echo '<form method="post"><table border="1" class="TBL_News"><thead><th colspan="2" class="TBL_Head">Add News</th></thead><tbody>
	  <tr><td align="right">Message:</td><td><textarea name="message" cols="40" rows="5"></textarea></td></tr>
	  <tr><td align="right">Date:</td><td><input type="text" name="date" value="'.date('Y-m-d').'" class="fields"></td></tr>
	  <tr><td align="right">Author:</td><td><input type="text" name="author" class="fields"></td></tr>
	  <tr><td align="right"></td><td><input type="submit" value="Publish">HTML: Enabled</td></tr></tbody>
      </table>';


	$MConnect = mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
	if(!$MConnect) {
	die('Error while connecting to MySQL server.');
	} else {
	mysql_select_db(SQL_DB);
	if(!empty($_POST['message'])) {
	$q1 = "INSERT INTO ".TB_PREFIX."news (message, date, author) VALUES ('$_POST[message]', '$_POST[date]', '$_POST[author]')";
	$q1a = mysql_query($q1);
    $Addon_Message = 'PUBLISHED - Refreshing...<br>';
    echo '<meta http-equiv="refresh" content="1; URL=?p=news" />';
		} else {

		}
	}
	echo '</form>';
    echo '<br /><span class="td">'.$Addon_Message.'</span>';
}
function Delete_News() {
    echo '<br />';
	$MConnect = mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
	if(!$MConnect) {
	die('Error while connecting to MySQL server.');
	} else {
	mysql_select_db(SQL_DB);
    $q1 = "SELECT * FROM ".TB_PREFIX."news ORDER BY id DESC";
    $q1a = mysql_query($q1);
    echo '<table border="1" class="TBL_News"><thead><th colspan="3" class="TBL_Head">Edit/Delete News</th></thead>';
    while($r = mysql_fetch_array($q1a)) {
    echo '<tbody><tr>';
    echo '<td style="font-size: 10px; width: 367px;">'.substr($r['message'], 0, 40).' <b>... etc.</b></td><td class="EDN"><a href="?p=news&edit='.$r['id'].'"><img src="../addons/images/edit_news.png"></a></td><td class="EDN"><a href="?p=news&delete='.$r['id'].'"><img src="../addons/images/delete_news.png"></a><br />';
    echo '</tr></td></tbody>';
    }
    echo '</table>';
    if(!empty($_GET['delete'])) {
    $q2 = "DELETE FROM ".TB_PREFIX."news WHERE id = '$_GET[delete]'";
    mysql_query($q2);
    $Addon_Message = 'DELETED - Refreshing...';
    echo '<meta http-equiv="refresh" content="1; URL=?p=news" />';
    }
    }
    echo '<br /><span class="td">'.$Addon_Message.'</span>';
}
function Edit_News() {
	$MConnect = mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
	if(!$MConnect) {
	die('Error while connecting to MySQL server.');
	} else {
	mysql_select_db(SQL_DB);
    $q1 = "SELECT * FROM ".TB_PREFIX."news WHERE id = '$_GET[edit]'";
    $q1a = mysql_query($q1);
    while($r = mysql_fetch_array($q1a)) {
echo '<form method="post"><table border="1" class="TBL_News"><thead><th colspan="2" class="TBL_Head">Edit News</th></thead><tbody>
	  <tr><td align="right">Message:</td><td><textarea name="message" cols="40" rows="5">'.$r['message'].'</textarea></td></tr>
	  <tr><td align="right">Date:</td><td><input type="text" name="date" value="'.$r['date'].'" class="fields"></td></tr>
	  <tr><td align="right">Author:</td><td><input type="text" name="author" class="fields" value="'.$r['author'].'"></td></tr>
	  <tr><td align="right"></td><td><input type="submit" value="Edit">HTML: Enabled</td></tr></tbody>
      </table>';
    }
    if(!empty($_POST['message'])) {
    $q2 = "UPDATE ".TB_PREFIX."news SET message = '$_POST[message]', date = '$_POST[date]', author = '$_POST[author]' WHERE id = '$_GET[edit]'";
	$q2a = mysql_query($q2);
    $Addon_Message = 'EDITED - Refreshing...';
    echo '<meta http-equiv="refresh" content="1; URL=?p=news" />';
    	}
    }
    echo '<br /><span class="td">'.$Addon_Message.'</span>';
}
if($_GET['p'] == "news" and empty($_GET['edit'])) {
Add_News();
Delete_News();
} else {
Edit_News();
}
?>