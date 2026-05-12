training_font = text_a4
training_text_scale = 0.6
training_header_color = [
	110
	190
	190
	255
]
training_text_color = [
	165
	165
	165
	255
]
training_rect_color = [
	0
	0
	0
	80
]
training_arrow_life = 5
training_arrow_movement_distance = 30
training_arrow_movement_speed = 2.75
training_last_lesson = 1

script training_create_and_hide_headers 
	training_create_lesson_and_task_headers
	training_hide_lesson_and_task_headers
endscript

script training_create_lesson_and_task_headers 
	if ScreenElementExists \{id = training_container}
		return
	endif
	z = 5
	CreateScreenElement \{type = ContainerElement
		id = training_container
		parent = root_window
		pos = (0.0, 0.0)}
	lesson_header_rect_pos = (350.0, 55.0)
	CreateScreenElement {
		type = SpriteElement
		parent = training_container
		id = lesson_header_rect
		just = [left top]
		pos = <lesson_header_rect_pos>
		dims = (320.0, 200.0)
		rgba = ($training_rect_color)
		z_priority = (<z> - 0.1)
	}
	scale = ($training_text_scale)
	CreateScreenElement {
		type = TextElement
		parent = training_container
		id = lesson_header_text
		just = [left top]
		pos = (<lesson_header_rect_pos> + (10.0, 10.0))
		font = ($training_font)
		text = "LECCIÓN 0: PREDETERMINADO"
		scale = <scale>
		rgba = ($training_header_color)
		z_priority = <z>
	}
	GetScreenElementDims \{id = lesson_header_rect}
	scale_mult = (1.0 / <scale>)
	dims = ((1.0, 0.0) * <scale_mult> * <width> + (0.0, 1.0) * <scale_mult> * <Height> + (-10.0, -10.0))
	CreateScreenElement {
		type = TextBlockElement
		font = ($training_font)
		parent = training_container
		id = lesson_header_body
		just = [left top]
		internal_just = [left top]
		pos = (<lesson_header_rect_pos> + (10.0, 40.0))
		dims = <dims>
		text = "1. No lo fastidies, tío\\n2. ¡Va en serio!"
		scale = <scale>
		rgba = ($training_text_color)
		z_priority = <z>
	}
	GetScreenElementDims \{id = lesson_header_body}
	task_header_rect_pos = (1050.0, 55.0)
	CreateScreenElement {
		type = SpriteElement
		parent = training_container
		id = task_header_rect
		just = [right top]
		pos = <task_header_rect_pos>
		dims = (250.0, 200.0)
		rgba = ($training_rect_color)
		z_priority = (<z> - 0.1)
	}
	GetScreenElementDims \{id = task_header_rect}
	scale_mult = (1.0 / <scale>)
	dims = ((1.0, 0.0) * <scale_mult> * <width> + (0.0, 1.0) * <scale_mult> * <Height> + (-10.0, -10.0))
	CreateScreenElement {
		type = TextElement
		parent = training_container
		id = task_header_text
		just = [left top]
		pos = (<task_header_rect_pos> - (1.0, 0.0) * <width> + (10.0, 10.0))
		font = ($training_font)
		text = "MISIÓN: "
		scale = <scale>
		rgba = ($training_header_color)
		z_priority = <z>
	}
	CreateScreenElement {
		type = TextBlockElement
		font = ($training_font)
		parent = training_container
		id = task_header_body
		just = [left top]
		internal_just = [left top]
		pos = (<task_header_rect_pos> - (1.0, 0.0) * <width> + (10.0, 40.0))
		dims = <dims>
		text = " "
		scale = <scale>
		rgba = ($training_text_color)
		z_priority = <z>
	}
	GetScreenElementDims \{id = lesson_header_body}
	CreateScreenElement {
		type = SpriteElement
		parent = training_container
		id = temp_vo_sub_rect
		just = [center top]
		pos = (640.0, 460.0)
		dims = (600.0, 175.0)
		rgba = ($training_rect_color)
	}
	GetScreenElementDims id = <id>
	text_block_pos = ((640.0, 460.0) - (1.0, 0.0) * 0.5 * <width> + (10.0, 10.0))
	dims = ((1.0, 0.0) * <scale_mult> * <width> + (0.0, 1.0) * <scale_mult> * <Height> + (-10.0, -10.0))
	CreateScreenElement {
		type = TextBlockElement
		parent = training_container
		id = temp_vo_sub_body
		just = [left top]
		internal_just = [left top]
		pos = <text_block_pos>
		dims = <dims>
		font = ($training_font)
		text = "Substituto temporal de voz en off."
		scale = <scale>
		rgba = ($training_text_color)
	}
