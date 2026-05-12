string_ps2_BLAH = "BLA"
string_ps2_WARNING = "ADVERTENCIA"
string_ps2_CAUTION = "ATENCIÓN"
string_ps2_CHECKING = "COMPROBANDO"
string_ps2_MEMORY_CARD_ERROR = "ERROR"
string_ps2_RETRY = "REINTENT."
string_ps2_CONTINUE_WITHOUT_SAVING = "CONTINÚA SIN GUARDAR"
string_ps2_SAVE_NOT_FOUND = "NO SE ENCONTRARON LOS DATOS GUARDADOS"
string_ps2_YES = "SÍ"
string_ps2_NO = "NO"
string_ps2_OK = "OK"
string_ps2_CANCEL = "CANCELAR"
string_ps2_LOADING = "CARGANDO..."
string_ps2_LOAD_SUCCESSFUL = "ÉXITO AL CARGAR"
string_ps2_FORMATTING = "FORMATEANDO..."
string_ps2_FORMAT_SUCCESSFUL = "ÉXITO AL FORMATEAR"
string_ps2_OVERWRITING = "GUARDANDO..."
string_ps2_OVERWRITE_SUCCESSFUL = "ÉXITO AL SOBRESCRIBIR"
string_ps2_SAVING = "GUARDANDO..."
string_ps2_SAVE_SUCCESSFUL = "ÉXITO AL GUARDAR"
string_ps2_PRESS_ANY_BUTTON_TO_ROCK = "PULSA UN BOTÓN PARA DARLE CAÑA"
string_ps2_JUST_PRESS_ANY_BUTTON = "PULSA CUALQUIER BOTÓN PARA EMPEZAR..."
string_ps2_IN_THE_EVENT_OF_ROCK = "EN CASO DE ROCK"
string_ps2_USING_THE_GUITAR_CONTROLLER = "USO DEL MANDO DE GUITARRA"
string_ps2_PLUG_IN = "CONECTA"
string_ps2_STRAP_ON = "AJUSTAR BANDOLERA"
string_ps2_BANG = "MENEA"
string_ps2_HEAD = "EL TARRO"
string_ps2_START = "Botón"
string_ps2_BUTTON = "START"
string_ps2_BACK = "ATRÁS"
string_ps2_RED_BUTTON = "Botón rojo"
string_ps2_CONTINUE = "CONTINÚA"
string_ps2_GREEN_BUTTON = "Botón verde"
string_ps2_UP_DOWN = "ARRIBA/ABAJO"
string_ps2_STRUM_BAR = "Barra de toque"
string_ps2_STAR_POWER = "ENERGÍA ESTRELLA"
string_ps2_TILT = "Levantar"
string_ps2_AS_MADE_FAMOUS_BY = "un clásico de"
string_ps2_LARGE_GEMS = "notas guerreras grandes"
string_ps2_STEREO = "ESTÉREO"
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
			localized_string = "Cargando datos. No extraigas la ^memory card (PS2)^ ni el mando. No reinicies ni apagues la consola."
		else
			localized_string = "Loading data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case Saving
		if (<use_localized> = true)
			localized_string = "Guardando datos. No extraigas la ^memory card (PS2)^ que hay en la ^ranura para MEMORY CARD 1^ ni el mando. No reinicies ni apagues la consola."
		else
			localized_string = "Saving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case autosaving
		if (<use_localized> = true)
			localized_string = "Autoguardando datos. No extraigas la ^memory card (PS2)^ que hay en la ^ranura para MEMORY CARD 1^ ni el mando. No reinicies ni apagues la consola."
		else
			localized_string = "Autosaving data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case overwriting
		if (<use_localized> = true)
			localized_string = "Sobrescribiendo datos. No extraigas la ^memory card (PS2)^ ni el mando. No reinicies ni apagues la consola."
		else
			localized_string = "Overwriting data. Do not remove the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ controller, or reset/switch off the console."
		endif
		case formatting
		if (<use_localized> = true)
			localized_string = "Formateando la ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^ No extraigas la ^memory card (PS2)^ ni el mando. No reinicies ni apagues la consola."
		else
			localized_string = "Formatting ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case load_successful
		localized_string = "Se ha cargado correctamente."
		case format_successful
		localized_string = "Éxito al formatear."
		case save_successful
		localized_string = "Éxito al guardar."
		case overwrite_successful
		localized_string = "Éxito al sobrescribir."
		case boot_autosave_warning
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith utiliza una función de autoguardado. Si insertas una ^memory card (PS2)^ a partir de este punto, puede haber sobreescritura de datos."
		else
			localized_string = "Guitar Hero Aerosmith uses an autosave feature. The insertion or removal of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten."
		endif
		case check_memcard
		if (<use_localized> = true)
			localized_string = "Comprobando la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1^. No extraigas la ^memory card (PS2)^ ni el mando. No reinicies ni apagues la consola."
		else
			localized_string = "Checking ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Do not remove ^memory card (8MB)(for PlayStation®2),^ controller, or reset/switch off the console."
		endif
		case no_memcard_boot
		if (<use_localized> = true)
			localized_string = "No hay ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^ Guitar Hero Aerosmith utiliza la función de autoguardado. Si insertas una ^memory card (PS2)^ a partir de este punto, puede haber sobreescritura de datos. Inserta una ^memory card (PS2)^ con al menos 340 KB de espacio libre para guardar datos."
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ inserted in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space to save game data."
		endif
		case no_memcard_save_boot
		if (<use_localized> = true)
			localized_string = "No hay ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^"
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case no_save_boot
		if (<use_localized> = true)
			localized_string = "No se encontraron datos de Guitar Hero Aerosmith en la ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^ Guitar Hero Aerosmith utiliza una función de autoguardado. Se necesitan 340 KB de espacio libre para guardar los datos de la partida. ¿Quieres crear un archivo de guardado ahora?"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith uses an Autosave feature. 340 KB of space is required to save game data. Do you want to create a save file now?"
		endif
		case no_save_ingame
		if (<use_localized> = true)
			localized_string = "No hay datos guardados de Guitar Hero Aerosmith en la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1.^"
		else
			localized_string = "No Guitar Hero Aerosmith save data present on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case save_failed
		if (<use_localized> = true)
			localized_string = "¡Error al guardar! Comprueba la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1^ e inténtalo de nuevo."
		else
			localized_string = "Save failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_failed
		if (<use_localized> = true)
			localized_string = "¡Fallo al sobrescribir! Comprueba la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1^ e inténtalo de nuevo."
		else
			localized_string = "Overwrite failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case attempt_format
		if (<use_localized> = true)
			localized_string = "La ^memory card (PS2)^ que hay en la ^ranura para MEMORY CARD 1^  no está formateada. ¿Deseas formatear la ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1?^"
		else
			localized_string = "^Memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ is unformatted. Would you like to format the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case confirm_format
		if (<use_localized> = true)
			localized_string = "¿Seguro que quieres formatear la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1?^"
		else
			localized_string = "Are you sure you wish to format ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1?^"
		endif
		case already_formatted
		if (<use_localized> = true)
			localized_string = "¡La ^memory card (PS2)^ que hay en la ^ranura para MEMORY CARD 1^ ya ha sido formateada! Inserta de nuevo la ^memory card (PS2) sin formato^ en la ^ranura para MEMORY CARD 1^ y selecciona reintentar."
		else
			localized_string = "The ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has already been formatted! Please reinsert unformatted ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and select retry."
		endif
		case format_failed
		if (<use_localized> = true)
			localized_string = "¡Error al formatear! Comprueba la ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1^ e inténtalo de nuevo."
		else
			localized_string = "Format failed! Please check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and try again."
		endif
		case format_cancelled
		localized_string = "Formateo cancelado. ¿Deseas continuar sin guardar?"
		case no_memcard_ingame
		if (<use_localized> = true)
			localized_string = "No hay ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^"
		else
			localized_string = "No ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^"
		endif
		case load_failed
		if (<use_localized> = true)
			localized_string = "¡Error al cargar! Comprueba la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1^ e inténtalo de nuevo."
		else
			localized_string = "Load failed! Check ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ and please try again."
		endif
		case overwrite_warning_boot
		if (<use_localized> = true)
			localized_string = "Guitar Hero Aerosmith utiliza una función de autoguardado. Si insertas una ^memory card (PS2)^ a partir de este punto, puede haber sobreescritura de datos. ¿Deseas continuar sin guardar?"
		else
			localized_string = "Guitar Hero Aerosmith uses an Autosave feature. Insertion of a ^memory card (8MB)(for PlayStation®2)^ beyond this point may cause data to be overwritten. Continue without saving?"
		endif
		case disable_autosave
		localized_string = "La función de autoguardado ha sido desactivada. \\nLa función de autoguardado puede reactivarse en el menú Opciones."
		case overwrite_warning_ingame
		if (<use_localized> = true)
			localized_string = "ADVERTENCIA: si guardas estos datos se sobrescribirán los datos de Guitar Hero Aerosmith que tengas en la ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^ ¿Seguro que quieres guardar?"
		else
			localized_string = "WARNING: Saving will overwrite any existing Guitar Hero Aerosmith data on the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Are you sure you want to save?"
		endif
		case lose_progress_ingame
		if (<use_localized> = true)
			localized_string = "ADVERTENCIA: si cargas datos de una ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1,^ perderás tu progreso actual. "
		else
			localized_string = "WARNING: If you load data from a ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1,^ you will lose your current game progress. Continue with load?"
		endif
		case insufficient_space_boot
		if (<use_localized> = true)
			localized_string = "No hay suficiente espacio libre en la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1^. Introduce una ^memory card (PS2)^ con al menos 340 KB de espacio libre o libera espacio utilizando el navegador interno de la consola."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Insert a ^memory card (8MB)(for PlayStation®2)^ with at least 340 KB of free space, or create some space using the console's internal browser."
		endif
		case insufficient_space_ingame
		if (<use_localized> = true)
			localized_string = "No hay suficiente espacio libre en la ^memory card (PS2)^ de la ranura para ^MEMORY CARD 1.^ Guitar Hero Aerosmith necesita al menos 340 KB de espacio libre para guardar datos."
		else
			localized_string = "Insufficient free space on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ Guitar Hero Aerosmith requires 340 KB of free space to save data."
		endif
		case corrupt_boot
		if (<use_localized> = true)
			localized_string = "Se detectaron datos dañados en la ^memory card (PS2)^ en la ^ranura para MEMORY CARD 1.^ Se necesitan 340 KB de espacio libre para guardar los datos de la partida. ¿Cambiar el archivo dañado y crear un nuevo archivo de guardado?"
		else
			localized_string = "Corrupt data detected on ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1.^ 340 KB of free space is required to save game data. Replace the corrupt file and create a new save file?"
		endif
		case confirm_overwrite_boot
		localized_string = "¿Estás seguro de querer sobrescribir el archivo de guardado?"
		case new_memcard_ingame
		if (<use_localized> = true)
			localized_string = "El estado de la ^memory card (PS2)^ de la ^ranura para MEMORY CARD 1^ ha cambiado. Si continuas con la ^memory card (PS2)^ actual, se sobrescribirán todos los perfiles guardados. ¿Quieres sobrescribir la información guardada?"
		else
			localized_string = "The status of the ^memory card (8MB)(for PlayStation®2)^ in ^MEMORY CARD slot 1^ has changed. Data may be overwritten. Proceed with save?"
		endif
		case warning_480p
		localized_string = "El modo progresivo puede que no funcione en todas las televisiones. \\nSi no funciona en tu televisor, espera 15 segundos \\ny lo cambiaremos por ti automáticamente."
		case now_in_480p
		localized_string = "Ahora estás en modo progresivo. \\n¿Quieres mantener este modo de visualización?"
		case widescreen_string
		localized_string = "Pantalla ancha"
		case progressivescan_string
		localized_string = "Escaneo progresivo"
		default
		printf "No match, string %d not localized" d = <message>
		localized_string = "???"
	endswitch
	return localized_string = <localized_string>
