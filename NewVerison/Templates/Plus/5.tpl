<?php
include("Templates/Plus/pmenu.tpl");
$id = $session->uid;



	if(!empty($_GET['gold'])) {
	
    $gold =$_GET['gold'];
	$user = $_GET['user'];
	$q= mysql_query("update ".TB_PREFIX."users set gold=gold+$R_GOLD  where id=$id");
	mysql_query($q);
	
	$q= mysql_query("update ".TB_PREFIX."users set reflink=0  where id=$user");
	mysql_query($q);
    
    }

?>

    <h2>Invita i tuoi amici e ricevi Gold gratis</h2>

    <p>Se inviti nuovi player utilizzando il tuo link di affiliazione riceverai gold gratuiti. Puoi usare questi gold per usare i bonus e i vantaggi dell'account plus.
    <br>
    <br>
    </p>

    <h2>Come fare?</h2>

   <!-- <h3>1) Invite your friends via Email</h3>

    <p><a href="plus.php?id=5&amp;a=1&amp;mail">&raquo; Invite by e-mail</a></p>-->

    <h3>1)Copia il tuo REF-Link personale e condividilo!</h3><span class="notice">Il tuo REF Link:</span>
    <br>
    <span class="link"><?php echo HOMEPAGE; ?>anmelden.php?id=ref_<?php echo $session->uid; ?></span>

    <h3>Progressi dei player che hai invitato</h3>

    <p>Quando i player che hai invitato avranno costruito <b><?php echo ACTIVATE4; ?></b> villaggi, potrai richiedere  <b><?php echo R_GOLD; ?></b> gold premendo l'appostio pulsante che si attiverà in automatico.</p>

    <table id="brought_in" cellpadding="1" cellspacing="1">
        <thead>
            <tr>
                <th colspan="5">Players Affiliati</th>
            </tr>
<!-- Fix Reference Link -->
<?php                         
mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
mysql_select_db(SQL_DB);
$query = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE reflink = ".$id."");
$row = mysql_num_rows($query);
?>
            <tr>
                <td>ID</td>

                <td>Nome</td>

                <td>Abitanti</td>

                <td>Villaggi</td>
                
		<td>Gold</td>
            </tr>
<?php
if ($row<>0){
while($reference = mysql_fetch_array($query)){
?>
	<tr>
		<td><?php echo $reference['id']; ?> </td>
		<td><?php echo $reference['username']; ?></td>
		<td><?php
			$popolazione=0;
			$query2 = mysql_query("SELECT * FROM ".TB_PREFIX."vdata WHERE owner = ".$reference['id']."");
			while($pop = mysql_fetch_array($query2)){
				$popolazione +=$pop['pop'];
			}
			echo $popolazione;
			
			 ?></td>
			 <td><?php 
			
			$query3 = mysql_query("SELECT * FROM ".TB_PREFIX."vdata WHERE owner = ".$reference['id']."");
			$villaggi = mysql_num_rows($query3);
			echo $villaggi;
			 ?></td>
			 <td> <?php
			 if ($villaggi >= ACTIVATE4){ ?>
			 <a href="?id=<?php echo $id; ?>&gold=true&user=<?php echo $reference['id']; ?>"><img src="../img/admin/gold.gif"></a>
			 <?php
			 }else{ ?>
			 	<img src="../img/admin/gold_g.gif">
			<?php
			 } ?> </td>
	</tr>
	
<?php
}
}else{
?>
			
        </thead>

        <tr>
            <td class="none" colspan="5">Non hai invitato nessun player.</td>
        </tr>
<?php
}
?>
        </table>

</div>
