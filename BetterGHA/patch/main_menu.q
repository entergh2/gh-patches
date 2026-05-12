script create_main_menu_backdrop 
	shut_down_character_hub
	create_menu_backdrop \{texture = GH3_Main_Menu_BG}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_text_container
		parent = root_window
		pos = ($g_mm_base_menu_pos)
		just = [left top]
		z_priority = 3
	}
	CreateScreenElement \{type = ContainerElement
		id = main_menu_bg_container
		parent = root_window
		pos = (0.0, 0.0)
		z_priority = 3}
	CreateScreenElement \{type = SpriteElement
		id = main_menu_godrays1
		parent = main_menu_bg_container
		texture = main_menu_bg2
		pos = (400.0, 330.0)
		dims = (1280.0, 1280.0)
		just = [
			center
			center
		]
		z_priority = 1
		alpha = 0
		blend = Add}
	RunScriptOnScreenElement id = <id> rotate_menu_element params = {time = 30 id = <id>}
	CreateScreenElement \{type = SpriteElement
		id = main_menu_godrays2
		parent = main_menu_bg_container
		texture = main_menu_bg2
		pos = (400.0, 330.0)
		dims = (1280.0, 1280.0)
		just = [
			center
			center
		]
		z_priority = 1
		alpha = 0
		blend = Add
		flip_v}
	RunScriptOnScreenElement id = <id> rotate_menu_element params = {time = 60 id = <id>}
	CreateScreenElement \{type = SpriteElement
		parent = main_menu_bg_container
		texture = main_menu_illustrations
		pos = (55.0, 0.0)
		dims = (720.0, 720.0)
		just = [
			left
			top
		]
		z_priority = 2
		alpha = 0.9}
	CreateScreenElement \{type = SpriteElement
		parent = main_menu_bg_container
		texture = main_menu_logo
		pos = (870.0, 45.0)
		scale = 1
		just = [
			center
			top
		]
		z_priority = 2}
endscript

