<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       text_format.tpl                                             ##
##  Developed by:  Dixie                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################


$txt="MC errore di sintassi.\r\n\r\n\r\nBuongiorno a tutti. Come avrete visto c\\'è un errore che assilla questo server da ben due giorni, riusciamo a toglierlo momentaneamente ma non a correggerlo, quindi si ripete.\r\n\r\nDA una attena analisi sembra che l\\'errore sia dovuto ad un calcolo sbagliato nel codice degli attacchi, quindi per trovarlo serve anche il vostro aiuto.\r\n\r\nSono stati individuati dei villaggi \\&quot;fantasma\\&quot; cioè che non appartengono più a nessun player, perchè ha deletato, e sembra che quando questi villaggi vengono attaccati il istema va in errore.\r\n\r\nSe la supposizione è giusta, eliminando i villaggi \\&quot;fantasma\\&quot; correggeremo il game, ma per fare queto c\\'è bisogno di auto.\r\n\r\nSiete tutti pregati di comunicare al MH qalsiasi villaggio che vi risolt anomalo, come mancanza del player ed altre informazioni e vedremodi correggere.\r\n\r\nGrazie a tuti per la collaborazione";

//bbcode = html code
$txt = preg_replace("/\[b\]/is",'<b>', $txt);
$txt = preg_replace("/\[\/b\]/is",'</b>', $txt);
$txt = preg_replace("/\[i\]/is",'<i>', $txt);
$txt = preg_replace("/\[\/i\]/is",'</i>', $txt);
$txt = preg_replace("/\[u\]/is",'<u>', $txt);
$txt = preg_replace("/\[\/u\]/is",'</u>', $txt);

//nl2br = enter
echo nl2br($txt);

?>