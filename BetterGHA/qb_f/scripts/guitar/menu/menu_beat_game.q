beat_game_title = "TU AS TERMINÉ GUITAR HERO AEROSMITH EN MODE \\c0%d!\\c0"
beat_game_message = "Tu penses avoir ce qu'il faut pour leur en mettre\\nplein la vue ? Essaie donc celui-là sur \\c1%n\\c0. Il y aura peut-être une récompense à la clé si tu réussis. Douleur, gloire et célébrité : voilà ce qui t'attend."
beat_game_message_expert = "Waouh. Tu as réussi \\c1le mode EXPERT\\c0 - - Va donc créer un groupe ! Passe au niveau supérieur avec \\c1%n\\c0 ! Des cheats peuvent être débloqués depuis le menu Options."

script create_beat_game_menu 
	create_menu_backdrop \{texture = Beat_Game_BG}
	menu_font = fontgrid_title_gh3
	get_current_band_info
	GetGlobalTags <band_info> param = name
	band_name = <name>
	FormatText TextName = band_name_text "%s" s = <band_name>
	difficulty_text = "EXPERT"
	next_difficulty_text = "CHEAT MODE PRÉCISION"
	<difficulty> = ($current_difficulty)
	switch (<difficulty>)
		case easy
		<difficulty_text> = "FACILE"
		next_difficulty = medium
		<next_difficulty_text> = "MOYEN"
		case medium
		<difficulty_text> = "MOYEN"
		next_difficulty = hard
		<next_difficulty_text> = "DIFFICILE"
		case hard
		<difficulty_text> = "DIFFICILE"
		next_difficulty = expert
		<next_difficulty_text> = "EXPERT"
	endswitch
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = beat_game_container
		pos = (0.0, 0.0)
		just = [
			left
			top
		]}
	CreateScreenElement {
		type = TextElement
		parent = beat_game_container
		id = bgs_band_name
		just = [center top]
		font = <menu_font>
		text = <band_name_text>
		scale = 1.38
		rgba = (($g_menu_colors).pink)
		pos = (640.0, 366.0)
	}
	GetScreenElementDims \{id = bgs_band_name}
	if (<width> > 300)
		fit_text_in_rectangle \{id = bgs_band_name
			dims = (1060.0, 130.0)
			pos = (640.0, 366.0)}
	endif
	FormatText TextName = title_text $beat_game_title d = <difficulty_text>
	CreateScreenElement {
		type = TextElement
		parent = beat_game_container
		id = bgs_under_title
		just = [left top]
		font = <menu_font>
		text = <title_text>
		scale = 1.0
		rgba = (($g_menu_colors).lt_violet_grey)
	}
	fit_text_in_rectangle \{id = bgs_under_title
		dims = (700.0, 65.0)
		pos = (300.0, 428.0)}
	if (<difficulty> = expert)
		FormatText TextName = motivation_text ($beat_game_message_expert) n = <next_difficulty_text>
	else
		FormatText TextName = motivation_text ($beat_game_message) n = <next_difficulty_text>
	endif
	CreateScreenElement {
		type = TextBlockElement
		parent = beat_game_container
		font = text_a4
		text = <motivation_text>
		dims = (1100.0, 700.0)
		pos = (640.0, 468.0)
		rgba = (($g_menu_colors).dk_violet_grey)
		just = [center top]
		internal_just = [center top]
		scale = 0.7
		z_priority = 3
	}
	<cheat> = "ALL DAY AND ALL OF THE NIGHT RIFF x 2"
	FormatText TextName = cheat_text "ASTUCE CHEAT : %c" c = <cheat>
	if (<difficulty> = expert)
		CreateScreenElement {
			type = TextElement
			parent = beat_game_container
			id = bgs_cheat_text
			just = [center top]
			font = <menu_font>
			text = <cheat_text>
			scale = 0.5
			pos = (640.0, 622.0)
			rgba = (($g_menu_colors).lt_violet_grey)
		}
	endif
	button_font = buttonsxenon
	displaySprite \{id = bgs_black_banner
		parent = beat_game_container
		tex = white
		pos = (0.0, -2.0)
		dims = (1240.0, 100.0)
		rgba = [
			0
			0
			0
			255
		]
		z = -2}
	CreateScreenElement {
		type = TextElement
		parent = beat_game_container
		id = continue_text
		scale = 1.0
		pos = (40.0, 20.0)
		font = ($cash_reward_font)
		rgba = [0 0 0 255]
		just = [left center]
		event_handlers = [
			{pad_choose ui_flow_manager_respond_to_action params = {action = continue}}
		]
	}
	spawnscriptnow scroll_ticker_text params = {ticker_text = <band_name_text>}
	LaunchEvent \{type = focus
		target = continue_text}
	change \{user_control_pill_text_color = [
			0
			0
			0
			255
		]}
	change \{user_control_pill_color = [
			180
			180
			180
			255
		]}
	add_user_control_helper \{text = "CONTINUER"
		button = green
		z = 100}
