<?php

//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             TRAVIANX                                             //
//            Only for advanced users, do not edit if you dont know what are you doing!             //
//                                Made by: Dzoki & Dixie (TravianX)                                 //
//                              - TravianX = Travian Clone Project -                                //
//                                 DO NOT REMOVE COPYRIGHT NOTICE!                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
									   //                         //
									   //         ITALIAN         //
									   //      Author: Mauroalt   //
									   /////////////////////////////

//MAIN MENU
define("TRIBE1","Romani"); 
define("TRIBE2","Teutoni");
define("TRIBE3","Galli"); 
define("TRIBE4","Animali"); 
define("TRIBE5","Natars");
define("TRIBE6","Mostri");
 
define("HOME","Homepage"); 
define("INSTRUCT","Istruzioni");
define("ADMIN_PANEL","Pannello Admin");
define("MH_PANEL","Pannello MultiHunter");  
define("MASS_MESSAGE","MC Server");
define("LOGOUT","Logout");
define("PROFILE","Profilo");
define("SUPPORT","Supporto");
define("UPDATE_T_10","Aggiorna Top 10");
define("SYSTEM_MESSAGE","MC Sistema");
define("TRAVIAN_PLUS","". SERVER_NAME ."<b><span class=\"plus_g\">P</span><span class=\"plus_o\">l</span><span class=\"plus_g\">u</span><span class=\"plus_o\">s</span></span></span></b>");
define("CONTACT","Contattaci!");
define("ANNONCEMENT","Annuncio");
define("GO_VILLAGE","Vai al mio villaggio");

//MENU
define("REG","Registrati");
define("FORUM","Forum");
define("CHAT","Chat");
define("IMPRINT","Imprint");
define("MORE_LINKS","Altri Links");
define("TOUR","Game Tour");


//ERRORS
define("USRNM_EMPTY","(Username vuoto)");
define("USRNM_TAKEN","(Nome gi&agrave in uso.)");
define("USRNM_SHORT","(min. ".USRNM_MIN_LENGTH." caratteri)");
define("USRNM_CHAR","(Caratteri invalidi)");
define("PW_EMPTY","(Password vuota)");
define("PW_SHORT","(min. ".PW_MIN_LENGTH." caratteri)");
define("PW_INSECURE","(Password insicura. Per favore inserisci una password pi&ugrave sicura.)");
define("EMAIL_EMPTY","(Email vuota)");
define("EMAIL_INVALID","(Indirizzo email non valido)");
define("EMAIL_TAKEN","(Email gi&agrave in uso)");
define("TRIBE_EMPTY","<li>Per favore scegli la popolazione.</li>");
define("AGREE_ERROR","<li>Devi accettare le regole del gioco, i termini e le condizioni generaliper poterti registrare.</li>");
define("LOGIN_USR_EMPTY","Inserisci il nome.");
define("LOGIN_PASS_EMPTY","inserisci la password.");
define("EMAIL_ERROR","Email non esistente.");
define("PASS_MISMATCH","Passwords non corrispondente");
define("ALLI_OWNER","Si prega di nominare un capo alleanza prima del delete");
define("SIT_ERROR","Sitter gi&agrave inserito");
define("USR_NT_FOUND","Nome utente inesistente.");
define("LOGIN_PW_ERROR","La password &egrave errata.");
define("WEL_TOPIC","Consigli utili e informazioni");
define("THANK_TOPIC","Accredito GOLD");
define("ATAG_EMPTY","Tag vuota");
define("ANAME_EMPTY","Nome vuoto");
define("ATAG_EXIST","Tag in uso");
define("ANAME_EXIST","Nome in uso");

//COPYRIGHT
define("TRAVIAN_COPYRIGHT","". SERVER_NAME ." 100% Open Source.");

//BUILD.TPL
define("CUR_PROD","Produzione corrente");
define("NEXT_PROD","Produzione a livello");

