<?php
function Show_News() {
	include('GameEngine/config.php');
	$MConnect = mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
	if(!$MConnect) {
		
	} else {
	mysql_select_db(SQL_DB);
	$q1 = "SELECT * FROM ".TB_PREFIX."news ORDER BY id DESC LIMIT 5";
	$q1a = mysql_query($q1);
	while($r = mysql_fetch_array($q1a)) {
		echo '<p class="date">('.$r['date'].' by '.$r['author'].')</p><p>'.$r['message'].'</p>';
		}
	}
}
?>