endscript

script destroy_beat_game_menu 
	change \{check_for_unplugged_controllers = 0}
	clean_up_user_control_helpers
	destroy_menu \{menu_id = beat_game_container}
	destroy_menu_backdrop
	KillSpawnedScript \{name = scroll_ticker_text}
endscript
g_num_scrolling_texts = 0

script scroll_ticker_text {
		ticker_text = "J'AI BESOIN D'UN PROMPTEUR !"
		ticker_space = " "
		ticker_pos = (0.0, 34.0)
		ticker_just = [left top]
		ticker_parent = beat_game_container
		ticker_x_scale = 1
		ticker_y_scale = 1
		ticker_font = text_a5
		ticker_rgba1 = (($g_menu_colors).dk_violet_grey)
		ticker_rgba2 = (($g_menu_colors).pink)
		ticker_alpha = 1
		ticker_z_priority = -1
		time = 5
	}
	FormatText \{checksumname = ticker_text_id_1
		'scrolling_ticker_text_%i_1'
		i = $g_num_scrolling_texts}
	CreateScreenElement {
		type = TextElement
		just = <ticker_just>
		id = <ticker_text_id_1>
		parent = <ticker_parent>
		pos = <ticker_pos>
		scale = ((<ticker_x_scale> * (1.0, 0.0)) + (<ticker_y_scale> * (0.0, 1.0)))
		font = <ticker_font>
		text = <ticker_text>
		rgba = <ticker_rgba1>
		alpha = <ticker_alpha>
		z_priority = <ticker_z_priority>
	}
	GetScreenElementDims id = <ticker_text_id_1>
	if (<width> > 0)
		multi = (1280 / <width>)
	else
		ScriptAssert \{"Can't perform this operation using a screen element with no width!"}
	endif
	ticker_text_with_space = (<ticker_text> + <ticker_space>)
	long_ticker_text = <ticker_text_with_space>
	StringLength string = <ticker_text_with_space>
	<ticker_text_with_space_length> = <str_len>
	begin
	StringLength string = <long_ticker_text>
	<long_ticker_text_length> = <str_len>
	if NOT (<long_ticker_text_length> < (127 - <ticker_text_with_space_length>))
		break
	endif
	<long_ticker_text> = (<long_ticker_text> + <ticker_text_with_space>)
	SetScreenElementProps id = <ticker_text_id_1> text = <long_band_text>
	GetScreenElementDims id = <ticker_text_id_1>
	if (<width> > 1280)
		break
	endif
	repeat <multi>
	SetScreenElementProps id = <ticker_text_id_1> text = <long_ticker_text> pos = <ticker_pos>
	FormatText \{checksumname = ticker_text_id_2
		'scrolling_ticker_text_%i_2'
		i = $g_num_scrolling_texts}
	CreateScreenElement {
		id = <ticker_text_id_2>
		type = TextElement
		just = <ticker_just>
		parent = <ticker_parent>
		scale = ((<ticker_x_scale> * (1.0, 0.0)) + (<ticker_y_scale> * (0.0, 1.0)))
		font = <ticker_font>
		text = <long_ticker_text>
		rgba = <ticker_rgba2>
		alpha = <ticker_alpha>
		z_priority = <ticker_z_priority>
	}
	GetScreenElementDims id = <ticker_text_id_1>
	SetScreenElementProps id = <ticker_text_id_2> pos = (((1.0, 0.0) * <width>) + <ticker_pos>)
	change g_num_scrolling_texts = ($g_num_scrolling_texts + 1)
	first = 1
	begin
	if (<first>)
		doScreenElementMorph id = <ticker_text_id_1> pos = (((-1.0, 0.0) * <width>) + <ticker_pos>) time = <time>
		doScreenElementMorph id = <ticker_text_id_2> pos = <ticker_pos> time = <time>
	else
		doScreenElementMorph id = <ticker_text_id_2> pos = (((-1.0, 0.0) * <width>) + <ticker_pos>) time = <time>
		doScreenElementMorph id = <ticker_text_id_1> pos = <ticker_pos> time = <time>
	endif
	Wait <time> seconds
	if (<first>)
		SetScreenElementProps id = <ticker_text_id_1> pos = (((1.0, 0.0) * <width>) + <ticker_pos>)
		SetScreenElementProps id = <ticker_text_id_2> pos = <ticker_pos>
		<first> = 0
	else
		SetScreenElementProps id = <ticker_text_id_2> pos = (((1.0, 0.0) * <width>) + <ticker_pos>)
		SetScreenElementProps id = <ticker_text_id_1> pos = <ticker_pos>
		<first> = 1
	endif
	repeat
endscript
