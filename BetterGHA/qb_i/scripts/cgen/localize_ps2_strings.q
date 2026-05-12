string_ps2_BLAH = "BLA"
string_ps2_WARNING = "ATTENZIONE"
string_ps2_CAUTION = "ATTENZIONE"
string_ps2_CHECKING = "VERIFICA IN CORSO..."
string_ps2_MEMORY_CARD_ERROR = "ERRORE"
string_ps2_RETRY = "RIPROVA"
string_ps2_CONTINUE_WITHOUT_SAVING = "CONTINUA SENZA SALVARE"
string_ps2_SAVE_NOT_FOUND = "SALVATAGGIO NON TROVATO"
string_ps2_YES = "SÌ"
string_ps2_NO = "NO"
string_ps2_OK = "OK"
string_ps2_CANCEL = "ANNULLA"
string_ps2_LOADING = "CARICAMENTO"
string_ps2_LOAD_SUCCESSFUL = "CARICAMENTO RIUSCITO"
string_ps2_FORMATTING = "FORMATTAZIONE..."
string_ps2_FORMAT_SUCCESSFUL = "FORMATTAZIONE RIUSCITA"
string_ps2_OVERWRITING = "SOVRASCRITTURA"
string_ps2_OVERWRITE_SUCCESSFUL = "SOVRASCRITTURA RIUSCITA"
string_ps2_SAVING = "ATTENDERE"
string_ps2_SAVE_SUCCESSFUL = "SALVATAGGIO RIUSCITO"
string_ps2_PRESS_ANY_BUTTON_TO_ROCK = "PREMI UN TASTO QUALSIASI..."
string_ps2_JUST_PRESS_ANY_BUTTON = "PREMI UN TASTO QUALSIASI PER GIOCARE..."
string_ps2_IN_THE_EVENT_OF_ROCK = "IN CASO DI ROCK"
string_ps2_USING_THE_GUITAR_CONTROLLER = "USARE LA CHITARRA"
string_ps2_PLUG_IN = "CONNETTI"
string_ps2_STRAP_ON = "METTI LA TRACOLLA"
string_ps2_BANG = "SBATTI LA"
string_ps2_HEAD = "TESTA!"
string_ps2_START = "PULSANTE"
string_ps2_BUTTON = "START"
string_ps2_BACK = "INDIETRO"
string_ps2_RED_BUTTON = "Tasto Rosso"
string_ps2_CONTINUE = "CONTINUA"
string_ps2_GREEN_BUTTON = "Tasto Verde"
string_ps2_UP_DOWN = "SU/GIÙ"
string_ps2_STRUM_BAR = "Barra pennata"
string_ps2_STAR_POWER = "STAR POWER"
string_ps2_TILT = "Inclina"
string_ps2_AS_MADE_FAMOUS_BY = "nella versione resa famosa da"
string_ps2_LARGE_GEMS = "gemme grandi"
string_ps2_STEREO = "STEREO"
string_ps2_MONO = "MONO"