endscript

script training_destroy_lesson_and_task_headers 
	destroy_menu \{menu_id = training_container}
endscript

script training_hide_lesson_and_task_headers 
	training_hide_lesson_header
	training_hide_task_header
endscript

script training_show_lesson_and_task_headers 
	training_show_lesson_header
	training_show_task_header
endscript

script training_hide_lesson_header 
	doScreenElementMorph \{id = lesson_header_rect
		alpha = 0}
	doScreenElementMorph \{id = lesson_header_text
		alpha = 0}
	doScreenElementMorph \{id = lesson_header_body
		alpha = 0}
endscript

script training_show_lesson_header 
	doScreenElementMorph \{id = lesson_header_rect
		alpha = 1}
	doScreenElementMorph \{id = lesson_header_text
		alpha = 1}
	doScreenElementMorph \{id = lesson_header_body
		alpha = 1}
endscript

script training_hide_task_header 
	doScreenElementMorph \{id = task_header_rect
		alpha = 0}
	doScreenElementMorph \{id = task_header_text
		alpha = 0}
	doScreenElementMorph \{id = task_header_body
		alpha = 0}
endscript

script training_show_task_header 
	doScreenElementMorph \{id = task_header_rect
		alpha = 1}
	doScreenElementMorph \{id = task_header_text
		alpha = 1}
	doScreenElementMorph \{id = task_header_body
		alpha = 1}
endscript

script training_set_lesson_header_text \{text = ""}
	SetScreenElementProps id = lesson_header_text text = <text>
endscript

script training_set_lesson_header_body \{text = ""}
	SetScreenElementProps id = lesson_header_body text = <text>
endscript

script training_set_task_header_body \{text = ""}
	SetScreenElementProps id = task_header_body text = <text>
endscript

script training_hide_vo_sub 
	doScreenElementMorph \{id = temp_vo_sub_rect
		alpha = 0}
	doScreenElementMorph \{id = temp_vo_sub_body
		alpha = 0}
endscript

script training_show_vo_sub 
	doScreenElementMorph \{id = temp_vo_sub_rect
		alpha = 1}
	doScreenElementMorph \{id = temp_vo_sub_body
		alpha = 1}
endscript

script training_add_arrow \{pos = (640.0, 360.0)
		rot = 0
		z = 5
		scale = 1.0}
	if NOT GotParam \{life}
		life = ($training_arrow_life)
	endif
	SetSearchAllAssetContexts
	CreateScreenElement {
		parent = training_container
		type = SpriteElement
		just = [center bottom]
		texture = training_arrow_blue
		pos = <pos>
		rot_angle = <rot>
		scale = <scale>
		rgba = [255 255 255 255]
		z_priority = <z>
	}
	arrow_id = <id>
	SetSearchAllAssetContexts \{off}
	<arrow_id> :SetTags phase = 0.0
	<arrow_id> :SetTags phase_change = 1
	cos <rot>
	sin <rot>
	<arrow_id> :SetTags phase_direction = ((1.0, 0.0) * <sin> + (0.0, -1.0) * <cos>)
	<arrow_id> :SetTags alive = 0.0
	<arrow_id> :SetTags initial_pos = <pos>
	spawnscriptnow training_make_pointer_point_now params = {id = <arrow_id> life = <life>} id = training_spawned_script
endscript

script training_make_pointer_point_now 
	if NOT GotParam \{id}
		ScriptAssert \{"Need id!"}
	endif
	begin
	GetDeltaTime \{ignore_slomo}
	<id> :GetTags
	arrow_age = (<alive> + <delta_time>)
	if (<arrow_age> > <life>)
		break
	endif
	<phase> = (<phase> + <delta_time> * <phase_change> * ($training_arrow_movement_speed))
	if (<phase> > 1)
		<phase> = 1
		<phase_change> = -1
	elseif (<phase> < 0)
		<phase> = 0
		<phase_change> = 1
	endif
	new_pos = (<initial_pos> + <phase_direction> * ($training_arrow_movement_distance) * <phase>)
	SetScreenElementProps id = <id> pos = (<new_pos>)
	<id> :SetTags alive = (<arrow_age>)
	<id> :SetTags phase = (<phase>)
	<id> :SetTags phase_change = (<phase_change>)
	Wait \{1
		gameframe}
	repeat
	DestroyScreenElement id = <id>
