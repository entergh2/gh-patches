loading_screen_tips = [
	"¿Problemas?  Echa un vistazo a los tutoriales en el menú Entrenamiento."
	"¿Problemas?  Echa un vistazo a los tutoriales en el menú Entrenamiento."
	"Busca en The Vault nuevas canciones, lo último en ropa y los mejores estilos."
	"Busca en The Vault nuevas canciones, lo último en ropa y los mejores estilos."
	"Practicar te puede ayudar a clavar esos solos difíciles."
	"Practicar te puede ayudar a clavar esos solos difíciles."
	"¿Quieres echarle la culpa a la tele de tu fracaso?  En el menú Opciones, ve a Calibrar retraso."
	"¿Quieres echarle la culpa a la tele de tu fracaso?  En el menú Opciones, ve a Calibrar retraso."
	" ¿El solo se está convirtiendo en algo del pasado? ¡Entra online y compite en directo!"
	"¿Quieres jugar en modo Cooperativo pero no tienes ningún amigo a mano? ¡Juega en línea e improvisa!"
	" ¿Quién es un dios de la guitarra? Mira los récords en el menú online."
]
loading_screen_tips_per_venue = [
	{
		tips_array = [
			"El primer bolo de Aerosmith fue en el instituto regional de Nipmuc, en Hopkinton (Massachussets)."
			"En su primer concierto, Aerosmith tocó versiones de 'Good Times Bad Times' y 'Great Balls of Fire'."
			"Los primeros ensayos de Aerosmith se hicieron en el sótano de la Universidad de Boston."
			"En su primer concierto en el Instituto de Nipmuc, Aerosmith fueron teloneros junto con 'Route 66'"
			"En sus comienzos, Aerosmith solía tocar bolos en el exterior del edificio de la Asociación de Estudiantes de la Universidad de Boston."
		]
	}
	{
		tips_array = [
			"En sus dos décadas en Union Square, el Max's Kansas City atrajo a talentos como Mick Jagger, Bob Dylan y John Lennon."
			"El Max's Kansas City es en una de las cunas de la música punk, vio nacer a grupos como The New York Dolls y Ramones."
			"Tanto Aerosmith como Bruce Springsteen y Bob Marley dieron sus primeros bolos en Nueva York en el Max's Kansas City."
			"''No Surprize'' cuenta cómo Clive Davis fichó al grupo tras una actuación en el Max's Kansas City."
			"Tras la disolución de Sex Pistols, Sid Vicious actuó muchas veces en solitario en el Max's Kansas City."
			"El Max's Kansas City cerró sus puertas para siempre en 1981, aunque el edificio todavía sigue en pie."
			"La Velvet Underground realizó sus últimas actuaciones con Lou Reed en el Max's Kansas City durante el verano de 1970."
			"Max's Kansas City pasaba a la historia cada vez que estrellas como Patti Smith, David Bowie e Iggy Pop se subían al escenario."
		]
	}
	{
		tips_array = [
			"Joe Perry dejó el grupo en 1979 y no regresó hasta 1984."
			"Aerosmith reapareció en escena el día de San Valentín de 1984. Decidió volver a unirse tras una actuación en el Orpheum Theater de Boston."
			"En 1986, Aerosmith volvió al éxito por primera vez en seis años tras grabar una nueva versión de 'Walk This Way' al lado de Run DMC."
			"En 1984, Aerosmith se embarcaron en la gira de reunión 'Back in the Saddle' y durante ella grabaron su disco en directo 'Classics Live II'."
			"En 1987 Aerosmith lanzó su noveno álbum 'Permanent Vacation'.  El álbum se convirtió rápidamente en triple platino."
		]
	}
	{
		tips_array = [
			"Aerosmith tuvo que anular los conciertos de la gira 'Nine Lives' en Rusia y no pudo pisar el país hasta años después."
			"Aerosmith ha tocado en todo el planeta, incluidos conciertos con todas las entradas vendidas en la India, Japón y los Emiratos Árabes Unidos."
			"El doceavo disco de estudio de Aerosmith, 'Nine Lives' se situó en el número 1 de las listas estadounidenses nada más salir a la venta."
			"En 1998, Aerosmith se convirtió en el primer artista internacional en lograr llenos en todos sus conciertos de su gira por Japón."
			"En 1998, Aerosmith fue nominado a dos premios Grammy, incluido Mejor Álbum de Rock por 'Nine Lives'."
		]
	}
	{
		tips_array = [
			"''Just Push Play'' se grabó en The Boneyard, un estudio que Joe Perry tiene en su casa."
			"En enero de 2001, Aerosmith tuvo un gran éxito con su interpretación de 'Walk This Way' en el intermedio de la Superbowl."
			"''Just Push Play'' se colocó en el número 2 de las listas estadounidenses nada más salir."
			"'Just Push Play' es el treceavo disco de estudio de Aerosmith y ya era disco de platino certificado un mes después de su lanzamiento."
		]
	}
	{
		tips_array = [
			"En abril de 1998, Aerosmith protagonizó una exposición en el Salón de la Fama del Rock and Roll."
			"Aerosmith ingresó en el Salón de la Fama del Rock and Roll en 2001. Otros grupos que ingresaron aquel año fueron Queen y Steely Dan."
			"Aerosmith es el único grupo que ha entrado en el Salón de la Fama del Rock and Roll con un gran éxito sonando en las ondas en ese momento."
			"En su ingreso en el Salón de la Fama del Rock and Roll, Aerosmith tocó 'Sweet Emotion' con Kid Rock."
			"Después de la ceremonia en el Salón de la Fama, Steven retomó 'Just Push and Play' con Kid Rock como vocalista invitado."
		]
	}
]
g_loading_screen_split_container_id = id