//BUILDINGS
define("B1","Taglialegna");
define("B1_DESC","Il boscaiolo serve a produrre legna. Aumenta il livello del boscaiolo per aumentare la tua produzione di legno.");
define("B2","Cava di argilla");
define("B2_DESC","L'argilla viene prodotta qui. Aumenta il livello della cava per aumentare la tua produzione di argilla.");
define("B3","Miniera di ferro");
define("B3_DESC","Questa miniera produce la preziosa risorsa di ferro. Aumenta il livello della miniera per aumentare la tua produzione di ferro.");
define("B4","Campo di grano");
define("B4_DESC","Qui viene prodotto il cibo per la vostra popolazione. Aumenta il livello del campo di grano per aumentare la tua produzione di grano.");
define("B5","Segheria");
define("B5_DESC","Qui il legno raccolto dai boscaioli viene lavorato. A seconda del livello potrai incrementare la tua produzione di legna fino al 25%.");
define("B6","Fabbrica di mattoni");
define("B6_DESC","Qui l'argilla viene trasformata in mattoni. In base al livello della fabbrica puoi incrementare l'estrazione dell'argilla fino al 25%.");
define("B7","Fonderia");
define("B7_DESC","Qui viene lavorato il ferro. Aumentando il livello di questa struttura anche l'abilitא dei tuoi operai crescerא e potrai incrementare la produzione fino al 25%.");
define("B8","Mulino");
define("B9","Forno");
define("B10","Magazzino");
define("B11","Granaio");
define("B12","Fabbro");
define("B13","Armeria");
define("B14","Arena");
define("B15","Palazzo pubblico");
define("B16","Caserma");
define("B16_DESC","Le truppe del tuo villaggio si incontrano qui. Da qui puoi inviare le truppe a conquistare, saccheggiare o rinforzare altri villaggi.");
define("B17","Mercato");
define("B18","Ambasciata");
define("B19","Campo di addestramento");
define("B20","Scuderia");
define("B21","Officina");
define("B22","Accademia");
define("B23","Deposito segreto");
define("B24","Municipio");
define("B25","Reggia");
define("B26","Castello");
define("B27","Camera del Tesoro");
define("B28","Ufficio commerciale");
define("B29","Grande campo di addestramento");	
define("B30","Grande scuderia");
define("B31","Mura cittadine");
define("B32","Mura di pietra"); 
define("B33","Palizzata");
define("B34","Carpentiere");
define("B35","Birreria");
define("B36","Esperto di trappole");
define("B37","Circolo degli eroi");			
define("B38","Grande Magazzino");
define("B39","Grande Granaio");	
define("B40","Meraviglia del mondo");
define("B41","Fonte equestre");	
define("B42","Grande officina");





//DORF1
define("LUMBER","Legno");
define("CLAY","Argilla");
define("IRON","Ferro");
define("CROP","Grano");
define("LEVEL","Livello");
define("CROP_COM",CROP."Consumo");
define("PER_HR","per ora");
define("PROD_HEADER","Produzione");
define("MULTI_V_HEADER","Villaggi");
define("ANNOUNCEMENT","Annuncio");
define("GO2MY_VILLAGE","Vai al mio villaggio");
define("VILLAGE_CENTER","Centro del villaggio");
define("FINISH_GOLD","Vuoi completare tutte le costruzioni e tutte le ricerche in corso immediatamente in questo villaggio per 2 Gold?");
define("WAITING_LOOP","(in coda)");
define("HRS","(Ora.)");
define("DONE_AT","Terminato alle");
define("CANCEL","Cancella");
define("LOYALTY","Lealt&agrave;:"); 
define("CALCULATED_IN","Calcolato in");
define("SEVER_TIME","Orario Server:");  

//DORF2

//DORF3

//header.tpl
define("MAP","Mappa");
define("RESOURCES","Risorse");
define("STATISTICS","Statistiche");
define("REPORTS","Report");
define("MESSAGES","Messaggi");

//QUEST
define("Q_CONTINUE","Continua con la seguente prova.");
define("Q_REWARD","Your reward:");
define("Q0","Benvenuto ");
define("Q0_DESC","As I see you have been made chieftain of this little village. I will be your counselor for the first few days and never leave your (right hand) side.");
define("Q0_OPT1","To the first task.");
define("Q0_OPT2","Look around on your own.");
define("Q0_OPT3","Play no tasks.");

define("Q1","Task 1: Woodcutter");
define("Q1_DESC","There are four green forests around your village. Construct a woodcutter on one of them. Lumber is an important resource for our new settlement.");
define("Q1_ORDER","Order:<\/p>Construct a woodcutter.");
define("Q1_RESP","Yes, that way you gain more lumber.I helped a bit and completed the order instantly.");
define("Q1_REWARD","Woodcutter instantly completed.");