script create_main_menu 
	change \{winport_is_in_online_menu_system = 0}
	change \{main_menu_created = 1}
	ResetScoreUpdateReady
	GetGlobalTags \{user_options}
	menu_audio_settings_update_guitar_volume vol = <guitar_volume>
	menu_audio_settings_update_band_volume vol = <band_volume>
	menu_audio_settings_update_sfx_volume vol = <sfx_volume>
	SetSoundBussParams {Crowd = {vol = ($Default_BussSet.Crowd.vol)}}
	if ($main_menu_movie_first_time = 0)
		fadetoblack \{on
			time = 0
			alpha = 1.0
			z_priority = 900}
	endif
	create_main_menu_backdrop
	if ($main_menu_movie_first_time = 0 && $invite_controller = -1)
		change \{main_menu_movie_first_time = 1}
		fadetoblack \{off
			time = 0}
	endif
	SetMenuAutoRepeatTimes \{(0.3, 0.05)}
	kill_start_key_binding
	UnPauseGame
	change \{current_num_players = 1}
	change structurename = player1_status controller = ($primary_controller)
	change \{player_controls_valid = 0}
	disable_pause
	spawnscriptnow \{menu_music_on}
	if ($is_demo_mode = 1)
		demo_mode_disable = {rgba = [128 128 128 255] not_focusable}
	else
		demo_mode_disable = {rgba = [128 128 128 255] not_focusable}
	endif
	DeRegisterAtoms
	RegisterAtoms \{name = achievement
		$Achievement_Atoms}
	change \{setlist_previous_tier = 1}
	change \{setlist_previous_song = 0}
	change \{setlist_previous_tab = tab_setlist}
	change \{current_song = beyondbeautiful}
	change \{end_credits = 0}
	change \{battle_sudden_death = 0}
	change \{structurename = player1_status
		character_id = axel}
	change \{structurename = player2_status
		character_id = axel}
	safe_create_gh3_pause_menu
	new_menu {
		scrollid = main_menu_scrolling_menu
		vmenuid = vmenu_main_menu
		use_backdrop = 0
		menu_pos = ($g_mm_base_menu_pos)
		focus_color = dk_violet_red
		unfocus_color = md_violet_grey
		event_handlers = [
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = menu_flow_go_back}}
		]
	}
	change \{rich_presence_context = presence_main_menu}
	<text_x_scale> = 0.8
	<text_y_scale> = 1.0
	text_params = {
		type = TextElement
		font = text_a5
		scale = ((<text_x_scale> * (1.0, 0.0)) + (<text_y_scale> * (0.0, 1.0)))
		rgba = (($g_menu_colors).md_violet_grey)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = (($g_menu_colors).Block)
		z_priority = 60
	}
	<menu_offset> = (0.0, 45.0)
	<HLBar_dims> = (240.0, 45.0)
	<BE_dims> = (32.0, 46.0)
	<BEL_pos> = ((((<HLBar_dims>.(-1.0, 0.0)) / 2) * (1.0, 0.0)) + (-16.0, 0.0))
	<BER_pos> = ((((<HLBar_dims>.(1.0, 0.0)) / 2) * (1.0, 0.0)) + (16.0, 0.0))
	mm_hilite_color = (($g_menu_colors).lt_plum)
	CreateScreenElement \{type = ContainerElement
		id = main_menu_career
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'career'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'career'
				}
			}
			{
				pad_choose
				main_menu_select_career
			}
		]}
	CreateScreenElement {
		<text_params>
		parent = main_menu_career
		id = main_menu_career_text
		text = $career_text
	}
	GetScreenElementDims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	CreateScreenElement \{type = ContainerElement
		id = main_menu_career_HL
		pos = (0.0, -8.0)
		parent = main_menu_career
		alpha = 0}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_career_HLBar
		parent = main_menu_career_HL
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <HLBar_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_career_BEL
		parent = main_menu_career_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BEL_pos>
		flip_v
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_career_BER
		parent = main_menu_career_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BER_pos>
	}
	doScreenElementMorph \{id = main_menu_career_HL
		scale = (1.0, 0.01)
		relative_scale}
	CreateScreenElement \{type = ContainerElement
		id = main_menu_quickplay
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'quickplay'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'quickplay'
				}
			}
			{
				pad_choose
				main_menu_select_quickplay
			}
		]}
	CreateScreenElement {
		<text_params>
		parent = main_menu_quickplay
		id = main_menu_quickplay_text
		pos = (<menu_offset>)
		text = $quickplay_text
	}
	GetScreenElementDims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_quickplay_HL
		parent = main_menu_career
		pos = (<menu_offset> + (0.0, -8.0))
		alpha = 0
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_quickplay_HLBar
		parent = main_menu_quickplay_HL
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <HLBar_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_quickplay_BEL
		parent = main_menu_quickplay_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BEL_pos>
		flip_v
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_quickplay_BER
		parent = main_menu_quickplay_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BER_pos>
	}
	doScreenElementMorph \{id = main_menu_quickplay_HL
		scale = (1.0, 0.01)
		relative_scale}
	CreateScreenElement \{type = ContainerElement
		id = main_menu_multiplayer
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'multiplayer'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'multiplayer'
				}
			}
			{
				pad_choose
				main_menu_select_multiplayer
			}
		]}
	CreateScreenElement {
		<text_params>
		parent = main_menu_multiplayer
		id = main_menu_multiplayer_text
		pos = (<menu_offset> * 2)
		text = $multiplayer_text
	}
	GetScreenElementDims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_multiplayer_HL
		parent = main_menu_career
		pos = ((<menu_offset> * 2) + (0.0, -8.0))
		alpha = 0
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_multiplayer_HLBar
		parent = main_menu_multiplayer_HL
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <HLBar_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_multiplayer_BEL
		parent = main_menu_multiplayer_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BEL_pos>
		flip_v
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_multiplayer_BER
		parent = main_menu_multiplayer_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BER_pos>
	}
	doScreenElementMorph \{id = main_menu_multiplayer_HL
		scale = (1.0, 0.01)
		relative_scale}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_training
		parent = vmenu_main_menu
		event_handlers = [
			{focus main_menu_highlight params = {option = 'training'}}
			{unfocus main_menu_unhighlight params = {option = 'training'}}
			{pad_choose main_menu_select_training}
		]
	}
	CreateScreenElement {
		<text_params>
		parent = main_menu_training
		id = main_menu_training_text
		pos = (<menu_offset> * 3)
		text = $training_text
	}
	GetScreenElementDims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_training_HL
		parent = main_menu_career
		pos = ((<menu_offset> * 3) + (0.0, -8.0))
		alpha = 0
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_training_HLBar
		parent = main_menu_training_HL
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <HLBar_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_training_BEL
		parent = main_menu_training_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BEL_pos>
		flip_v
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_training_BER
		parent = main_menu_training_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BER_pos>
	}
	doScreenElementMorph \{id = main_menu_training_HL
		scale = (1.0, 0.01)
		relative_scale}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_leaderboards
		parent = vmenu_main_menu
		event_handlers = [
			{focus main_menu_highlight params = {option = 'leaderboards'}}
			{unfocus main_menu_unhighlight params = {option = 'leaderboards'}}
			{pad_choose main_menu_select_winport_online}
		]
		<demo_mode_disable>
	}
	if isXenon
		CreateScreenElement {
			<text_params>
			parent = main_menu_leaderboards
			id = main_menu_leaderboards_text
			pos = (<menu_offset> * 4)
			text = $online_text
		}
	else
		CreateScreenElement {
			<text_params>
			parent = main_menu_leaderboards
			id = main_menu_leaderboards_text
			pos = (<menu_offset> * 4)
			text = $online_text
		}
	endif
	GetScreenElementDims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_leaderboards_HL
		parent = main_menu_career
		pos = ((<menu_offset> * 4) + (0.0, -8.0))
		alpha = 0
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_leaderboards_HLBar
		parent = main_menu_leaderboards_HL
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <HLBar_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_leaderboards_BEL
		parent = main_menu_leaderboards_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BEL_pos>
		flip_v
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_leaderboards_BER
		parent = main_menu_leaderboards_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BER_pos>
	}
	doScreenElementMorph \{id = main_menu_leaderboards_HL
		scale = (1.0, 0.01)
		relative_scale}
	CreateScreenElement \{type = ContainerElement
		id = main_menu_options
		parent = vmenu_main_menu
		event_handlers = [
			{
				focus
				main_menu_highlight
				params = {
					option = 'options'
				}
			}
			{
				unfocus
				main_menu_unhighlight
				params = {
					option = 'options'
				}
			}
			{
				pad_choose
				main_menu_select_options
			}
		]}
	CreateScreenElement {
		<text_params>
		parent = main_menu_options
		id = main_menu_options_text
		pos = (<menu_offset> * 5)
		text = $options_text
	}
	GetScreenElementDims id = <id>
	fit_text_in_rectangle {
		id = <id>
		dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
		only_if_larger_x = 1
		start_x_scale = <text_x_scale>
		start_y_scale = <text_y_scale>
	}
	CreateScreenElement {
		type = ContainerElement
		id = main_menu_options_HL
		parent = main_menu_career
		pos = ((<menu_offset> * 5) + (0.0, -8.0))
		alpha = 0
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_options_HLBar
		parent = main_menu_options_HL
		texture = hilite_bar_01
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <HLBar_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_options_BEL
		parent = main_menu_options_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BEL_pos>
		flip_v
	}
	CreateScreenElement {
		type = SpriteElement
		id = main_menu_options_BER
		parent = main_menu_options_HL
		texture = character_hub_hilite_bookend
		rgba = <mm_hilite_color>
		alpha = 1
		dims = <BE_dims>
		pos = <BER_pos>
	}
	doScreenElementMorph \{id = main_menu_options_HL
		scale = (1.0, 0.01)
		relative_scale}
	if IsWinPort
		CreateScreenElement \{type = ContainerElement
			id = main_menu_exit
			parent = vmenu_main_menu
			event_handlers = [
				{
					focus
					main_menu_highlight
					params = {
						option = 'exit'
					}
				}
				{
					unfocus
					main_menu_unhighlight
					params = {
						option = 'exit'
					}
				}
				{
					pad_choose
					main_menu_select_exit
				}
			]}
		CreateScreenElement {
			<text_params>
			parent = main_menu_exit
			id = main_menu_exit_text
			pos = (<menu_offset> * 6)
			text = $exit_text
		}
		GetScreenElementDims id = <id>
		fit_text_in_rectangle {
			id = <id>
			dims = ((<Height> * (0.0, 1.0)) + (($g_mm_menu_max_width) * (1.0, 0.0)))
			only_if_larger_x = 1
			start_x_scale = <text_x_scale>
			start_y_scale = <text_y_scale>
		}
		CreateScreenElement {
			type = ContainerElement
			id = main_menu_exit_HL
			parent = main_menu_career
			pos = ((<menu_offset> * 6) + (0.0, -8.0))
			alpha = 0
		}
		CreateScreenElement {
			type = SpriteElement
			id = main_menu_exit_HLBar
			parent = main_menu_exit_HL
			texture = hilite_bar_01
			rgba = <mm_hilite_color>
			alpha = 1
			dims = <HLBar_dims>
		}
		CreateScreenElement {
			type = SpriteElement
			id = main_menu_exit_BEL
			parent = main_menu_exit_HL
			texture = character_hub_hilite_bookend
			rgba = <mm_hilite_color>
			alpha = 1
			dims = <BE_dims>
			pos = <BEL_pos>
			flip_v
		}
		CreateScreenElement {
			type = SpriteElement
			id = main_menu_exit_BER
			parent = main_menu_exit_HL
			texture = character_hub_hilite_bookend
			rgba = <mm_hilite_color>
			alpha = 1
			dims = <BE_dims>
			pos = <BER_pos>
		}
		doScreenElementMorph \{id = main_menu_exit_HL
			scale = (1.0, 0.01)
			relative_scale}
	endif
	if ($enable_button_cheats = 1)
		CreateScreenElement \{type = ContainerElement
			id = main_menu_debug_menu
			parent = vmenu_main_menu
			event_handlers = [
				{
					focus
					main_menu_highlight
					params = {
						option = 'debug_menu'
					}
				}
				{
					unfocus
					main_menu_unhighlight
					params = {
						option = 'debug_menu'
					}
				}
				{
					pad_choose
					ui_flow_manager_respond_to_action
					params = {
						action = select_debug_menu
					}
				}
			]}
		CreateScreenElement {
			<text_params>
			scale = (0.5, 0.5)
			parent = main_menu_debug_menu
			id = main_menu_debug_menu_text
			pos = (<menu_offset> * 6)
			text = $debug_menu_text
		}
	endif
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
	add_user_control_helper \{text = $buttons_select
		button = green
		z = 100}
	add_user_control_helper \{text = $buttons_up_down
		button = strumbar
		z = 100}
	if NOT ($invite_controller = -1)
		change \{invite_controller = -1}
		ui_flow_manager_respond_to_action \{action = select_xbox_live}
		fadetoblack \{off
			time = 0}
	else
		LaunchEvent \{type = focus
			target = vmenu_main_menu}
	endif
endscript
