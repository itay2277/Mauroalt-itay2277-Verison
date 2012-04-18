<div id="build" class="gid16"><a href="#" onClick="return Popup(16,4);" class="build_logo">
<img class="g16" src="img/x.gif" alt="Rally point" title="Rally point" />
</a>
<h1>Rally point <span class="level">level <?php echo $village->resarray['f'.$id]; ?></span></h1>
<p class="build_desc">Your village's troops meet here. From here you can send them out to conquer, raid or reinforce other villages.</p>

<div id="textmenu">
<a href="build.php?id=<?php echo $id; ?>">Overview</a> |
<a href="a2b.php">Send troops</a> |
<a href="warsim.php">Combat Simulator</a> <?php if($session->goldclub==1){ ?>|
<a href="build.php?id=<?php echo $id; ?>&amp;t=99">Farmlist</a>
<?php } ?>
</div>

		<div id="raidList">
			<?php if(!$session->goldclub) { ?>
			<div class="options">
				<div id="spaceUsed">
					<div class="boxes boxesColor gray">
						<div class="boxes-tl"></div>
						<div class="boxes-tr"></div>
						<div class="boxes-tc"></div>
						<div class="boxes-ml"></div>
						<div class="boxes-mr"></div>
						<div class="boxes-mc"></div>
						<div class="boxes-bl"></div>
						<div class="boxes-br"></div>
						<div class="boxes-bc"></div>
						<div class="boxes-contents">Gold Club is one of our farm list and need to pay another fee to activate it.</div>
					</div>
					<div class="clear"></div>
				</div>
				<a class="arrow" href="plus.php?id=3#goldclub">Gets Gold Club members</a>
			</div>
			<?php }else{ 
			
			include ("Templates/goldClub/farmlist.tpl"); } ?>
		</div>
	</div>
</div>