define("Q2","Task 2: Crop");
define("Q2_DESC","Now your subjects are hungry from working all day. Extend a cropland to improve your subjects' supply. Come back here once the building is complete.");
define("Q2_ORDER","Order:<\/p>Extend one cropland.");
define("Q2_RESP","Very good. Now your subjects have enough to eat again...");

define("Q3","Task 3: Your Village's Name");
define("Q3_DESC","Creative as you are you can grant your village the ultimate name.\r\n<br \/><br \/>\r\nClick on 'profile' in the left hand menu and then select 'change profile'...");
define("Q3_ORDER","Order:<\/p>Change your village's name to something nice.");
define("Q3_RESP","Wow, a great name for their village. It could have been the name of my village!...");

define("Q4","Task 4: Other Players");
define("Q4_DESC","In ". SERVER_NAME ." you play along with billions of other players. Click 'statistics' in the top menu to look up your rank and enter it here.");
define("Q4_ORDER","Order:<\/p>Look for your rank in the statistics and enter it here.");
define("Q4_BUTN","complete task");
define("Q4_RESP","Exactly! That's your rank.");

define("Q5","Task 5: Two Building Orders");
define("Q5_DESC","Build an iron mine and a clay pit. Of iron and clay one can never have enough.");
define("Q5_ORDER","Order:<\/p><ul><li>Extend one iron mine.<\/li><li>Extend one clay pit.<\/li><\/ul>");
define("Q5_RESP","As you noticed, building orders take rather long. The world of ". SERVER_NAME ." will continue to spin even if you are offline. Even in a few months there will be many new things for you to discover.\r\n<br \/><br \/>\r\nThe best thing to do is occasionally checking your village and giving you subjects new tasks to do.");

define("Q6","Message From The Taskmaster");
define("Q6_DESC","You are to be informed that a nice reward is waiting for you at the taskmaster.<br /><br />Hint: The message has been generated automatically. An answer is not necessary.");

define("Q5","Task 5: Two Building Orders");
define("Q5_DESC","Build an iron mine and a clay pit. Of iron and clay one can never have enough.");
define("Q5_ORDER","Order:<\/p><ul><li>Extend one iron mine.<\/li><li>Extend one clay pit.<\/li><\/ul>");
define("Q5_RESP","As you noticed, building orders take rather long. The world of ". SERVER_NAME ." will continue to spin even if you are offline. Even in a few months there will be many new things for you to discover.\r\n<br \/><br \/>\r\nThe best thing to do is occasionally checking your village and giving you subjects new tasks to do.");

//======================================================//
//================ UNITS - DO NOT EDIT! ================//
//======================================================//
define("U0","Eroe");

//ROMAN UNITS
define("U1","Legionari");
define("U2","Pretoriani");
define("U3","Imperiani");
define("U4","Spie");
define("U5","Cavalleria Leggera");
define("U6","Cavalleria Pesante");
define("U7","Arieti");
define("U8","Onagri");
define("U9","Senatori");
define("U10","Coloni");

//TEUTON UNITS
define("U11","Combattenti");
define("U12","Lanceri");
define("U13","Combattenti con ascia");
define("U14","Scout");
define("U15","Paladini");
define("U16","Cavalieri Teutonici");
define("U17","Arieti");
define("U18","Catapulte");
define("U19","Comandanti");
define("U20","Coloni");

//GAUL UNITS
define("U21","Falangi");
define("U22","Combattente con spada");
define("U23","Ricognitori");
define("U24","Fulmini di Teutates");
define("U25","Cavalieri Druidi");
define("U26","Paladino di Haeduan");
define("U27","Arieti");
define("U28","Trabucchi");
define("U29","Capi tribש");
define("U30","Coloni");

//NATURE UNITS
define("U31","Topi");
define("U32","Ragni");
define("U33","Serpenti");
define("U34","Pipistrelli");
define("U35","Cinghiali");
define("U36","Lupi");
define("U37","Orsi");
define("U38","Coccodrilli");
define("U39","Tigri");
define("U40","Elefanti");

//NATARS UNITS
define("U41","Pikeman");
define("U42","Thorned Warrior");
define("U43","Guardsman");
define("U44","Birds Of Prey");
define("U45","Axerider");
define("U46","Natarian Knight");
define("U47","War Elephant");
define("U48","Ballista");
define("U49","Natarian Emperor");
define("U50","Natarian Settler");

