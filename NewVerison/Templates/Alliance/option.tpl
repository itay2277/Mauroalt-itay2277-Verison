<?php
if(isset($aid)) {
$aid = $aid;
}
else {
$aid = $session->alliance;
}
$allianceinfo = $database->getAlliance($aid);
echo "<h1>".$allianceinfo['tag']." - ".$allianceinfo['name']."</h1>";
include("alli_menu.tpl"); 
?>
<table cellpadding="1" cellspacing="1" id="options" class="small_option"><thead>
<form method="POST" action="allianz.php">
<input type="hidden" name="s" value="5">
<tr>
<th colspan="2">Options</th>
</tr></thead><tbody>
<?php
if ($alliance->userPermArray['opt1']==1){
?>		
        <tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="1"></td>
		<td class="val">Assign to position</td>
		</tr>
<?php
}
if ($alliance->userPermArray['opt3']==1){
?>        
        <tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="100"></td>
		<td class="val">Change name</td>
		</tr>
<?php
}
if ($alliance->userPermArray['opt2']==1){
?>        
        <tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="2"></td>
		<td class="val">Kick player</td>
		</tr>		
<?php
}
if ($alliance->userPermArray['opt3']==1){
?>        

		<tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="3"></td>
		<td class="val">Change alliance description</td>
		</tr>
<?php
}
if ($alliance->userPermArray['opt6']==1){
?>         
        <tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="6"></td>
		<td class="val">Alliance diplomacy</td>
		</tr>
<?php
}
if ($alliance->userPermArray['opt4']==1){
?>        
        <tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="4"></td>
		<td class="val">Invite a player into the alliance</td>
		</tr>
<?php
}
if ($alliance->userPermArray['opt5']==1){
?>         
        <tr>
		<td class="sel"><input class="radio" type="radio" disabled="disabled" name="o" value="5"></td>
		<td class="val"><strike>Link to the forum</strike></td>
		</tr>
<?php
}
?>         
        <tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="7"></td>
		<td class="val">Avatar alliance</td>
		</tr>
        
		<tr>
		<td class="sel"><input class="radio" type="radio" name="o" value="11"></td>
		<td class="val">Quit alliance</td>
		</tr>
		
        </tbody>
	</table>

	<p><input type="image" value="ok" name="s1" id="btn_ok" class="dynamic_img" src="img/x.gif" alt="OK" /></form></p>