script get_string_ps2 \{message = unknown}
	localized_string = ""
	use_localized = false
	if IsPAL
		use_localized = true
	else
		GetLanguage
		if (<language> = LANGUAGE_FRENCH || <language> = LANGUAGE_GERMAN || <language> = LANGUAGE_SPANISH || <language> = LANGUAGE_ITALIAN)
			use_localized = true
		endif
	endif
	switch <message>
		case loading
		if (<use_localized> = true)
			localized_string = "Caricamento dati in corso... Non rimuovere la^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ né il controller e non resettare o spegnere la console."
		else
			localized_string = "Loading data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case Saving
		if (<use_localized> = true)
			localized_string = "Salvataggio dati in corso... Non rimuovere la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ né il controller e non resettare/spegnere la console!"
		else
			localized_string = "Saving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case autosaving
		if (<use_localized> = true)
			localized_string = "Autosalvataggio dati in corso... Non rimuovere la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ né il controller\\ne non resettare/spegnere la console!"
		else
			localized_string = "Autosaving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case overwriting
		if (<use_localized> = true)
			localized_string = "Sovrascrittura dati in corso... Non rimuovere la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ né il controller e non resettare/spegnere la console!"
		else
			localized_string = "Overwriting data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case formatting
		if (<use_localized> = true)
			localized_string = "Formattazione della ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ in corso... Non rimuovere la ^memory card (PS2)^ né il controller e non resettare/spegnere la console!"
		else
			localized_string = "Formatting ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case load_successful
		localized_string = "Caricamento completato."
		case format_successful
		localized_string = "Formattazione completata."
		case save_successful
		localized_string = "Salvataggio completato."
		case overwrite_successful
		localized_string = "Sovrascrittura completata."
		case boot_autosave_warning
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith utilizza una funzione di Autosalvataggio. L'inserimento o la rimozione di una ^memory card (PS2)^ dopo questo punto potrà causare la sovrascrittura dei dati."
		else
			localized_string = "Guitar Hero Aerosmith uses an autosave feature. The insertion or removal of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten."
		endif
		case check_memcard
		if (<use_localized> = true)
			localized_string = "Controllo della ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ in corso... Non rimuovere la ^memory card (PS2)^ né il controller e non resettare o spegnere la console."
		else
			localized_string = "Checking ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case no_memcard_boot
		if (<use_localized> = true)
			localized_string = "Nessuna memory card (PS2) inserita nell'ingresso MEMORY CARD 1. Guitar Hero Aerosmith utilizza una funzione di Autosalvataggio. L'inserimento di una memory card (PS2) dopo questo punto potrà causare la sovrascrittura dei dati. Inserire una memory card (PS2) con almeno 340 KB di memoria libera per salvare i dati di gioco."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ inserted in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space to save game data."
		endif
		case no_memcard_save_boot
		if (<use_localized> = true)
			localized_string = "Nessuna ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case no_save_boot
		if (<use_localized> = true)
			localized_string = "Nessun dato salvato di Guitar Hero Aerosmith sulla ^memory card (PS2)^ inserita nell'^ingresso MEMORY CARD 1.^ Guitar Hero Aerosmith utilizza una funzione di Autosalvataggio. Sono richiesti 340 KB di spazio libero per salvare i dati di gioco. Creare un nuovo file di salvataggio?"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. 340 KB of space is required to save game data. Do you want to create a save file now?"
		endif
		case no_save_ingame
		if (<use_localized> = true)
			localized_string = "Nessun dato salvato di Guitar Hero Aerosmith sulla ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1.^"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case save_failed
		if (<use_localized> = true)
			localized_string = "Salvataggio fallito! Controllare la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ e riprovare."
		else
			localized_string = "Save failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_failed
		if (<use_localized> = true)
			localized_string = "Sovrascrittura fallita! Controllare la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ e riprovare."
		else
			localized_string = "Overwrite failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case attempt_format
		if (<use_localized> = true)
			localized_string = "La memory card (PS2) inserita nell'ingresso MEMORY CARD 1 non è formattata. Formattare la memory card (PS2)?"
		else
			localized_string = "^Memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ is unformatted. Would you like to format the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case confirm_format
		if (<use_localized> = true)
			localized_string = "Formattare la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^?"
		else
			localized_string = "Are you sure you wish to format ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case already_formatted
		if (<use_localized> = true)
			localized_string = "La ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ è stata già formattata. Reinserire una ^memory card (PS2)^ non formattata\\nnell'ingresso ^MEMORY CARD 1^ e riprovare."
		else
			localized_string = "The ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has already been formatted! Please reinsert unformatted ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and select retry."
		endif
		case format_failed
		if (<use_localized> = true)
			localized_string = "Formattazione fallita! Controllare la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ e riprovare."
		else
			localized_string = "Format failed! Please check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and try again."
		endif
		case format_cancelled
		localized_string = "Formattazione annullata. Continuare senza salvare?"
		case no_memcard_ingame
		if (<use_localized> = true)
			localized_string = "Nessuna ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case load_failed
		if (<use_localized> = true)
			localized_string = "Caricamento fallito! Controllare la ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ e riprovare."
		else
			localized_string = "Load failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_warning_boot
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith utilizza una funzione di Autosalvataggio. L'inserimento di una ^memory card (PS2)^ dopo questo punto potrà causare la sovrascrittura dei dati. Continuare senza salvare?"
		else
			localized_string = "Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Continue without saving?"
		endif
		case disable_autosave
		localized_string = "Il salvataggio automatico è stato disattivato.\\nIl salvataggio automatico può essere riattivato dal menu delle opzioni."
		case overwrite_warning_ingame
		if (<use_localized> = true)
			localized_string = "ATTENZIONE: Il salvataggio sovrascriverà i dati di Guitar Hero Aerosmith presenti sulla ^memory card (PS2)^ inserita nell'^ingresso MEMORY CARD 1.^ Continuare?"
		else
			localized_string = "WARNING: Saving will overwrite any existing Guitar Hero Aerosmith data on the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Are you sure you want to save?"
		endif
		case lose_progress_ingame
		if (<use_localized> = true)
			localized_string = "ATTENZIONE: Se si caricano dati dalla ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^, i progressi di gioco\\ncorrenti andranno persi. Continuare il caricamento?"
		else
			localized_string = "WARNING: If you load data from a ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ you will lose your current game progress. Continue with load?"
		endif
		case insufficient_space_boot
		if (<use_localized> = true)
			localized_string = "Spazio libero insufficiente sulla memory card (PS2) inserita nell'ingresso MEMORY CARD 1. Inserire una memory card (PS2) con almeno 340 KB di memoria libera o creare spazio utilizzando il browser interno della console."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space, or create some space using the console's internal browser."
		endif
		case insufficient_space_ingame
		if (<use_localized> = true)
			localized_string = "Spazio libero insufficiente sulla ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1.^ Guitar Hero Aerosmith richiede 340 KB di spazio libero per salvare i dati."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith requires 340 KB of free space to save data."
		endif
		case corrupt_boot
		if (<use_localized> = true)
			localized_string = "Rilevati dati corrotti sulla ^Memory Card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1.^ Si richiedono 340 KB di spazio libero per salvare i dati di gioco. Sostituire il file corrotto e creare un nuovo file di salvataggio?"
		else
			localized_string = "Corrupt data detected on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ 340 KB of free space is required to save game data. Replace the corrupt file and create a new save file?"
		endif
		case confirm_overwrite_boot
		localized_string = "Sovrascrivere questo file?"
		case new_memcard_ingame
		if (<use_localized> = true)
			localized_string = "I dati contenuti nella ^memory card (PS2)^ inserita nell'ingresso ^MEMORY CARD 1^ sono cambiati! Continuando con la ^memory card (PS2)^ attuale, i dati di salvataggio relative al profile saranno sovrascritti. Sovrascrivere i dati salvati in precedenza?"
		else
			localized_string = "The status of the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has changed. Data may be overwritten. Proceed with save?"
		endif
		case warning_480p
		localized_string = "La modalità progressiva potrebbe non funzionare con tutti i televisori.\\n Se non funziona, attendi 15 secondi e si annullerà automaticamente."
		case now_in_480p
		localized_string = "Adesso sei in modalità progressiva.\\nVuoi tenere questa modalità di visualizzazione?"
		case widescreen_string
		localized_string = "Widescreen"
		case progressivescan_string
		localized_string = "Scansione progressiva"
		default
		printf "No match, string %d not localized" d = <message>
		localized_string = "???"
	endswitch
	return localized_string = <localized_string>
