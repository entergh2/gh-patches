menu_mp_select_mode_font = text_a4
coop_dlc_active = 0
menu_mp_select_mode_is_friendly_faceoff = 0

script create_mp_select_mode_menu 
	change \{coop_dlc_active = 0}
	change \{menu_mp_select_mode_is_friendly_faceoff = 0}
	change \{rich_presence_context = presence_main_menu}
	if (($is_network_game) = 1)
		title_text = "Crear partida"
		title_pos = (588.0, 105.0)
		left_flourish_offset = (-187.0, -9.0)
		right_flourish_offset = (-210.0, -28.0)
	else
		title_text = "MULTIJUGADOR"
		title_pos = (588.0, 105.0)
		left_flourish_offset = (-170.0, -10.0)
		right_flourish_offset = (-193.0, -29.5)
	endif
	if (($player1_status.bot_play = 1) || ($is_network_game))
		exclusive_mp_controllers = ($primary_controller)
	else
		exclusive_mp_controllers = [0 , 0]
		SetArrayElement ArrayName = exclusive_mp_controllers index = 0 newvalue = ($player1_device)
		SetArrayElement ArrayName = exclusive_mp_controllers index = 1 newvalue = ($player2_device)
	endif
	new_menu {
		scrollid = scrolling_mp_select_mode_menu
		vmenuid = vmenu_mp_select_mode_menu
		menu_pos = (500.0, 462.0)
		exclusive_device = <exclusive_mp_controllers>
		internal_just = [center center]
		no_focus = 1
		padding_scale = 0.9
		focus_color = pinkish_red
		unfocus_color = black
	}
	SetScreenElementProps \{id = vmenu_mp_select_mode_menu
		rot_angle = -3}
	if ((($is_network_game) = 1) && (($match_type) = player))
		scale = 0.85
	else
		scale = 0.85
	endif
	text_params = {
		type = TextElement
		parent = vmenu_mp_select_mode_menu
		font = ($menu_mp_select_mode_font)
		scale = <scale>
		rgba = ($menu_unfocus_color)
		rot_angle = 0
		just = [center center]
	}
	create_menu_backdrop \{texture = Multiplayer_2p_BG}
	z = 1
	g_rot_angle = -3
	CreateScreenElement \{type = ContainerElement
		id = mpsm_container
		parent = root_window
		pos = (0.0, 0.0)}
	CreateScreenElement {
		type = SpriteElement
		parent = mpsm_container
		texture = Multiplayer_2p_LP
		id = record
		just = [center center]
		pos = (850.0, 340.0)
		dims = (540.0, 540.0)
		z_priority = (<z> + 0.1)
	}
	spawnscriptnow \{menu_select_multiplayer_mode_record_rotate}
	CreateScreenElement {
		type = SpriteElement
		parent = mpsm_container
		texture = Multiplayer_2p_Jacket_02
		just = [center center]
		pos = (600.0, 360.0)
		rot_angle = <g_rot_angle>
		dims = (600.0, 600.0)
		z_priority = (<z> + 0.2)
	}
	blood_splat_dims = (164.0, 164.0)
	CreateScreenElement {
		type = SpriteElement
		parent = mpsm_container
		texture = Multiplayer_2p_Hilite_01
		id = blood_splat_01
		just = [center center]
		pos = (3040.0, 3060.0)
		z_priority = (<z> + 2)
		rgba = [20 180 20 0]
		just = [0 0.7]
		dims = <blood_splat_dims>
	}
	CreateScreenElement {
		type = SpriteElement
		parent = mpsm_container
		texture = Multiplayer_2p_Hilite_02
		id = blood_splat_02
		just = [center center]
		pos = (3040.0, 3060.0)
		z_priority = (<z> + 2)
		rgba = [20 180 20 0]
		just = [0.25 0.4]
		dims = <blood_splat_dims>
	}
	CreateScreenElement {
		type = TextElement
		parent = mpsm_container
		font = ($menu_mp_select_mode_font)
		text = <title_text>
		id = multiplayer_text
		rgba = [220 220 220 250]
		pos = <title_pos>
		scale = (1.5, 1.3)
		font_spacing = 2
		rot_angle = <g_rot_angle>
	}
	CreateScreenElement {
		type = TextElement
		parent = mpsm_container
		font = ($menu_mp_select_mode_font)
		text = "ELEGIR MODO"
		just = [right top]
		rgba = [100 100 100 250]
		pos = (623.0, 140.0)
		scale = (0.8, 0.8)
		font_spacing = 2
		rot_angle = <g_rot_angle>
	}
	fastscreenelementpos \{id = multiplayer_text
		absolute}
	GetScreenElementDims \{id = multiplayer_text}
	mp_text_center = (<screenelementpos> + (0.0, 0.5) * <Height>)
	flourish_dims = ((64.0, 32.0) * 1.3)
	<left_flourish_offset> = ((-0.5, 0.0) * <width> + (0.0, -5.0))
	CreateScreenElement {
		type = SpriteElement
		parent = mpsm_container
		texture = Multiplayer_2p_Flourish
		pos = (<mp_text_center> + <left_flourish_offset>)
		rot_angle = <g_rot_angle>
		dims = <flourish_dims>
		z_priority = (<z> + 3)
		rgba = [220 220 220 250]
		just = [right center]
		flip_v
	}
	<right_flourish_offset> = ((0.5, 0.0) * <width> + (0.0, -20.0))
	CreateScreenElement {
		type = SpriteElement
		parent = mpsm_container
		texture = Multiplayer_2p_Flourish
		pos = (<mp_text_center> + <right_flourish_offset>)
		rot_angle = <g_rot_angle>
		dims = <flourish_dims>
		z_priority = (<z> + 3)
		rgba = [220 220 220 250]
		just = [left center]
	}
	CreateScreenElement {
		<text_params>
		id = sm_faceofftext_id
		text = "DUELO"
		event_handlers = [
			{focus menu_select_multiplayer_mode_focus}
			{unfocus menu_select_multiplayer_mode_unfocus}
			{pad_choose mp_select_mode_menu_select_mode params = {mode = p2_faceoff}}
		]
	}
	CreateScreenElement {
		<text_params>
		text = "DUELO PRO"
		event_handlers = [
			{focus menu_select_multiplayer_mode_focus}
			{unfocus menu_select_multiplayer_mode_unfocus}
			{pad_choose mp_select_mode_menu_select_mode params = {mode = p2_pro_faceoff friendly}}
		]
	}
	CreateScreenElement {
		<text_params>
		text = "GUERRA"
		event_handlers = [
			{focus menu_select_multiplayer_mode_focus}
			{unfocus menu_select_multiplayer_mode_unfocus}
			{pad_choose mp_select_mode_menu_select_mode params = {mode = p2_battle}}
		]
	}
	if ((($is_network_game) = 1) && (($match_type) = player))
		CreateScreenElement {
			<text_params>
			text = "COOP."
			event_handlers = [
				{focus menu_select_multiplayer_mode_focus}
				{unfocus menu_select_multiplayer_mode_unfocus}
				{pad_choose mp_select_mode_menu_select_mode params = {mode = p2_coop}}
			]
		}
	elseif ($is_network_game = 0)
	endif
	if (($is_network_game) = 0)
		CreateScreenElement {
			<text_params>
			text = "COOP."
			event_handlers = [
				{focus menu_select_multiplayer_mode_focus}
				{unfocus menu_select_multiplayer_mode_unfocus}
				{pad_choose mp_select_mode_menu_select_mode params = {mode = p2_quickplay}}
			]
		}
	endif
	add_user_control_helper \{text = "SELECCIONAR"
		button = green}
	add_user_control_helper \{text = "ATRÁS"
		button = red}
	add_user_control_helper \{text = "ARRIBA/ABAJO"
		button = strumbar}
	Wait \{1
		gameframe}
	LaunchEvent \{type = focus
		target = vmenu_mp_select_mode_menu}