endscript

script set_vo_sub_text 
	SetScreenElementProps id = temp_vo_sub_body text = <text>
endscript

script training_init_session 
	change \{game_mode = tutorial}
	CrowdReset
	Menu_Music_Off
	destroy_bg_viewport
	setup_bg_viewport
	GetGlobalTags \{user_options}
	if (<lefty_flip_p2> = 1)
		change \{save_lefty_flip_p2 = 1}
		SetGlobalTags \{user_options
			params = {
				lefty_flip_p2 = 0
			}}
	else
		change \{save_lefty_flip_p2 = 0}
	endif
	destroy_crowd_models
	GetPakManCurrentName \{map = zones}
	if GotParam \{pakname}
		if NOT (<pakname> = "z_soundcheck")
			ResetWaypoints
			SetPakManCurrentBlock \{map = zones
				pak = z_soundcheck
				block_scripts = 1}
		endif
	else
		ResetWaypoints
		SetPakManCurrentBlock \{map = zones
			pak = z_soundcheck
			block_scripts = 1}
	endif
	SafeKill \{nodeName = Z_SoundCheck_GFX_TRG_LH_HotSpot01}
	SafeKill \{nodeName = Z_SoundCheck_GFX_TRG_LH_HotSpot_P2}
	UnPauseGame
	training_create_and_hide_headers
	training_hide_vo_sub
	PlayIGCCam \{id = cs_view_cam_id
		name = ch_view_cam
		viewport = bg_viewport
		LockTo = world
		pos = (-0.068807, 1.5990009, 5.7975965)
		Quat = (0.000506, 0.99942994, -0.017537998)
		FOV = 72.0
		Play_hold = 1
		interrupt_current}
	change \{current_crowd = 1.0}
	change \{structurename = player1_status
		current_health = 1.0}
	hide_band
endscript

script training_kill_session 
	PauseGame
	KillCamAnim \{name = ch_view_cam}
	destroy_bg_viewport
	setup_bg_viewport
	training_destroy_lesson_and_task_headers
	if ($save_lefty_flip_p2 = 1)
		SetGlobalTags \{user_options
			params = {
				lefty_flip_p2 = $save_lefty_flip_p2
			}}
	endif
	if NOT GotParam \{shutdown}
		spawnscriptnow \{menu_music_on}
	endif
	change \{disable_note_input = 0}
	change \{tutorial_disable_hud = 0}
	unpausespawnedscript \{training_script_update}
endscript

script training_are_notes_flipped 
	GetGlobalTags \{user_options
		params = {
			lefty_flip_p1
		}}
	if (<lefty_flip_p1> = 1)
		return \{true}
	endif
	return \{false}
endscript

script show_training_pause_screen 
	if GameIsPaused
		return
	endif
	PauseGame
	PauseGh3Sounds
	training_create_pause_backdrop <...>
	if IsWinPort
		change \{winport_in_top_pause_menu = 1}
	endif
endscript

script create_training_pause_handler 
	event_handlers = [{pad_start show_training_pause_screen}]
	new_menu {
		scrollid = menu_tutorial
		vmenuid = vmenu_tutorial
		menu_pos = (120.0, 190.0)
		use_backdrop = 0
		event_handlers = <event_handlers>
	}
endscript
tutorial_okay_to_create_pause_handler = 1

script enable_tutorial_pause 
	change \{tutorial_okay_to_create_pause_handler = 1}
endscript
training_pause_z = 100
training_prev_paused_title = none

