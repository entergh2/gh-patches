string_ps2_BLAH = "BLA BLA"
string_ps2_WARNING = "WARNUNG"
string_ps2_CAUTION = "ACHTUNG"
string_ps2_CHECKING = "PRÜFEN ..."
string_ps2_MEMORY_CARD_ERROR = "FEHLER"
string_ps2_RETRY = "ERNEUT VERSUCHEN"
string_ps2_CONTINUE_WITHOUT_SAVING = "OHNE SPEICHERN FORTFAHREN"
string_ps2_SAVE_NOT_FOUND = "SPEICHERDATEI NICHT GEFUNDEN"
string_ps2_YES = "JA"
string_ps2_NO = "NEIN"
string_ps2_OK = "OK"
string_ps2_CANCEL = "ABBRECHEN"
string_ps2_LOADING = "LÄDT..."
string_ps2_LOAD_SUCCESSFUL = "LADEN ERFOLGREICH"
string_ps2_FORMATTING = "FORMATIERT..."
string_ps2_FORMAT_SUCCESSFUL = "FORMATIEREN ERFOLGREICH"
string_ps2_OVERWRITING = "ÜBERSCHREIBEN ..."
string_ps2_OVERWRITE_SUCCESSFUL = "ÜBERSCHREIBEN ERFOLGREICH"
string_ps2_SAVING = "SPEICHERN ..."
string_ps2_SAVE_SUCCESSFUL = "SPEICHERN ERFOLGREICH"
string_ps2_PRESS_ANY_BUTTON_TO_ROCK = "MIT BELIEBIGER TASTE LOSROCKEN..."
string_ps2_JUST_PRESS_ANY_BUTTON = "DRÜCKE EINE BELIEBIGE TASTE ZUM SPIELEN ..."
string_ps2_IN_THE_EVENT_OF_ROCK = "IM FALLE DES ROCKENS"
string_ps2_USING_THE_GUITAR_CONTROLLER = "VERWENDEN DES GITARREN-CONTROLLERS"
string_ps2_PLUG_IN = "ANSCHLIESSEN"
string_ps2_STRAP_ON = "GURT BEFESTIGEN"
string_ps2_BANG = "BANGEN"
string_ps2_HEAD = "HEAD"
string_ps2_START = "START"
string_ps2_BUTTON = "Taste"
string_ps2_BACK = "ZURÜCK"
string_ps2_RED_BUTTON = "Rote Taste"
string_ps2_CONTINUE = "WEITER"
string_ps2_GREEN_BUTTON = "Grüne Taste"
string_ps2_UP_DOWN = "   OBEN/UNTEN"
string_ps2_STRUM_BAR = "   Anschlagschalter"
string_ps2_STAR_POWER = "STARPOWER"
string_ps2_TILT = "Zieh"
string_ps2_AS_MADE_FAMOUS_BY = "bekannt durch"
string_ps2_LARGE_GEMS = "Große Edelsteine"
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
			localized_string = "Lädt Daten. ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und Controller nicht entfernen und die Konsole nicht zurückstellen oder abschalten."
		else
			localized_string = "Loading data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case Saving
		if (<use_localized> = true)
			localized_string = "Speichert Daten. ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und Controller nicht entfernen und die Konsole nicht zurückstellen oder abschalten."
		else
			localized_string = "Saving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case autosaving
		if (<use_localized> = true)
			localized_string = "Automatische Datenspeicherung. ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und Controller nicht entfernen und die Konsole nicht zurückstellen oder abschalten."
		else
			localized_string = "Autosaving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case overwriting
		if (<use_localized> = true)
			localized_string = "Überschreibt Daten. ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und Controller nicht entfernen und die Konsole nicht zurückstellen oder abschalten."
		else
			localized_string = "Overwriting data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case formatting
		if (<use_localized> = true)
			localized_string = "Formatiert ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^.^Memory Card (PS2)^ und Controller nicht entfernen und die Konsole nicht zurücksetzen oder abschalten."
		else
			localized_string = "Formatting ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case load_successful
		localized_string = "Laden erfolgreich."
		case format_successful
		localized_string = "Formatierung erfolgreich."
		case save_successful
		localized_string = "Speichern erfolgreich."
		case overwrite_successful
		localized_string = "Überschreiben erfolgreich."
		case boot_autosave_warning
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith speichert automatisch. Wenn Sie ab jetzt eine ^Memory Card (PS2)^ einlegen oder entfernen, werden möglicherweise Daten überschrieben."
		else
			localized_string = "Guitar Hero Aerosmith uses an autosave feature. The insertion or removal of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten."
		endif
		case check_memcard
		if (<use_localized> = true)
			localized_string = "^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ wird überprüft. ^Memory Card (PS2)^ und Controller nicht entfernen und die Konsole nicht zurücksetzen oder abschalten."
		else
			localized_string = "Checking ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case no_memcard_boot
		if (<use_localized> = true)
			localized_string = "Keine ^Memory Card (PS2)^ in MEMORY CARD-Steckplatz 1 eingelegt. Guitar Hero Aerosmith speichert automatisch. Das spätere Einlegen einer ^Memory Card(PS2)^ kann zum Überschreiben der Daten führen. Legen Sie eine ^Memory Card (PS2)^ mit mindestens 340 KB freiem Speicherplatz ein, um Spieldaten zu speichern."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ inserted in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space to save game data."
		endif
		case no_memcard_save_boot
		if (<use_localized> = true)
			localized_string = "Keine ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case no_save_boot
		if (<use_localized> = true)
			localized_string = "Keine gespeicherten Guitar Hero Aerosmith-Daten auf der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ vorhanden. Guitar Hero Aerosmith speichert automatisch. 340 KB freier Speicherplatz wird zum Speichern von Spieldaten benötigt. Möchten Sie nun eine Datei erstellen?"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. 340 KB of space is required to save game data. Do you want to create a save file now?"
		endif
		case no_save_ingame
		if (<use_localized> = true)
			localized_string = "Keine gespeicherten Guitar Hero Aerosmith-Daten auf der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ vorhanden. "
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case save_failed
		if (<use_localized> = true)
			localized_string = "Speichern gescheitert! Bitte überprüfen Sie die ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und versuchen Sie es noch einmal."
		else
			localized_string = "Save failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_failed
		if (<use_localized> = true)
			localized_string = "Überschreiben gescheitert! Bitte überprüfen Sie die ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und versuchen Sie es noch einmal."
		else
			localized_string = "Overwrite failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case attempt_format
		if (<use_localized> = true)
			localized_string = "^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ ist nicht formatiert. Möchten Sie die ^Memory Card (PS2)^ formatieren?"
		else
			localized_string = "^Memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ is unformatted. Would you like to format the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case confirm_format
		if (<use_localized> = true)
			localized_string = "Sind Sie sicher, dass Sie die ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ formatieren möchten?"
		else
			localized_string = "Are you sure you wish to format ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case already_formatted
		if (<use_localized> = true)
			localized_string = "Die ^Memory Card (PS2)^ im ^MEMORY CARD-Steckplatz 1^ wurde bereits formatiert! Unformatierte ^Memory Card (PS2)^ im ^MEMORY CARD-Steckplatz 1^ erneut einführen und wiederholen."
		else
			localized_string = "The ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has already been formatted! Please reinsert unformatted ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and select retry."
		endif
		case format_failed
		if (<use_localized> = true)
			localized_string = "Formatieren gescheitert! Bitte überprüfen Sie die ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und versuchen Sie es noch einmal."
		else
			localized_string = "Format failed! Please check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and try again."
		endif
		case format_cancelled
		localized_string = "Formatierung abgebrochen. Ohne Speichern fortfahren?"
		case no_memcard_ingame
		if (<use_localized> = true)
			localized_string = "Keine ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case load_failed
		if (<use_localized> = true)
			localized_string = "Laden gescheitert! Bitte überprüfen Sie die ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ und versuchen Sie es noch einmal."
		else
			localized_string = "Load failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_warning_boot
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith speichert automatisch. Das spätere Einlegen einer^Memory Card(PS2)^ kann zum Überschreiben der Daten führen. Ohne Speichern fortfahren?"
		else
			localized_string = "Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Continue without saving?"
		endif
		case disable_autosave
		localized_string = "Die Funktion zur automatischen Speicherung wurde deaktiviert. \\nIm Menü 'Optionen' können Sie die Funktion zur automatischen Speicherung wieder aktivieren."
		case overwrite_warning_ingame
		if (<use_localized> = true)
			localized_string = "WARNUNG: Beim Speichern werden alle vorhandenen Guitar Hero Aerosmith-Daten auf der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ überschrieben. Sind Sie sicher, dass Sie speichern möchten?"
		else
			localized_string = "WARNING: Saving will overwrite any existing Guitar Hero Aerosmith data on the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Are you sure you want to save?"
		endif
		case lose_progress_ingame
		if (<use_localized> = true)
			localized_string = "WARNUNG: Wenn Sie Daten von einer ^Memory Card (PS2)^ im ^MEMORY CARD-Steckplatz 1^ laden, geht Ihr aktueller Spielstand verloren. Mit Laden fortfahren?"
		else
			localized_string = "WARNING: If you load data from a ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ you will lose your current game progress. Continue with load?"
		endif
		case insufficient_space_boot
		if (<use_localized> = true)
			localized_string = "Ungenügend Speicherplatz auf der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1.^ Bitte legen Sie eine ^Memory Card (PS2)^ mit mindestens 340 KB freiem Speicherplatz ein oder schaffen Sie mithilfe des internen Browsers der Konsole Platz."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space, or create some space using the console's internal browser."
		endif
		case insufficient_space_ingame
		if (<use_localized> = true)
			localized_string = "Ungenügend Speicherplatz auf der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1.^ Guitar Hero Aerosmith benötigt 340 KB freien Speicherplatz, um Daten zu speichern."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith requires 340 KB of free space to save data."
		endif
		case corrupt_boot
		if (<use_localized> = true)
			localized_string = "Auf der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ wurden beschädigte Daten gefunden. 340 KB freier Speicherplatz wird benötigt, um Daten zu speichern. Beschädigte Daten ersetzen und neue Datei erstellen?"
		else
			localized_string = "Corrupt data detected on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ 340 KB of free space is required to save game data. Replace the corrupt file and create a new save file?"
		endif
		case confirm_overwrite_boot
		localized_string = "Sind Sie sicher, dass Sie diese Datei überschreiben möchten?"
		case new_memcard_ingame
		if (<use_localized> = true)
			localized_string = "Der Status der ^Memory Card (PS2)^ in ^MEMORY CARD-Steckplatz 1^ wurde verändert. Falls Sie weiterhin auf diese ^Memory Card (PS2)^ speichern möchten, werden alle bisher gespeicherten Daten überschrieben. Möchten Sie vorherige Speicherdaten wirklich überschreiben?"
		else
			localized_string = "The status of the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has changed. Data may be overwritten. Proceed with save?"
		endif
		case warning_480p
		localized_string = "Der Progressive-Modus funktioniert nicht bei allen Fernsehgeräten. Wenn er bei deinem nicht geht, warte 15 Sekunden, bis automatisch zurückgeschaltet wird."
		case now_in_480p
		localized_string = "Du befindest Dich jetzt im Progressive-Modus.\\nMöchtest Du diesen Anzeigemodus beibehalten?"
		case widescreen_string
		localized_string = "Breitbild"
		case progressivescan_string
		localized_string = "Progressive Scan"
		default
		printf "No match, string %d not localized" d = <message>
		localized_string = "???"
	endswitch
	return localized_string = <localized_string>