endscript

script destroy_mp_select_mode_menu 
	destroy_menu \{menu_id = scrolling_mp_select_mode_menu}
	destroy_menu_backdrop
	destroy_menu \{menu_id = mpsm_container}
	KillSpawnedScript \{name = menu_select_multiplayer_mode_record_rotate}
	clean_up_user_control_helpers
endscript

script mp_select_mode_menu_select_mode \{mode = p2_faceoff}
	LaunchEvent \{type = unfocus
		target = vmenu_mp_select_mode_menu}
	if GotParam \{friendly}
		change \{menu_mp_select_mode_is_friendly_faceoff = 1}
	endif
	change game_mode = <mode>
	if GotParam \{set_coop_dlc}
		change \{coop_dlc_active = 1}
	endif
	if (($is_network_game) = 1)
		ui_flow_manager_respond_to_action \{action = select_game_mode}
		if ScreenElementExists \{id = vmenu_mp_select_mode_menu}
			LaunchEvent \{type = focus
				target = vmenu_mp_select_mode_menu}
		endif
	else
		if ($game_mode = p2_quickplay)
			ui_flow_manager_respond_to_action \{action = select_coop
				create_params = {
					player = 2
				}}
		else
			ui_flow_manager_respond_to_action \{action = select_faceoff
				create_params = {
					player = 2
				}}
		endif
		if ScreenElementExists \{id = vmenu_mp_select_mode_menu}
			LaunchEvent \{type = focus
				target = vmenu_mp_select_mode_menu}
		endif
	endif