script training_create_pause_backdrop 
	if NOT ScreenElementExists \{id = training_backdrop_container}
		change \{tutorial_pause_current_item = 1}
		create_pause_menu_frame \{z = $training_pause_z}
		CreateScreenElement \{type = ContainerElement
			parent = root_window
			id = training_backdrop_container
			pos = (0.0, 0.0)
			just = [
				left
				top
			]}
		displaySprite parent = training_backdrop_container tex = Dialog_Title_BG flip_v pos = (416.0, 100.0) dims = (224.0, 224.0) z = ($training_pause_z + 10)
		displaySprite parent = training_backdrop_container tex = Dialog_Title_BG pos = (640.0, 100.0) dims = (224.0, 224.0) z = ($training_pause_z + 10)
		if GotParam \{UseLastTitle}
			if ($training_prev_paused_title = failed)
				title = "NO SUPERADO"
				SoundEvent \{event = GH_SFX_You_Lose_Single_Player}
			else
				title = "EN PAUSA"
			endif
		else
			if GotParam \{SongFailed}
				title = "NO SUPERADO"
				SoundEvent \{event = GH_SFX_You_Lose_Single_Player}
				training_prev_paused_title = failed
			else
				title = "EN PAUSA"
				training_prev_paused_title = paused
			endif
		endif
		CreateScreenElement {
			type = TextElement
			parent = training_backdrop_container
			id = lesson_song_failed_text
			font = fontgrid_title_gh3
			text = <title>
			just = [center center]
			pos = {(640.0, 217.0) relative}
			rgba = [223 223 223 255]
			scale = (1.2, 1.2)
			z_priority = ($training_pause_z + 12)
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [0 0 0 255]
		}
		GetScreenElementDims id = <id>
		fit_text_in_rectangle id = <id> dims = (<Height> * (0.0, 1.0) + (300.0, 0.0)) only_if_larger_x = 1 start_x_scale = 1.2 start_y_scale = 1.2
		CreateScreenElement {
			type = TextElement
			parent = training_backdrop_container
			id = lesson_continue_text
			just = [center center]
			pos = (640.0, 350.0)
			font = fontgrid_title_gh3
			text = "CONTINÚA"
			scale = 1.0
			rgba = ($training_text_color)
			z_priority = ($training_pause_z + 3)
		}
		CreateScreenElement {
			type = TextElement
			parent = training_backdrop_container
			id = lesson_restart_text
			just = [center center]
			pos = (640.0, 405.0)
			font = fontgrid_title_gh3
			text = "REINICIAR"
			scale = 1.0
			rgba = ($training_text_color)
			z_priority = ($training_pause_z + 3)
		}
		CreateScreenElement {
			type = TextElement
			parent = training_backdrop_container
			id = lesson_quit_text
			just = [center center]
			pos = (640.0, 460.0)
			font = fontgrid_title_gh3
			text = "SALIR"
			scale = 1.0
			rgba = ($training_text_color)
			z_priority = ($training_pause_z + 3)
		}
		if ScreenElementExists \{id = menu_tutorial}
			LaunchEvent \{type = unfocus
				target = menu_tutorial}
		endif
		event_handlers = [
			{pad_up tutorial_pause_selection_up}
			{pad_down tutorial_pause_selection_down}
			{pad_start tutorial_resume}
			{pad_choose tutorial_pause_choose}
			{pad_back tutorial_resume}
		]
		new_menu {
			scrollid = menu_tutorial_pause
			vmenuid = vmenu_tutorial_pause
			menu_pos = (120.0, 190.0)
			use_backdrop = 0
			event_handlers = <event_handlers>
		}
		if ScreenElementExists \{id = menu_tutorial}
			LaunchEvent \{type = unfocus
				target = menu_tutorial}
		endif
		LaunchEvent \{type = focus
			target = menu_tutorial_pause}
		change \{tutorial_pause_current_item = 1}
		tutorial_pause_set_highlight selection = ($tutorial_pause_current_item)
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
		add_user_control_helper \{text = "SELECCIONAR"
			button = green
			z = 10000}
		add_user_control_helper \{text = "ATRÁS"
			button = red
			z = 10000}
		add_user_control_helper \{text = "ARRIBA/ABAJO"
			button = strumbar
			z = 10000}
	endif
endscript
tutorial_pause_current_item = 1

script tutorial_pause_selection_up 
	change tutorial_pause_current_item = ($tutorial_pause_current_item - 1)
	if ($tutorial_pause_current_item <= 0)
		change \{tutorial_pause_current_item = 3}
	endif
	generic_menu_up_or_down_sound \{up}
	tutorial_pause_set_highlight selection = ($tutorial_pause_current_item)
endscript