script create_loading_screen \{mode = play_song}
	Menu_Music_Off
	kill_start_key_binding
	if ($is_changing_levels = 1)
		return
	endif
	change \{is_changing_levels = 1}
	GetRandomValue \{name = global_or_not
		a = 0
		b = 1
		Integer}
	if (<global_or_not> = 0)
		GetArraySize ($loading_screen_tips)
		GetRandomValue name = rand_num a = 0 b = (<array_size> - 1) Integer
		rand_tip = ($loading_screen_tips [<rand_num>])
	else
		GetArraySize (($loading_screen_tips_per_venue [$g_venue_index]).tips_array)
		GetRandomValue name = rand_num a = 0 b = (<array_size> - 1) Integer
		rand_tip = (($loading_screen_tips_per_venue [$g_venue_index]).tips_array [<rand_num>])
	endif
	if (<mode> = play_song || <mode> = play_encore || <mode> = play_boss || <mode> = restart_song)
		KillSpawnedScript \{name = jiggle_text_array_elements}
		if ScreenElementExists \{id = $g_loading_screen_split_container_id}
			DestroyScreenElement \{id = $g_loading_screen_split_container_id}
		endif
		KillAllMovies
		movie = 'loading_flying'
		if NOT IsMovieInBuffer movie = <movie>
			buffer_slot = 0
			FreeMovieBuffer buffer_slot = <buffer_slot>
			if GotExtraMemory
				MemPushContext \{DebugHeap}
			endif
			AllocateMovieBuffer buffer_slot = <buffer_slot> movie = 'movies\\bik\\loading_flying.bik.xen'
			if GotExtraMemory
				MemPopContext
			endif
			LoadMovieIntoBuffer buffer_slot = <buffer_slot> movie = <movie>
		endif
		PlayMovieFromBuffer {
			buffer_slot = <buffer_slot>
			TextureSlot = 2
			no_hold
			wait_until_rendered
			TexturePri = 4999
		}
		CreateScreenElement {
			type = TextBlockElement
			parent = root_window
			id = loading_tip_text
			text = <rand_tip>
			font = text_a4
			scale = 0.8
			just = [center center]
			dims = (300.0, 480.0)
			pos = (900.0, 300.0)
			rgba = [255 255 255 255]
			z_priority = 5000
			allow_expansion
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [0 0 0 255]
		}
		CreateScreenElement \{type = TextElement
			parent = root_window
			id = loading_text
			text = "CARGANDO..."
			font = text_a10
			scale = 2.0
			just = [
				right
				center
			]
			pos = (1000.0, 580.0)
			rgba = [
				255
				255
				255
				255
			]
			z_priority = 5000
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [
				0
				0
				0
				255
			]}
		GetScreenElementDims id = <id>
		fit_text_in_rectangle only_if_larger_x = 1 id = <id> dims = ((200.0, 0.0) + (<Height> * (0.0, 1.0))) start_x_scale = 2.0 start_y_scale = 2.0
	else
		KillSpawnedScript \{name = destroy_loading_screen_spawned}
		CreateScreenElement \{type = ContainerElement
			parent = root_window
			id = loading_screen_container
			pos = (0.0, 0.0)}
		CreateScreenElement \{type = SpriteElement
			parent = loading_screen_container
			texture = loading_flying_static
			pos = (640.0, 360.0)
			just = [
				center
				center
			]
			dims = (1280.0, 720.0)}
	endif
endscript

script wait_and_play_loading_movie 
	begin
	if (isMoviePreLoaded TextureSlot = 2)
		StartPreLoadedMovie \{TextureSlot = 2}
		return
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script destroy_loading_screen 
	destroy_menu \{menu_id = loading_tip_text}
	destroy_menu \{menu_id = loading_text}
	KillSpawnedScript \{name = jiggle_text_array_elements}
	if ScreenElementExists \{id = $g_loading_screen_split_container_id}
		DestroyScreenElement \{id = $g_loading_screen_split_container_id}
	endif
	if IsMoviePlaying \{TextureSlot = 2}
		KillMovie \{TextureSlot = 2}
	endif
	spawnscriptnow \{destroy_loading_screen_spawned}
	Hideloadingscreen
	if ($playing_song = 0)
		change \{is_changing_levels = 0}
	endif
endscript

script destroy_loading_screen_spawned \{time = 0.3}
	OnExitRun \{destroy_loading_screen_finish}
	if (<time> > 0)
		if ScreenElementExists \{id = menu_backdrop_container}
			doScreenElementMorph id = menu_backdrop_container alpha = 0 time = <time>
		endif
		if ScreenElementExists \{id = loading_screen_container}
			doScreenElementMorph id = loading_screen_container alpha = 0 time = <time>
		endif
		Wait <time> seconds
	endif
endscript

script destroy_loading_screen_finish 
	if IsWinPort
		if IsMoviePlaying \{TextureSlot = 2}
			KillMovie \{TextureSlot = 2}
		endif
	endif
	if ScreenElementExists \{id = loading_screen_container}
		DestroyScreenElement \{id = loading_screen_container}
	endif
	destroy_menu_backdrop
endscript

script refresh_screen 
	destroy_loading_screen
	create_loading_screen
endscript