//MONSTER UNITS
define("U51","Monster Peon");
define("U52","Monster Hunter");
define("U53","Monster Warrior");
define("U54","Ghost");
define("U55","Monster Steed");
define("U56","Monster War Steed");
define("U57","Monster Ram");
define("U58","Monster Catapult");
define("U59","Monster Chief");
define("U60","Monster Settler");

//INDEX.php
define("LOGIN","Login");
define("PLAYERS","Giocatori");
define("ONLINE","Online");
define("TUTORIAL","Tutorial");
define("PLAYER_STATISTICS","Statistiche Giocatori");
define("TOTAL_PLAYERS","".PLAYERS." in totale");
define("ACTIVE_PLAYERS","Giocatori attivi");
define("ONLINE_PLAYERS","".PLAYERS." online");
define("MP_STRATEGY_GAME","".SERVER_NAME." - the multiplayer strategy game");
define("WHAT_IS","".SERVER_NAME." ט un nuovo browser games. Ogni player ".SERVER_NAME.", you will build your own empire, recruit a mighty army, and fight with your allies for game world hegemony.");
define("REGISTER_FOR_FREE","Registrati qui gratis!");
define("LATEST_GAME_WORLD","Latest game world");
define("LATEST_GAME_WORLD2","Registrati nel nuovot<br/>server game e gioca.<br/>Cogli il vantaggio di<br/>uno dei primi <br/>giocatori iscritti.");
define("PLAY_NOW","Gioca ".SERVER_NAME." adesso");
define("LEARN_MORE","Altre informazioni <br/>".SERVER_NAME."!");
define("LEARN_MORE2","Now with a revolutionised<br>server system, completely new<br>graphics <br>This clone is The Shiz!");
define("COMUNITY","Community");
define("BECOME_COMUNITY","Entra a far parte della nostra comunitא adesso!");
define("BECOME_COMUNITY2","Become a part of one of<br>the biggest gaming<br>communities in the<br>world.");
define("NEWS","News");
define("SCREENSHOTS","Screenshots");
define("LEARN1","Upgrade your fields and mines to increase your resource production. You will need resources to construct buildings and train soldiers.");
define("LEARN2","Construct and expand the buildings in your village. Buildings improve your overall infrastructure, increase your resource production and allow you to research, train and upgrade your troops.");
define("LEARN3","View and interact with your surroundings. You can make new friends or new enemies, make use of the nearby oases and observe as your empire grows and becomes stronger.");
define("LEARN4","Follow your improvement and success and compare yourself to other players. Look at the Top 10 rankings and fight to win a weekly medal.");
define("LEARN5","Receive detailed reports about your adventures, trades and battles. Don't forget to check the brand new reports about the happenings taking place in your surroundings.");
define("LEARN6","Exchange information and conduct diplomacy with other players. Always remember that communication is the key to winning new friends and solving old conflicts.");
define("LOGIN_TO","Log in to ". SERVER_NAME);
define("REGIN_TO","Register in ". SERVER_NAME);
define("P_ONLINE","Players online: ");
define("P_TOTAL","Players in total: ");
define("CHOOSE","Please choose a server.");
define("STARTED"," The server started ". round((time()-COMMENCE)/86400) ." days ago.");

//ANMELDEN.php
define("NICKNAME","Nickname");
define("EMAIL","Email");
define("PASSWORD","Password");
define("ROMANS","Romani");
define("TEUTONS","Teutoni");
define("GAULS","Galli");
define("NW","Nord Ovest");
define("NE","Nord Est");
define("SW","Sud Ovest");
define("SE","Sud Est");
define("RANDOM","Casuale");
define("ACCEPT_RULES","Accetto le regole del gioco, i termini e le condizioni generali.");
define("ONE_PER_SERVER","Ogni giocatore pu&ograve; avere un solo account attivo per server.");
define("BEFORE_REGISTER","Prima di registrare un account &egrave consigliabile leggere le <a href='../anleitung.php' target='_blank'>istruzioni</a> del gioco per vedere gli specifici vantaggi e svantaggi di ogni popolazione.");
define("BUILDING_UPGRADING","Costruzioni:");
define("HOURS","Ore");