script tutorial_pause_selection_down 
	change tutorial_pause_current_item = ($tutorial_pause_current_item + 1)
	if ($tutorial_pause_current_item > 3)
		change \{tutorial_pause_current_item = 1}
	endif
	generic_menu_up_or_down_sound \{down}
	tutorial_pause_set_highlight selection = ($tutorial_pause_current_item)
endscript

script tutorial_pause_set_highlight 
	SetScreenElementProps id = lesson_continue_text rgba = ($training_text_color)
	SetScreenElementProps id = lesson_restart_text rgba = ($training_text_color)
	SetScreenElementProps id = lesson_quit_text rgba = ($training_text_color)
	switch (<selection>)
		case 1
		SetScreenElementProps \{id = lesson_continue_text
			rgba = [
				232
				232
				232
				232
			]}
		case 2
		SetScreenElementProps \{id = lesson_restart_text
			rgba = [
				232
				232
				232
				232
			]}
		case 3
		SetScreenElementProps \{id = lesson_quit_text
			rgba = [
				232
				232
				232
				232
			]}
	endswitch
endscript

script tutorial_pause_choose 
	switch ($tutorial_pause_current_item)
		case 1
		tutorial_resume
		case 2
		tutorial_restart
		case 3
		tutorial_quit_warning
	endswitch
endscript

script tutorial_resume 
	generic_menu_pad_choose_sound
	tutorial_close_pause_window
	if IsWinPort
		change \{winport_in_top_pause_menu = 0}
	endif
endscript

script tutorial_restart 
	tutorial_close_pause_window
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	training_destroy_gem_scroller \{delay = 0.0}
	training_kill_session
	kill_training_script_system
	StopAllSounds
	UnPauseGame
	UnpauseGh3Sounds
	setslomo \{1.0}
	setslomo_song \{slomo = 1.0}
	enable_pause
	generic_menu_pad_choose_sound
	run_training_script \{Restart_Lesson}
endscript

script tutorial_shutdown 
	tutorial_close_pause_window
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	training_destroy_gem_scroller \{delay = 0.0}
	training_kill_session \{shutdown}
	kill_training_script_system
	StopAllSounds
	change \{disable_note_input = 0}
	change \{tutorial_disable_hud = 0}
	setslomo \{1.0}
	setslomo_song \{slomo = 1.0}
endscript

script tutorial_quit 
	tutorial_shutdown
	generic_menu_pad_choose_sound
	UnPauseGame
	UnpauseGh3Sounds
	enable_pause
	SetScreenElementProps \{id = root_window
		event_handlers = [
			{
				pad_start
				gh3_start_pressed
			}
		]
		replace_handlers}
	ui_flow_manager_respond_to_action \{action = quit_tutorial}
endscript

script tutorial_quit_warning 
	SoundEvent \{event = ui_sfx_select}
	Wait \{0.7
		seconds
		ignoreslomo}
	tutorial_close_pause_window
	PauseGame
	PauseGh3Sounds
	training_create_quit_warning_backdrop
endscript

script training_destroy_pause_backdrop 
	safe_destroy \{id = training_backdrop_container}
	safe_destroy \{id = ts_controller}
	clean_up_user_control_helpers
endscript

script tutorial_close_pause_window 
	if ScreenElementExists \{id = menu_tutorial_pause}
		LaunchEvent \{type = unfocus
			target = menu_tutorial_pause}
	else
		return
	endif
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = focus
			target = menu_tutorial}
	endif
	training_destroy_pause_backdrop
	destroy_pause_menu_frame
	destroy_menu \{menu_id = menu_tutorial_pause}
	UnPauseGame
	UnpauseGh3Sounds
endscript

script training_get_language_prefix 
	if English
		return \{language_prefix = 'EN'}
	elseif German
		return \{language_prefix = 'GR'}
	elseif French
		return \{language_prefix = 'FR'}
	elseif Italian
		return \{language_prefix = 'IT'}
	elseif Spanish
		return \{language_prefix = 'SP'}
	endif
	return \{language_prefix = 'EN'}
endscript

script training_play_sound 
	if NOT GotParam \{Sound}
		printf \{"training_play_sound called without sound param"}
		return
	endif
	training_get_language_prefix
	FormatText checksumname = sound_id '%a_%b' a = <language_prefix> b = <Sound>
	PlaySound <sound_id> buss = Training_VO
	if GotParam \{Wait}
		begin
		if NOT issoundplaying <sound_id>
			break
		endif
		Wait \{1
			gameframe}
		repeat
	endif