endscript
string_ps2_satan_outfit_style_1 = "Abaddon"
string_ps2_satan_outfit_style_2 = "Apollyon"
string_ps2_satan_outfit_style_3 = "Belial"
string_ps2_satan_outfit_style_4 = "König von Tyros"
string_ps2_fowlvis_blurb = "Mit sechs begann 'Lil Elroy in die Tasten zu hauen. Die Kinder aus der Nachbarschaft hatten für seine Liebe zu den Tasten wenig übrig und sagten zu ihm: 'Klavier ist was für Weicheier!' - so dauerte es nicht lang, bis er zur Gitarre griff. Im zarten Alter von 12 begann er in Bands zu spielen und seine Liebe zu Stahlsaiten ist seitdem nie ins Wanken geraten.\\n\\nDann erhielt er von einem Produzenten einen festen Job in einem Aufnahmestudio - bis zu jenem Tag, an dem er eine leibhaftige Legende traf - von seinem Idol aus einer lang vergangenen Ära lernte er die Spieltechnik und kurze Zeit später bekam er seine charakteristische, goldene Gürtelschnalle. Seit diesem Tag lautet sein Motto:\\n\\n'Heavy Metal, Punk, Polka? Für Elroy ist alles Rock'n'Roll.'"
string_ps2_fowlvis_outfit_style_1 = "Vegas"
string_ps2_fowlvis_outfit_style_2 = "Nashville"
string_ps2_fowlvis_outfit_style_3 = "Hawaii"
string_ps2_fowlvis_outfit_style_4 = "Tijuana"
string_ps2_fowlvis_outfit_style_5 = "Transsilvanien"
string_ps2_fowlvis_outfit_style_6 = "Fort Knox"
string_ps2_fowlvis_outfit_style_7 = "Spokane"
string_ps2_robot_blurb = "Metalhead kam als automatisch gelenkter, russischer Sprengkopf zur Welt. Nach dem kalten Krieg wurde er entschärft und in seine Einzelteile zerlegt. Ein paar Toaster, einige Vakuumröhren, einen 57er Roadster und eine Käsereibe später war Metalhead der erste vollkommen selbständige Roboter. Und damit begann Metalheads Frontalangriff gegen alles, was lahm und langsam ist. Seine Anfänge in sowjetischen Silos hat er weit hinter sich gelassen - jetzt ist Metalhead bereit, die Bühne zu betreten und die Bombe platzen zu lassen!"
string_ps2_robot_outfit_style_1 = "Pures Metal"
string_ps2_robot_outfit_style_2 = "Marx"
string_ps2_robot_outfit_style_3 = "Super Atomar"
string_ps2_robot_outfit_style_4 = "TV-Junkie"
string_ps2_robot_outfit_style_5 = "Gumball"
string_ps2_robot_outfit_style_6 = "Mr. Pineal"
string_ps2_robot_outfit_style_7 = "BUD-1000"
string_ps2_instrument_budcat_blurb = "Das ist dieselbe Gitarre, die Bud im Intro verwendet hat - ehrlich, das war das einzige Mal, dass er sie je gespielt hat. Also, Käufer, sei gewarnt ..."
string_ps2_instrument_felvis_blurb = "Hergestellt aus einem 200 Jahre alten Stück Esche aus den Sümpfen von Mississippi und beschlagen mit Elroys erster Goldenen Schallplatte, verfügt diese 'Gee-Tar', wie Elroy sie gerne nennt, über Tonabnehmer, die genau nach Elroys peniblen Masstäben handgewunden wurden. Die Stopperschiene und der Saitenhalter wurden angeblich aus alten spanischen Dublonen gefertigt - Fluch inbegriffen!\\n\\nDer Stahl für die Bünde stammt von der Kurbelwelle von Elroys altem 55er Straßenkreuzer. Er sagte immer: 'Ich liebe dieses Monster und wollte es immer überall mitnehmen' \\n\\nEs gab so viele Versuche, diese Gitarre zu stehlen, dass Elroy einen eigenen 24-Stunden-Sicherheitsdienst beschäftigt, um sie im Auge zu behalten."
string_ps2_instrument_controller_01_blurb = "Spiel das Spiel übers Gitarrespielen. Achte nur darauf, dass Dein Gitarrist nicht auch auf dieser Gitarre spielt, denn sonst würdest Du das Spiel über das Spielen des Gitarrespielens spielen."
string_ps2_instrument_controller_02_blurb = "Spiel das Spiel übers Gitarrespielen. Achte nur darauf, dass Dein Gitarrist nicht auch auf dieser Gitarre spielt, denn sonst würdest Du das Spiel über das Spielen des Gitarrespielens spielen."
string_ps2_instrument_rifle_blurb = "Diese Gitarre war eine Laserkanone aus einem misslungenen russischen Experiment, ein Liebesgruß aus Moskau sozusagen. Als Metalhead sie sah, musste er sie in seinem Kampf gegen die Mittelmäßigkeit unbedingt besitzen. Der Laser musste nach einem unangenehmen Rechtsstreit entfernt werden, der mit einem Motel am Straßenrand, einem Wetterballon und einem Eiscreme-Lastwagen zusammenhing. Metalhead hat die Einzelheiten dieses Vorfalls freiwillig von seiner Datenbank gelöscht."
string_ps2_instrument_raygun_blurb = "Diese Waffe wurde der Marsianischen Bedrohung gestohlen und dazu verwendet, die fliegenden Untertassen abzuschießen. Danach hatte sie noch einen kurzen Auftritt in einem alternativen Musical über die ganze Geschichte. Jetzt liegt sie in Metalheads Privatsammlung herum."
string_ps2_loading_screen_tip_01 = "Gibt es Probleme? ... Wirf einen Blick auf die Tutorials im Trainings-Menü."
string_ps2_loading_screen_tip_02 = "Durchstöbere The Vault nach neuen Songs, coolen Outfits und Modellen."
string_ps2_loading_screen_tip_04 = "Der Übungsmodus kann Dir beim Bewältigen dieser schwierigen Solos helfen."
string_ps2_loading_screen_tip_05 = "Wenn ihr noch nie auf einem Vierspurrekorder aufgenommen habt, seid ihr keine richtige Band."
string_ps2_loading_screen_tip_06 = "Überzeuge Dich vor dem Stagediven davon, dass die Zuschauer auch bereit sind, Dich aufzufangen."
string_ps2_loading_screen_tip_07 = "Der Gebrauch von selbstgemachten Feuerwerkskörpern ist UNTERSAGT."
string_ps2_loading_screen_tip_08 = "30 Minuten zu spät zur Probe zu kommen gehört dazu."
string_ps2_loading_screen_tip_09 = "Ist es vielleicht möglich, dass die Monitore etwas weniger abkacken?"
string_ps2_loading_screen_tip_10 = "Glaubt ja nicht, dass ihr die erste Band seid, die auf der Bühne nur schwarz trägt."
string_ps2_loading_screen_tip_11 = "Ja, die Bühnenmonitore sind wirklich zum Crowdsurfen da."
string_ps2_loading_screen_tip_12 = "Lass den Sänger niemals ans Mischpult."
string_ps2_loading_screen_tip_13 = "Es geht immer noch lauter."
string_ps2_loading_screen_tip_14 = "Wir sind zwar eine echt wütende Band, aber das heißt nicht, dass wir nicht an Frieden glauben."
string_ps2_loading_screen_tip_15 = "20-minütige, ausschweifende Jazz-Improvisationen sind nicht OK."
string_ps2_loading_screen_tip_16 = "Niemand will Geld dafür bezahlen, Dich improvisieren zu hören."
string_ps2_loading_screen_tip_17 = "Auszusehen, als sei man gerade erst aufgewacht, ist viel Arbeit."
string_ps2_loading_screen_tip_18 = "Achte darauf, dass irgendwer in der Band weiß, wie man Reifen wechselt."
string_ps2_loading_screen_tip_19 = "Dreh den Verstärker auf. Meine Ohren bluten ja kaum."
string_ps2_loading_screen_tip_20 = "Früher bin ich immer ausgeflippt, wenn mein Verstärker Feuer fing, aber heute mag ich den Klang irgendwie."
string_ps2_loading_screen_tip_21 = "Gitarren klingen zerschlagen einfach besser als intakt."
string_ps2_loading_screen_tip_22 = "Du bist nur so gut wie Dein letzter Auftritt ... und der war grottig."
string_ps2_loading_screen_tip_23 = "Du hast großartig gespielt. Ich bin mir sicher, sie haben Euch nur wegen Euren Outfits ausgepfiffen."
string_ps2_loading_screen_tip_24 = "Vielleicht taucht ja rechtzeitig zur Probe noch ein Drumcomputer auf."
string_ps2_loading_screen_tip_25 = "Du scheinst ein Problem mit Deinem Bass-Verstärker zu haben. Ich kann es hören!"
string_ps2_loading_screen_tip_26 = "Geh da raus, rock ordentlich ab und verkaufe einen Haufen T-Shirts, damit wir was zu essen haben."
string_ps2_loading_screen_tip_27 = "Beginnen wir doch mit unserer letzten Single.  Auf diese Weise räumen wir dieses Stück *&?#@! zeitig aus dem Weg!"
string_ps2_loading_screen_tip_28 = "Ich bin der Schlagzeuger.  Ich werde nicht bezahlt, um etwas davon zu verstehen!"
string_ps2_loading_screen_tip_29 = "Ich schwöre es, Wachtmeister, der Fernseher in der Umkleidekabine hat sich selbst von der Wand gelöst und aus dem Fenster gestürzt!"
string_ps2_loading_screen_tip_30 = "Wahre Gitarristen sitzen nicht auf der Couch, wenn sie spielen"
string_ps2_loading_screen_tip_31 = "Wenn die Polizei sich nicht beschwert, spielst Du nicht laut genug"
string_ps2_loading_screen_tip_32 = "Wenn die Polizei sich beschwert, spielst Du nicht laut genug"
string_ps2_loading_screen_tip_33 = "Geh nicht davon aus, dass die Drinks aufs Haus gehen"
string_ps2_loading_screen_tip_35 = "Es ist wahrscheinlich keine gute Idee Deinen Leadsänger zu vermöbeln"
string_ps2_loading_screen_tip_36 = "Zerschlage Deine Instrumente nicht, wenn Du nicht die Kohle hast, sie zu ersetzen"
string_ps2_loading_screen_tip_37 = "Alle Plattenfirmen sind böse ... abgesehen von der, die Dir einen Vertrag angeboten hat"
string_ps2_loading_screen_tip_38 = "Wer die Taste zuerst drückt, darf Leadgitarre spielen"
string_ps2_loading_screen_tip_39 = "Viel Glück"