endscript
string_ps2_satan_outfit_style_1 = "Abaddon"
string_ps2_satan_outfit_style_2 = "Apollyon"
string_ps2_satan_outfit_style_3 = "Belial"
string_ps2_satan_outfit_style_4 = "King Tyrus"
string_ps2_fowlvis_blurb = "Lil Elroy empezó a aporrear el piano cuando tenía tan solo 6 años. Los niños del barrio se reían de su afición y le decían: '¡El piano es para nenazas!'. No le llevó mucho tiempo dejar el piano y agarrar una guitarra. Está en una banda desde los 12 y su pasión por las cuerdas de acero sigue tan viva como siempre.\\n\\nUn productor le dio un curro fijo en un estudio pero un día conoció a una leyenda de carne y hueso, aprendió sus técnicas de una era anterior y pronto hizo de su enorme cinturón dorado su marca. Desde ese día su lema es:\\n\\n'¿'Heavy Metal, Punk, Polka? Todo es rock 'n' roll para Elroy, nena'."
string_ps2_fowlvis_outfit_style_1 = "Las Vegas"
string_ps2_fowlvis_outfit_style_2 = "Nashville"
string_ps2_fowlvis_outfit_style_3 = "Hawai"
string_ps2_fowlvis_outfit_style_4 = "Tijuana"
string_ps2_fowlvis_outfit_style_5 = "Transilvania"
string_ps2_fowlvis_outfit_style_6 = "Fort Knox"
string_ps2_fowlvis_outfit_style_7 = "Spokane"
string_ps2_robot_blurb = "La vida de Metalhead comenzó siendo un misil ruso autoguiado. Tras la Guerra Fría se le desarmó y se le vendió por partes. Tras eso, unos tostadores, algunos tubos de aspiradoras, un descapotable del 57 y un rayador de queso hicieron que Metalhead fuera el primer robot completamente autónomo. Así comenzó la andadura de Metalhead contra todo aquello que fuera lento y penoso. Lejos de sus humildes comienzos en el silo soviético, ¡Metalhead está listo para salir al escenario y soltar la bomba!"
string_ps2_robot_outfit_style_1 = "Puro Metal"
string_ps2_robot_outfit_style_2 = "Marx"
string_ps2_robot_outfit_style_3 = "Súper atómico"
string_ps2_robot_outfit_style_4 = "Director de TV"
string_ps2_robot_outfit_style_5 = "Gumball"
string_ps2_robot_outfit_style_6 = "Mr. Pineal"
string_ps2_robot_outfit_style_7 = "BUD-1000"
string_ps2_instrument_budcat_blurb = "Esta es la mismísima guitarra que usó Bud en la introducción. En serio, es la única vez que se ha usado. Así que..."
string_ps2_instrument_felvis_blurb = "Creada a partir de un pedazo de Fresno de los pantanos del río Mississippi y prensada con el primer álbum de oro macizo de Elroy, esta guitarra contiene pastillas diseñadas acorde con sus exclusivas especificaciones. Se dice que el cordal está hecho de antiguos doblones españoles (con maldición incluida).\\n\\nEl acero utilizado para los trastes proviene del antiguo coche de Elroy, el típico americano de los años 50. Siempre suele decir ''me gustaba tanto ese bicho que lo quería llevar siempre conmigo''.\\n\\nLa guitarra ha sufrido tantos intentos de robo que Elroy tiene contratado un equipo de seguridad que la vigila 24 horas al día."
string_ps2_instrument_controller_01_blurb = "¿Tienes lo que hay que tener para ser una estrella del rock? No dejes que su guitarrista toque este instrumento también porque entonces solo estarías pretendiendo pretender ser una estrella de rock."
string_ps2_instrument_controller_02_blurb = "¿Tienes lo que hay que tener para ser una estrella del rock? No dejes que su guitarrista toque este instrumento también porque entonces solo estarías pretendiendo pretender ser una estrella de rock."
string_ps2_instrument_rifle_blurb = "Esta guitarra es un prototipo fallido de cañón láser provinente desde Rusia, con amor. Cuando Metalhead la vio, tuvo que hacerse con ella para seguir su lucha contra el aburrimiento. El láser fue suprimido después de una desagradable demanda que implicaba un motel de carretera, un globo estratosférico y un camión de helados. Metalhead borró voluntariamente los detalles del incidente de su memoria."
string_ps2_instrument_raygun_blurb = "Esta arma fue robada de la amenaza marciana y se utilizó para derribar a los platillos volantes. Después, tuvo una breve aparición autobiográfica en una pequeña producción de Broadway y ahora forma parte de la colección privada de Metalhead."
string_ps2_loading_screen_tip_01 = "¿Algún problema? Consulta los tutoriales del menú de ensayo."
string_ps2_loading_screen_tip_02 = "Busca en The Vault nuevas canciones, lo último en ropa y los mejores estilos."
string_ps2_loading_screen_tip_04 = "Practicar te puede ayudar a clavar esos solos difíciles."
string_ps2_loading_screen_tip_05 = "Si no habéis grabado en un 4 pistas, no sois un grupo de verdad."
string_ps2_loading_screen_tip_06 = "Asegúrate de que la peña quiere cogerte antes de tirarte desde el escenario."
string_ps2_loading_screen_tip_07 = "NO utilices pirotecnia casera."
string_ps2_loading_screen_tip_08 = "Llegar media hora tarde al ensayo forma parte de la tradición."
string_ps2_loading_screen_tip_09 = "¿Puedo sacar algo más de partido de los monitores?"
string_ps2_loading_screen_tip_10 = "¿Acaso os pensábais que erais el primer grupo que subía al escenario vestido completamente de negro?"
string_ps2_loading_screen_tip_11 = "Sí, los monitores de escenario en realidad son trampolines."
string_ps2_loading_screen_tip_12 = "Nunca más dejes al cantante encargado de la mezcla."
string_ps2_loading_screen_tip_13 = "Nunca suena demasiado potente."
string_ps2_loading_screen_tip_14 = "Somos un grupo muy duro, pero eso no significa que no creamos en la paz."
string_ps2_loading_screen_tip_15 = "Los conciertos de jazz improvisados que duran 20 minutos no molan."
string_ps2_loading_screen_tip_16 = "La gente pasa tres kilos de pagar dinero por escucharte improvisar."
string_ps2_loading_screen_tip_17 = "¡Cuántas molestias para tener la misma pinta que todos traemos al despertarnos!"
string_ps2_loading_screen_tip_18 = "Procura que alguien del grupo sepa cómo cambiar una rueda pinchada."
string_ps2_loading_screen_tip_19 = "Sube el volumen de ese ampli, que aún no me he quedado sordo."
string_ps2_loading_screen_tip_20 = "Siempre me ponía a temblar cuando mi ampli se quemaba.  Ahora ya me da igual."
string_ps2_loading_screen_tip_21 = "Parece que las guitarras espachurradas suenan mejor que sus hermanas no espachurradas."
string_ps2_loading_screen_tip_22 = "Eres exactamente como tu último concierto... Un fracaso."
string_ps2_loading_screen_tip_23 = "Lo hiciste muy bien.  Seguro que están abucheándote por tu vestuario."
string_ps2_loading_screen_tip_24 = "A lo mejor un batería llega a tiempo al ensayo."
string_ps2_loading_screen_tip_25 = "Parece que tienes problemas con el ampli de tu bajo. ¡Puedo oírlo!"
string_ps2_loading_screen_tip_26 = "Sal ahí fuera, mete caña y vende muchas camisetas. Así tendremos algo que comer."
string_ps2_loading_screen_tip_27 = "Empecemos con nuestro último single.  ¡Así podemos sacarnos a ese *&?#@! del medio enseguida!"
string_ps2_loading_screen_tip_28 = "Yo soy el batería,  ¡a mí no me pagan para entender nada de esto!"
string_ps2_loading_screen_tip_29 = "¡Se lo juro, agente, el televisor del camerino se ha descolgado solo y se ha tirado por la ventana!"
string_ps2_loading_screen_tip_30 = "Los guitarristas de verdad, no se tiran en el sofá mientras tocan."
string_ps2_loading_screen_tip_31 = "Si la policía no ha venido a quejarse significa que no estás haciendo el ruido suficiente."
string_ps2_loading_screen_tip_32 = "Si la policía no ha venido a quejarse significa que no estás haciendo el ruido suficiente."
string_ps2_loading_screen_tip_33 = "No asumas que invita la casa"
string_ps2_loading_screen_tip_35 = "Quizás no sea muy buena idea hacer trizas al guitarrista solista"
string_ps2_loading_screen_tip_36 = "No destroces tus instrumentos a no ser que te puedas permitir comprar otros"
string_ps2_loading_screen_tip_37 = "Ninguna compañía discográfica es de fiar... excepto la que te ha ofrecido un contrato "
string_ps2_loading_screen_tip_38 = "El que domine los botones más rápido tocará como guitarrista solista"
string_ps2_loading_screen_tip_39 = "Buena suerte"