endscript

script training_wait_for_sound 
	if NOT GotParam \{Sound}
		printf \{"training_wait_for_sound called without sound param"}
		return
	endif
	training_get_language_prefix
	FormatText checksumname = sound_id '%a_%b' a = <language_prefix> b = <Sound>
	begin
	if NOT issoundplaying <sound_id>
		break
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script training_is_sound_playing 
	if NOT GotParam \{Sound}
		printf \{"training_is_sound_playing called without sound param"}
		return
	endif
	training_get_language_prefix
	FormatText checksumname = sound_id '%a_%b' a = <language_prefix> b = <Sound>
	if issoundplaying <sound_id>
		return \{true}
	else
		return \{false}
	endif
endscript

script training_play_positive \{who = god}
	if (<who> = god)
		RandomNoRepeat (
			@ training_play_sound \{Sound = 'Tutorial_God_Positive_01'}
			@ training_play_sound \{Sound = 'Tutorial_God_Positive_02'}
			@ training_play_sound \{Sound = 'Tutorial_God_Positive_03'}
			@ training_play_sound \{Sound = 'Tutorial_God_Positive_05'}
			@ training_play_sound \{Sound = 'Tutorial_God_Positive_06'}
			@ training_play_sound \{Sound = 'Tutorial_God_Positive_07'}
			)
	elseif (<who> = lou)
		RandomNoRepeat (
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_01'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_02'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_03'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_04'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_05'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_06'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Positive_07'}
			)
	endif
endscript

script training_play_negative \{who = god}
	if (<who> = god)
		RandomNoRepeat (
			@ training_play_sound \{Sound = 'Tutorial_God_Negative_01'}
			@ training_play_sound \{Sound = 'Tutorial_God_Negative_02'}
			@ training_play_sound \{Sound = 'Tutorial_God_Negative_03'}
			@ training_play_sound \{Sound = 'Tutorial_God_Negative_04'}
			@ training_play_sound \{Sound = 'Tutorial_God_Negative_05'}
			@ training_play_sound \{Sound = 'Tutorial_God_Negative_06'}
			)
	elseif (<who> = lou)
		RandomNoRepeat (
			@ training_play_sound \{Sound = 'Tutorial_Lou_Negative_01'}
			@ training_play_sound \{Sound = 'Tutorial_Lou_Negative_02'}
			)
	endif
endscript

script safe_show 
	if ScreenElementExists id = <id>
		doScreenElementMorph id = <id> alpha = 1
	endif
endscript

script safe_hide 
	if ScreenElementExists id = <id>
		doScreenElementMorph id = <id> alpha = 0
	endif
endscript

script safe_destroy 
	if ScreenElementExists id = <id>
		DestroyScreenElement id = <id>
	endif
endscript

script training_display_notes_hit 
	FormatText TextName = hit_text "Notas acertadas: %a de 8" a = <notes_hit>
	if ScreenElementExists \{id = notes_hit_text}
		DestroyScreenElement \{id = notes_hit_text}
	endif
	CreateScreenElement {
		type = TextElement
		parent = training_container
		id = notes_hit_text
		just = [center center]
		pos = (920.0, 225.0)
		font = ($training_font)
		text = <hit_text>
		scale = 0.7
		rgba = ($training_text_color)
		z_priority = 50
	}
endscript

script training_start_gem_scroller 
	if NOT CompositeObjectExists \{name = Guitarist}
		change \{structurename = player1_status
			character_id = axel}
		create_guitarist
	endif
	if NOT CompositeObjectExists \{name = bassist}
		change \{structurename = player2_status
			character_id = axel}
		create_guitarist \{name = bassist}
	endif
	hide_band
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = unfocus
			target = menu_tutorial}
		destroy_menu \{menu_id = menu_tutorial}
	endif
	disable_pause
	change \{tutorial_okay_to_create_pause_handler = 0}
	change \{current_transition = fastintro}
	start_gem_scroller song_name = <song> difficulty = easy difficulty2 = easy StartTime = 0 device_num = ($player1_status.controller) training_mode = 1 <...>
	begin
	if ($tutorial_okay_to_create_pause_handler = 1)
		break
	endif
	Wait \{1
		gameframe}
	repeat
	create_training_pause_handler
	change \{structurename = player1_status
		current_health = 1.0}
	change \{structurename = player2_status
		current_health = 1.0}
	change \{structurename = player1_status
		star_power_amount = 0.0}
	change \{structurename = player1_status
		star_power_used = 0}
	change \{structurename = player1_status
		current_num_powerups = 0}
	change \{current_crowd = 1.0}
	change \{training_song_over = 0}
	change \{notes_hit = 0}
	change \{notes_missed = 0}
	change \{disable_note_input = 1}