//ATTACKS ETC.
define("TROOP_MOVEMENTS","Movimento truppe:");
define("ARRIVING_REINF_TROOPS","Rinforzi in arrivo");
define("ARRIVING_REINF_TROOPS_SHORT","Rinforzi");
define("OWN_ATTACKING_TROOPS","Attacchi in arrivo");
define("ATTACK","Attacco");
define("OWN_REINFORCING_TROOPS","Proprie truppe di rinforzo");
define("TROOPS_DORF","Truppe:");


//LOGIN.php
define("COOKIES","Devi attivare i cookie per poter fare il login. Se si condivide il computer con altre persone si dovr&agrave uscire dopo ogni sessione per la vostra sicurezza.");
define("NAME","Nome");
define("PW_FORGOTTEN","Password perduta?");
define("PW_REQUEST","Puoi richiederne una nuova che sar&agrave inviata al tuo indirizzo email.");
define("PW_GENERATE","Tutti i campi sono obbligatori");
define("EMAIL_NOT_VERIFIED","E-mail non verificata!");
define("EMAIL_FOLLOW","Segui questo link per attivare il tuo account.");
define("VERIFY_EMAIL","Verificare e-mail.");

//LOGOUT
define("LOGOUT_END","Logout avvenuto con successo.");
define("THANKS","Grazie per la vostra visita.");
define("COOKIES_LOGOUT","Se anche altre persone usano questo computer, &egrave necessario eliminare i cookie per la vostra sicurezza:");
define("COOKIES_DELETE","Cancella Cookies");

//404.php
define("NOTHING_HERE","Non c'&egrave niente qui!");
define("WE_LOOKED","Errore 404 pagina non trovata");

//TIME RELATED
define("CALCULATED","Calcolato in");
define("SERVER_TIME","Orario Server:");

//MASSMESSAGE.php
define("MASS","Contenuto messaggio");
define("MASS_SUBJECT","Soggetto:");
define("MASS_COLOR","Colore Messaggio:");
define("MASS_REQUIRED","Tutti i campi sono obbligatori");
define("MASS_UNITS","Immagini (unitא):");
define("MASS_SHOWHIDE","Mostra / Nascondi");
define("MASS_READ","Nota bene: dopo aver aggiunto smiles, dei aggiungere a sinistra o a destra il numero dell'immagine altrimenti non non verr&agrave visualizzata");
define("MASS_CONFIRM","Conferma");
define("MASS_REALLY","Vuoi davvero inviare un MassIGM?");
define("MASS_ABORT","Annulla adesso");
define("MASS_SENT","Mass IGM &egrave stato inviato");


/*
|--------------------------------------------------------------------------
|   Index 
|--------------------------------------------------------------------------
*/

       $lang['index'][0][1] = "Bevenuto in " . SERVER_NAME . "";
       $lang['index'][0][2] = "Manuale";
       $lang['index'][0][3] = "Gioca adesso, ט gratis!";
       $lang['index'][0][4] = "Cosa ט " . SERVER_NAME . "?";
       $lang['index'][0][5] = "" . SERVER_NAME . " &egrave; un <b>browser game</b> ispirato ad un avvincente mondo antico con migliaia di altri giocatori reali.</p><p>E' <strong>un gioco gratis</strong> e non sono richiesti <strong>downloads</strong>.";
       $lang['index'][0][6] = "Clicca qui per giocare " . SERVER_NAME . "";
       $lang['index'][0][7] = "Giocatori Totali";
       $lang['index'][0][8] = "Giocatori Attivi";
       $lang['index'][0][9] = "Giocatori Online";
       $lang['index'][0][10] = "Informazioni sul gioco";
       $lang['index'][0][11] = "Inizia come capo di un piccolo villaggio ed avventurati in eccitanti prove.";
       $lang['index'][0][12] = "Costruisci il tuo villaggio, inizia guerre o stabilisci rotte commerciali con i tuoi vicini.";
       $lang['index'][0][13] = "Gioca contro migliaia di altri giocatori reali e conquista il mondo di Epicwars.";
       $lang['index'][0][14] = "News";
       $lang['index'][0][15] = "FAQ";
       $lang['index'][0][16] = "Screenshots";
       $lang['forum'] = "Forum";
       $lang['register'] = "Registrati";
       $lang['login'] = "Login";


?>
