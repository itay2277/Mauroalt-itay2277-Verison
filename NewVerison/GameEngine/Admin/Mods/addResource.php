<?php

#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       addResource.php                                             ##
##  Developed by:  mauroalt                                                    ##
##  License:       TravianX Project                                            ##
##  Thanks to:     Dzoki & itay2277 (edit troops)                              ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

include_once("../../Account.php");

mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS);
mysql_select_db(SQL_DB);

if ($session->access < ADMIN) die("Access Denied: You are not Admin!");

$id = $_GET['id'];
$village = $database->getVillage($id);  
$user = $database->getUserArray($village['owner'],1);  
$coor = $database->getCoor($village['wref']); 
$varray = $database->getProfileVillages($village['owner']); 
$type = $database->getVillageType($village['wref']);
$fdata = $database->getResourceLevel($village['wref']);
$units = $database->getUnit($village['wref']);

$wood = $_GET['wood'];
$clay = $_GET['clay'];
$iron = $_GET['iron'];
$crop = $_GET['crop'];
$warehouse = $_GET['warehouse'];
$granary = $_GET['granary'];

/*
$q = "UPDATE s1_vdata SET wood='$wood' WHERE wref = '$id'";
mysql_query($q);
$q = "UPDATE s1_vdata SET clay='$clay' WHERE wref = '$id'";
mysql_query($q);
$q = "UPDATE s1_vdata SET iron='$iron' WHERE wref = '$id'";
mysql_query($q);
$q = "UPDATE s1_vdata SET crop='$crop' WHERE wref = '$id'";
mysql_query($q);

$q = "UPDATE s1_vdata SET maxstore='$warehouse' WHERE wref = '$id'";
mysql_query($q);

$q = "UPDATE s1_vdata SET maxcrop='$granary' WHERE wref = '$id'";
mysql_query($q);
*/

$q = "UPDATE ".TB_PREFIX."vdata SET wood=wood+'$wood', clay=clay+'$clay', iron=iron+'$iron', crop=crop+'$crop', maxstore=maxstore+'$warehouse', maxcrop=maxcrop+'$granary' WHERE wref = '$id'";
mysql_query($q);

mysql_query("Insert into ".TB_PREFIX."admin_log values (0,".$_SESSION['id'].",'Changed resource anmount and capacity warehouse and granary in village <a href=\'admin.php?p=village&did=$id\'>$id</a> ',".time().")");

header("Location: ../../../Admin/admin.php?p=addResource&did=".$id."&d");

?>