endscript

script training_pause_gem_scroller 
	setslomo \{0.0}
	setslomo_song \{slomo = 0.0}
endscript

script training_resume_gem_scroller 
	setslomo \{1.0}
	setslomo_song \{slomo = 1.0}
	change \{disable_note_input = 0}
endscript

script training_show_title 
	CreateScreenElement {
		type = TextElement
		parent = training_container
		id = lesson_title_text
		just = [center center]
		pos = (640.0, 350.0)
		font = fontgrid_title_gh3
		text = <title>
		scale = 1.0
		rgba = ($training_text_color)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
endscript

script training_destroy_title 
	safe_destroy \{id = lesson_title_text}
endscript

script training_wait_for_gem_scroller_time 
	begin
	GetSongTime
	if (<songtime> >= <time>)
		return
	endif
	Wait \{1
		gameframe}
	repeat
endscript

script training_create_quit_warning_backdrop 
	if NOT ScreenElementExists \{id = training_backdrop_container}
		change \{tutorial_verify_quit_current_item = 1}
		create_pause_menu_frame \{z = $training_pause_z}
		CreateScreenElement \{type = ContainerElement
			parent = root_window
			id = training_backdrop_container
			pos = (0.0, 0.0)
			just = [
				left
				top
			]}
		displaySprite parent = training_backdrop_container tex = Dialog_Title_BG flip_v pos = (416.0, 100.0) dims = (224.0, 224.0) z = ($training_pause_z + 10)
		displaySprite parent = training_backdrop_container tex = Dialog_Title_BG pos = (640.0, 100.0) dims = (224.0, 224.0) z = ($training_pause_z + 10)
		title = "ADVERTENCIA"
		CreateScreenElement {
			type = TextElement
			parent = training_backdrop_container
			id = lesson_song_failed_text
			font = fontgrid_title_gh3
			text = <title>
			just = [center center]
			pos = {(640.0, 217.0) relative}
			rgba = [223 223 223 255]
			scale = (1.2, 1.2)
			z_priority = ($training_pause_z + 12)
			shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba = [0 0 0 255]
		}
		textblock = {
			text = "Si sales de este tema se perderá todo el progreso que no haya sido guardado. ¿Seguro que quieres salir de este tema?"
			dims = (600.0, 400.0)
			scale = 0.6
		}
		CreateScreenElement {
			type = TextBlockElement
			font = ($popup_warning_menu_font)
			just = [center center]
			pos = (640.0, 375.0)
			dims = (700.0, 400.0)
			scale = 0.6
			parent = training_backdrop_container
			rgba = (($g_menu_colors).light_brown)
			shadow
			shadow_offs = (5.0, 5.0)
			shadow_rgba = [0 0 0 255]
			z_priority = ($training_pause_z + 2)
			<textblock>
		}
		<menu_pos> = (640.0, 510.0)
		<menu_bg_offset> = (0.0, -28.0)
		CreateScreenElement {
			type = VMenu
			parent = training_backdrop_container
			id = options_bg_id
			pos = (<menu_pos> + <menu_bg_offset>)
			just = [center top]
			internal_just = [center center]
		}
		displaySprite parent = options_bg_id tex = dialog_bg z = ($training_pause_z + 12)
		displaySprite parent = options_bg_id tex = dialog_bg flip_h z = ($training_pause_z + 12)
		CreateScreenElement {
			type = TextElement
			font = ($popup_warning_menu_font)
			parent = training_backdrop_container
			text = "CANCELAR"
			id = tutorial_quit_warning_cancel
			pos = (<menu_pos> + (0.0, 23.0))
			scale = (1.0, 1.0)
			rgba = [0 0 0 255]
			font_spacing = 0
			just = [center center]
			z_priority = ($training_pause_z + 13)
		}
		CreateScreenElement {
			type = TextElement
			font = ($popup_warning_menu_font)
			parent = training_backdrop_container
			text = "SALIR"
			id = tutorial_quit_warning_quit
			scale = (1.0, 1.0)
			pos = (<menu_pos> + (0.0, 71.0))
			rgba = [0 0 0 255]
			font_spacing = 0
			just = [center center]
			z_priority = ($training_pause_z + 13)
		}
		if ScreenElementExists \{id = menu_tutorial}
			LaunchEvent \{type = unfocus
				target = menu_tutorial}
		endif
		event_handlers = [
			{pad_up tutorial_quit_warning_selection_up}
			{pad_down tutorial_quit_warning_selection_down}
			{pad_start tutorial_quit_warning_resume}
			{pad_choose tutorial_quit_warning_choose}
			{pad_back tutorial_quit_warning_resume}
		]
		new_menu {
			scrollid = menu_tutorial_pause
			vmenuid = vmenu_tutorial_pause
			menu_pos = (120.0, 190.0)
			use_backdrop = 0
			event_handlers = <event_handlers>
		}
		if ScreenElementExists \{id = menu_tutorial}
			LaunchEvent \{type = unfocus
				target = menu_tutorial}
		endif
		LaunchEvent \{type = focus
			target = menu_tutorial_pause}
		change \{tutorial_pause_current_item = 1}
		tutorial_quit_warning_set_highlight selection = ($tutorial_pause_current_item)
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
		add_user_control_helper \{text = "SELECCIONAR"
			button = green
			z = 10000}
		add_user_control_helper \{text = "ATRÁS"
			button = red
			z = 10000}
		add_user_control_helper \{text = "ARRIBA/ABAJO"
			button = strumbar
			z = 10000}
	endif
endscript

script tutorial_quit_warning_set_highlight 
	set_focus_color \{color = pink}
	set_unfocus_color \{color = dk_violet_grey}
	if ($tutorial_verify_quit_current_item = 1)
		doScreenElementMorph id = tutorial_quit_warning_cancel rgba = ($menu_focus_color)
		doScreenElementMorph id = tutorial_quit_warning_quit rgba = ($menu_unfocus_color)
	else
		doScreenElementMorph id = tutorial_quit_warning_cancel rgba = ($menu_unfocus_color)
		doScreenElementMorph id = tutorial_quit_warning_quit rgba = ($menu_focus_color)
	endif
endscript
tutorial_verify_quit_current_item = 1

script tutorial_quit_warning_selection_up 
	change tutorial_verify_quit_current_item = ($tutorial_verify_quit_current_item - 1)
	if ($tutorial_verify_quit_current_item <= 0)
		change \{tutorial_verify_quit_current_item = 2}
	endif
	generic_menu_up_or_down_sound \{up}
	tutorial_quit_warning_set_highlight selection = ($tutorial_verify_quit_current_item)
endscript

script tutorial_quit_warning_selection_down 
	change tutorial_verify_quit_current_item = ($tutorial_verify_quit_current_item + 1)
	if ($tutorial_verify_quit_current_item > 2)
		change \{tutorial_verify_quit_current_item = 1}
	endif
	generic_menu_up_or_down_sound \{down}
	tutorial_quit_warning_set_highlight selection = ($tutorial_verify_quit_current_item)
endscript

script tutorial_quit_warning_resume 
	tutorial_close_quit_warning_screen
	training_create_pause_backdrop \{UseLastTitle}
endscript

script tutorial_quit_warning_choose 
	tutorial_close_quit_warning_screen
	if ($tutorial_verify_quit_current_item = 1)
		generic_menu_pad_choose_sound
		training_create_pause_backdrop \{UseLastTitle}
	else
		tutorial_quit
	endif
endscript

script tutorial_close_quit_warning_screen 
	if ScreenElementExists \{id = menu_tutorial_pause}
		LaunchEvent \{type = unfocus
			target = menu_tutorial_pause}
	else
		return
	endif
	if ScreenElementExists \{id = menu_tutorial}
		LaunchEvent \{type = focus
			target = menu_tutorial}
	endif
	training_destroy_pause_backdrop
	destroy_pause_menu_frame
	destroy_menu \{menu_id = menu_tutorial_pause}
endscript