endscript
string_ps2_satan_outfit_style_1 = "Abaddon"
string_ps2_satan_outfit_style_2 = "Apollyon"
string_ps2_satan_outfit_style_3 = "Belial"
string_ps2_satan_outfit_style_4 = "Re Tyrus"
string_ps2_fowlvis_blurb = "Lil Elroy ha iniziato a strimpellare con il pianoforte alla tenera età di 6 anni. I bambini del vicinato non accoglievano la sua passione con grande entusiasmo e gli gridavano 'Il pianoforte è roba da femminucce!'. Per questo, non è passato molto tempo prima che decidesse di passare alla chitarra! Lil è entrato nel suo primo gruppo a 12 anni e da allora il suo amore per la chitarra non ha mai vacillato.\\n\\nPoi un produttore gli ha offerto un lavoro fisso in uno studio di registrazione. Lì Lil ha incontrato una leggenda della musica in carne e ossa e ha appreso i segreti del mestiere da questo intramontabile idolo dei tempi che furono, che al momento opportuno gli ha tramandato il suo scettro. Da allora il suo motto è:\\n\\nHeavy Metal, Punk, Polka? Per il piccolo Elroy, è tutto rock 'n' roll!"
string_ps2_fowlvis_outfit_style_1 = "Vegas"
string_ps2_fowlvis_outfit_style_2 = "Nashville"
string_ps2_fowlvis_outfit_style_3 = "Hawaii"
string_ps2_fowlvis_outfit_style_4 = "Tijuana"
string_ps2_fowlvis_outfit_style_5 = "Transilvania"
string_ps2_fowlvis_outfit_style_6 = "Fort Knox"
string_ps2_fowlvis_outfit_style_7 = "Spokane"
string_ps2_robot_blurb = "Metalhead venne originariamente concepito come testata nucleare radiocomandata russa. Dopo la Guerra Fredda venne smantellato e utilizzato come fonte di pezzi di ricambio. Un paio di tostapani, qualche aspirapolvere, una roadster del '57 e un grattaformaggio più tardi, Metalhead diventò il primo robot completamente autonomo. Da quel momento Metalhead aggredisce tutto ciò che è lento e antiquato. Nonostante sia ormai lontano dalle sue umili origini di bomba sovietica, Metalhead è sempre pronto a mettere a ferro e fuoco il palcoscenico!"
string_ps2_robot_outfit_style_1 = "Metallo puro"
string_ps2_robot_outfit_style_2 = "Marx"
string_ps2_robot_outfit_style_3 = "Superatomica"
string_ps2_robot_outfit_style_4 = "Titoli di testa"
string_ps2_robot_outfit_style_5 = "Gumball"
string_ps2_robot_outfit_style_6 = "Mister Pineal"
string_ps2_robot_outfit_style_7 = "BUD-1000"
string_ps2_instrument_budcat_blurb = "Questa è la stessa chitarra usata da Bud nell'introduzione... francamente è stata la prima e unica volta in cui sia stata usata. Perciò, occhio..."
string_ps2_instrument_felvis_blurb = "Ricavata da un blocco di ceneri di palude del Mississippi vecchie di 200 anni e modellata con il primo disco d'oro di Elroy, questa 'Gee-Tar', come la chiama Elroy, ha dei pickup creati specificamente per venire incontro alle sue necessità da vera rockstar. Pare che il ponte sia stato ricavato fondendo degli antichi dobloni spagnoli, maledizione inclusa.\\n\\nL'acciaio utilizzato per i tasti proviene invece dalla leva del cambio del vecchio macinino del '55 di Elroy. Diceva sempre: 'amavo quel bestione, lo portavo dovunque andassi.'\\n\\nLa chitarra ha subito talmente tanti tentativi di furto che Elroy ha ingaggiato una squadra di gorilla per sorvegliarla 24 ore su 24."
string_ps2_instrument_controller_01_blurb = "Gioca al gioco giocando al gioco. Non permettere che il loro chitarrista suoni questo strumento perché in tal caso giocheresti al gioco giocando al gioco che gioca al gioco."
string_ps2_instrument_controller_02_blurb = "Gioca al gioco giocando al gioco. Non permettere che il loro chitarrista suoni questo strumento perché in tal caso giocheresti al gioco giocando al gioco che gioca al gioco."
string_ps2_instrument_rifle_blurb = "Questa chitarra era un cannone laser sperimentale, dalla Russia con amore. Quando MetalHead la vide, la volle a tutti i costi per farne la sua arma principale. Il componente laser dovette essere rimosso dopo una difficile controversia legale che vide coinvolti un motel, un pallone aerostatico e un furgoncino dei gelati. Metalhead decise di cancellare tutti i dettagli dell'incidente dai suoi chip di memoria."
string_ps2_instrument_raygun_blurb = "Questa arma è stata sottratta alla minaccia marziana e usata per abbattere i dischi volanti. In seguito, ha avuto una breve apparizione in uno spettacolo teatrale di terza categoria incentrato sull'accaduto. E ora fa parte della collezione privata di Metalhead."
string_ps2_loading_screen_tip_01 = "In caso di difficoltà, accedi alle lezioni contenute nel menu Esercizi."
string_ps2_loading_screen_tip_02 = "Visita il Vault per nuovi brani, completi alla moda e stili."
string_ps2_loading_screen_tip_04 = "Se ti eserciti un po' potrai dominare quegli assolo così complicati."
string_ps2_loading_screen_tip_05 = "Se non hai mai registrato un demo, non fai parte di un vero gruppo."
string_ps2_loading_screen_tip_06 = "Assicurati che il pubblico sia pronto ad afferrarti prima di lanciarti dal palco!"
string_ps2_loading_screen_tip_07 = "MAI utilizzare fuochi d'artificio fatti in casa."
string_ps2_loading_screen_tip_08 = "Per tradizione, si arriva sempre in ritardo di 30 minuti alle prove."
string_ps2_loading_screen_tip_09 = "Possiamo diminuire il riverbero delle casse spia?"
string_ps2_loading_screen_tip_10 = "Non pensare che la tua band sia la prima a salire sul palco con tutti i componenti vestiti di nero."
string_ps2_loading_screen_tip_11 = "Sì, le casse spia sul palco sono in effetti dei trampolini."
string_ps2_loading_screen_tip_12 = "Non lasciare mai al cantante la responsabilità del mix."
string_ps2_loading_screen_tip_13 = "Può essere sempre più forte."
string_ps2_loading_screen_tip_14 = "Siamo un gruppo di gente arrabbiata, ma ciò non significa che non crediamo nella pace."
string_ps2_loading_screen_tip_15 = "20 minuti di odissea nel free jazz non vanno bene."
string_ps2_loading_screen_tip_16 = "La gente non è disposta a sborsare quattrini per sentirti improvvisare."
string_ps2_loading_screen_tip_17 = "Ci vuole molto tempo prima di potersi minimamente paragonare a te."
string_ps2_loading_screen_tip_18 = "Accertati che qualcuno nel gruppo sappia come sostituire una gomma bucata."
string_ps2_loading_screen_tip_19 = "Alza quel volume! Le mie orecchie non stanno neanche sanguinando!"
string_ps2_loading_screen_tip_20 = "Impazzivo di rabbia quando il mio amplificatore prendeva fuoco. Adesso invece devo dire che mi piace parecchio!"
string_ps2_loading_screen_tip_21 = "Le chitarre distrutte sembrano suonare meglio delle loro sorelle intatte!"
string_ps2_loading_screen_tip_22 = "Hai suonato esattamente come la volta scorsa... ossia una vera schifezza!"
string_ps2_loading_screen_tip_23 = "Sei un fenomeno. Sono sicuro che i fischi erano solo per il tuo vestito!"
string_ps2_loading_screen_tip_24 = "Al momento giusto forse comparirà una drum machine che ti consentirà di esercitarti un po'."
string_ps2_loading_screen_tip_25 = "Secondo me, hai dei problemi con l'amplificazione del basso. Lo sento da qui!"
string_ps2_loading_screen_tip_26 = "Vai là fuori, scatenati come sai e vendi un po' di magliette, così almeno possiamo mangiare."
string_ps2_loading_screen_tip_27 = "Iniziamo con il nostro ultimo single.  Così ce lo leviamo subito dalle *&?#@!"
string_ps2_loading_screen_tip_28 = "Sono il batterista.  Non vengo pagato per capire questa roba!"
string_ps2_loading_screen_tip_29 = "Glielo giuro, agente, la TV del camerino si è svitata da sola dal muro ed è volata dalla finestra!"
string_ps2_loading_screen_tip_30 = "I veri chitarristi non suonano seduti sul divano!"
string_ps2_loading_screen_tip_31 = "Se la polizia non viene a lamentarsi, il volume non è abbastanza alto"
string_ps2_loading_screen_tip_32 = "Se riesci a sentire i poliziotti che dicono di smettere, il volume non è ancora abbastanza alto"
string_ps2_loading_screen_tip_33 = "Attenzione: non è detto che le consumazioni sono gratis per chi suona"
string_ps2_loading_screen_tip_35 = "Stendere il cantante del tuo gruppo non è proprio una buona idea"
string_ps2_loading_screen_tip_36 = "Prima di spaccare uno strumento, fermati a riflettere: puoi permetterti di comprarne un altro?"
string_ps2_loading_screen_tip_37 = "Le etichette discografice sono il Male... Tranne quella che ti ha offerto un contratto"
string_ps2_loading_screen_tip_38 = "Il primo che preme il tasto si prende la chitarra solista"
string_ps2_loading_screen_tip_39 = "Buona fortuna"