endscript
record_angle_change = 1

script menu_select_multiplayer_mode_record_rotate 
	begin
	GetScreenElementProps \{id = record}
	new_rot_angle = (<rot_angle> + ($record_angle_change))
	if (<new_rot_angle> > 360.0)
		<new_rot_angle> = (<new_rot_angle> - 360.0)
	elseif (<new_rot_angle> < (-360.0))
		<new_rot_angle> = (<new_rot_angle> + 360.0)
	endif
	SetScreenElementProps id = record rot_angle = (<new_rot_angle>)
	Wait \{1
		gameframes}
	repeat
endscript

script menu_select_multiplayer_mode_focus 
	retail_menu_focus
	change record_angle_change = (-1 * ($record_angle_change))
	GetTags
	GetScreenElementProps id = <id>
	<id> :DoMorph pos = (<pos> + (0.0, -1.5))
	<id> :DoMorph scale = 1.05 time = 0.25
	menu_select_multiplayer_mode_attach_random_blood_splat id = <id>
endscript

script menu_select_multiplayer_mode_unfocus 
	retail_menu_unfocus
	GetTags
	GetScreenElementProps id = <id>
	if ((($is_network_game) = 1) && (($match_type) = player))
		scale = 0.85
	else
		scale = 0.85
	endif
	<id> :DoMorph pos = (<pos> + (0.0, 1.5))
	<id> :DoMorph scale = <scale> time = 0.25
endscript

script menu_select_multiplayer_mode_attach_random_blood_splat 
	SetScreenElementProps \{id = blood_splat_01
		rgba = [
			0
			0
			0
			0
		]}
	SetScreenElementProps \{id = blood_splat_02
		rgba = [
			0
			0
			0
			0
		]}
	GetScreenElementPosition id = <id> absolute
	GetScreenElementDims id = <id>
	GetRandomValue \{a = 0
		b = 1
		Integer
		name = bottom}
	GetRandomValue \{a = 0
		b = 1
		name = horiz_ratio}
	splat_placement = (<screenelementpos> + (0.0, -1.0) * 12 + (0.0, 1.0) * (<bottom> * <Height>) + (1.0, 0.0) * (<width> * <horiz_ratio>))
	GetRandomValue \{a = 1
		b = 2
		Integer
		name = random_splat}
	if (<bottom> = 0)
		GetRandomValue \{a = -90
			b = 90
			name = random_rot}
	else
		GetRandomValue \{a = 90
			b = 180
			name = random_rot}
	endif
	FormatText checksumname = splat_id 'blood_splat_0%d' d = <random_splat>
	SetScreenElementProps id = <splat_id> rgba = [100 100 100 100] pos = <splat_placement> rot_angle = <random_rot>
endscript
