<!--
** 
** - TravianX -
** DO NOT REMOVE COPYRIGHT NOTICE!
-->
<?php
include("Templates/Plus/pmenu.tpl");$extragoud="0";
?>

<script type="text/javascript">
<!--
function loadProductGroup(group_id) {
    if (group_id.length == 0){
        path='';
    } else {
        path='?group='+group_id;
    }

    location.href=path;
}
//-->
</script>
<h1><center>Donazioni per EpicWars</center></h1>
<br /><center>Aiutaci a mantenere in vita il progetto Epicwars.</center>  <br />
<center>Anche il tuo piccolo aiuto &egrave importante! </center><br /> 
Le donazione verranno utilizzata per il mantenimento di un nuovo server e lo sviluppo di EpicWars, vi saranno accreditati gold da utilizzare nel gioco.<br/> Grazie per il vostro aiuto.<br/><br/> Lo Staff<br/><br/>

<!--
<center>
<form method="post" action="process.php">
<input type="hidden" name="amount" value="5">
<input type="hidden" name="item_name" value="Epicwars Payment">
<input type="hidden" name="hosted_button_id" value="QKJH4UBMN3NK8">
<input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - Il sistema di pagamento online più facile e sicuro!">
<img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
</form>
-->
<?php
/*
 * payment.php
 *
 * PHP Toolkit for PayPal v0.51
 * http://www.paypal.com/pdn
 *
 * Copyright (c) 2004 PayPal Inc
 *
 * Released under Common Public License 1.0
 * http://opensource.org/licenses/cpl.php
 *
 */
?>

<html>
<head>
<title>::PHP PayPal Payment Button::</title>
</head>

<body>
<!--
<center>
<form method="post" action="process.php">
<input type="hidden" name="amount" value="5">
<input type="hidden" name="item_name" value="Epicwars Payment">
<input type="submit" value="Donazione">

</form>
</center>
-->


<table width="801" border="0" cellpadding="0" cellspacing="0">
<thead>
  <th>&nbsp;</th> 
      <th>&nbsp;</th>
 </thead>
 <tfoot>
    <th>
		Donazione 5 &euro; Gold 500	</th>
	<th>
		Donazione 10 &euro; Gold 1250	</th>
</tfoot>
 <tr>
 	<td>
  <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
    <div align="center">
  <input type="hidden" name="cmd" value="_s-xclick">
  <input type="hidden" name="hosted_button_id" value="QKJH4UBMN3NK8">
  <input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - Il sistema di pagamento online più facile e sicuro!">
  <img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
    </div>
  </form>
</td>
<td >
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
  <div align="center">
  <input type="hidden" name="cmd" value="_s-xclick">
  <input type="hidden" name="hosted_button_id" value="H4KSX9KMCTEH2">
  <input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - Il sistema di pagamento online più facile e sicuro!">
  <img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
  </div>
</form>

</td>
</tr>
<thead>
</table>

<p>

<table width="801" border="0" cellpadding="0" cellspacing="0">
<thead>
    <th>&nbsp;</th> 
      
 </thead>
 <tfoot>
    <th>
		Donazione 20 &euro; Gold 2750	</th>
	
</tfoot>
 <tr>
 	
<td >
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
  <div align="center">
  <input type="hidden" name="cmd" value="_s-xclick">
  <input type="hidden" name="hosted_button_id" value="C4RV4LTQNSJY2">
  <input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - Il sistema di pagamento online più facile e sicuro!">
  <img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
  </div>
</form>
</td>
</tr>
</table>
<br/>
<p>

</body>
</html>


</div>


