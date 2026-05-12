menu_using_guitar_controller_font = text_a4
menu_using_guitar_controller_kb = 0

script create_using_guitar_controller_menu \{keyboard = 0}
	create_menu_backdrop \{texture = boot_usingGuitar_BG
		z_priority = 1000}
	if IsWinPort
		change menu_using_guitar_controller_kb = <keyboard>
	endif
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = ugc_container
		pos = (0.0, 0.0)
		z_priority = 1000}
	guitar_tex = boot_usingGuitar_gtr_LesPaul
	GetPlatform
	switch <platform>
		case ps3
		<guitar_tex> = boot_usingGuitar_gtr_LesPaul_PS3
	endswitch
	if IsWinPort
		guitar_scale = (1.0, 1.0)
		guitar_pos = (660.0, 510.0)
		if ($menu_using_guitar_controller_kb = 1)
			guitar_scale = (1.2, 1.2)
			guitar_pos = (670.0, 510.0)
			if NotIsMacPort
				guitar_tex = boot_usingKeyboard
				if German
					guitar_tex = boot_usingKeyboard_g
				elseif French
					guitar_tex = boot_usingKeyboard_f
				elseif Italian
					guitar_tex = boot_usingKeyboard_i
				elseif Spanish
					guitar_tex = boot_usingKeyboard_s
				elseif Korean
					guitar_tex = boot_usingKeyboard_k
				endif
			else
				guitar_tex = boot_usingMacKeyboard
				if German
					guitar_tex = boot_usingMacKeyboard_g
				elseif French
					guitar_tex = boot_usingMacKeyboard_f
				elseif Italian
					guitar_tex = boot_usingMacKeyboard_i
				elseif Spanish
					guitar_tex = boot_usingMacKeyboard_s
				endif
			endif
		endif
	endif
	if IsWinPort
		using_tex = boot_usingGuitar_illo
		using_pos = (640.0, 270.0)
		helper_bg_dims = (223.25, 40.0)
		if ($menu_using_guitar_controller_kb = 1)
			using_tex = boot_usingKeyboard_illo
			using_pos = (641.0, 242.0)
			helper_bg_dims = (221.0, 40.0)
		endif
	endif
	CreateScreenElement {
		type = SpriteElement
		parent = ugc_container
		id = bg_helper
		texture = white
		rgba = [0 0 0 255]
		dims = <helper_bg_dims>
		just = [center top]
		pos = (-200.0, 0.0)
		z_priority = 1001
	}
	CreateScreenElement \{type = TextElement
		parent = ugc_container
		id = bg_helper_text
		font = text_a4
		rgba = [
			223
			223
			223
			255
		]
		scale = 0.5
		just = [
			center
			top
		]
		noshadow
		z_priority = 1002}
	CreateScreenElement {
		type = SpriteElement
		parent = ugc_container
		texture = <guitar_tex>
		pos = <guitar_pos>
		scale = <guitar_scale>
		just = [center center]
		z_priority = 1003
	}
	CreateScreenElement {
		type = SpriteElement
		parent = ugc_container
		texture = <using_tex>
		pos = <using_pos>
		just = [center center]
		z_priority = 1004
	}
	if ($menu_using_guitar_controller_kb = 0)
		menu_using_guitar_controller_add_text_start
		menu_using_guitar_controller_add_text_back
		menu_using_guitar_controller_add_text_continue
		menu_using_guitar_controller_add_text_up_down
		menu_using_guitar_controller_add_text_tilt_starpower
	endif
	menu_using_guitar_controller_add_text_header
	spawnscriptnow \{go_through_using_guitar_text}
	GetEnterButtonAssignment
	if (<assignment> = circle)
		spawnscriptnow \{check_for_any_input
			params = {
				use_primary_controller
				button1 = start
				button2 = circle
			}}
	else
		spawnscriptnow \{check_for_any_input
			params = {
				use_primary_controller
				button1 = start
				button2 = x
			}}
	endif
	return \{play_sound = 0}
endscript

script destroy_using_guitar_controller_menu 
	destroy_menu \{menu_id = ugc_container}
	destroy_menu_backdrop
	KillSpawnedScript \{name = go_through_using_guitar_text}
	KillSpawnedScript \{name = check_for_any_input}
endscript

script go_through_using_guitar_text 
	max_width = 200
	begin
	if ScreenElementExists \{id = bg_helper}
		bg_helper :DoMorph \{alpha = 0
			time = 0.2}
		SetScreenElementProps \{id = bg_helper
			pos = (407.0, 135.0)}
		bg_helper :DoMorph \{alpha = 1
			time = 0.2}
	endif
	if ScreenElementExists \{id = bg_helper_text}
		if ($menu_using_guitar_controller_kb = 1)
			SetScreenElementProps \{id = bg_helper_text
				pos = (407.0, 130.0)
				text = "1) RENVOYER"}
		else
			SetScreenElementProps \{id = bg_helper_text
				pos = (407.0, 130.0)
				text = "1) SANGLE"}
		endif
		GetScreenElementDims \{id = bg_helper_text}
		SetScreenElementProps \{id = bg_helper_text
			scale = 1}
		if (<width> > <max_width>)
			fit_text_in_rectangle id = bg_helper_text dims = (<max_width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
		else
			SetScreenElementProps \{id = bg_helper_text
				scale = 0.5}
		endif
	endif
	Wait \{2
		seconds}
	if ScreenElementExists \{id = bg_helper}
		bg_helper :DoMorph \{alpha = 0
			time = 0.2}
		SetScreenElementProps \{id = bg_helper
			pos = (640.0, 135.0)}
		bg_helper :DoMorph \{alpha = 1
			time = 0.2}
	endif
	if ScreenElementExists \{id = bg_helper_text}
		if ($menu_using_guitar_controller_kb = 1)
			SetScreenElementProps \{id = bg_helper_text
				pos = (640.0, 130.0)
				text = "2) HEADBANGING À FOND"}
		else
			SetScreenElementProps \{id = bg_helper_text
				pos = (640.0, 130.0)
				text = "2) VÉRROUILLÉ"}
		endif
		GetScreenElementDims \{id = bg_helper_text}
		SetScreenElementProps \{id = bg_helper_text
			scale = 1}
		if (<width> > <max_width>)
			fit_text_in_rectangle id = bg_helper_text dims = (<max_width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
		else
			SetScreenElementProps \{id = bg_helper_text
				scale = 0.5}
		endif
	endif
	Wait \{2
		seconds}
	if ScreenElementExists \{id = bg_helper}
		bg_helper :DoMorph \{alpha = 0
			time = 0.2}
		SetScreenElementProps \{id = bg_helper
			pos = (873.0, 135.0)}
		bg_helper :DoMorph \{alpha = 1
			time = 0.2}
	endif
	if ScreenElementExists \{id = bg_helper_text}
		if ($menu_using_guitar_controller_kb = 1)
			SetScreenElementProps \{id = bg_helper_text
				pos = (873.0, 130.0)
				text = "3) LAISSE-TOI ALLER"}
		else
			SetScreenElementProps \{id = bg_helper_text
				pos = (873.0, 130.0)
				text = "3) JOUE"}
		endif
		GetScreenElementDims \{id = bg_helper_text}
		SetScreenElementProps \{id = bg_helper_text
			scale = 1}
		if (<width> > <max_width>)
			fit_text_in_rectangle id = bg_helper_text dims = (<max_width> * (1.0, 0.0) + <Height> * (0.0, 1.0))
		else
			SetScreenElementProps \{id = bg_helper_text
				scale = 0.5}
		endif
	endif
	Wait \{2
		seconds}
	repeat
endscript

script menu_using_guitar_controller_add_text_start 
	text1 = "Touche"
	text1_pos = (755.0, 585.0)
	text2 = "START"
	text2_pos = (753.0, 618.0)
	CreateScreenElement {
		type = TextElement
		text = <text1>
		pos = <text1_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [right top]
		scale = (0.7, 0.7)
	}
	GetScreenElementDims id = <id>
	if (<width> > 80)
		extra_space = (<width> - 80)
		GetScreenElementProps id = <id>
		SetScreenElementProps id = <id> pos = (<pos> - <extra_space> * (0.5, 0.0))
	endif
	CreateScreenElement {
		type = TextElement
		text = <text2>
		pos = <text2_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [right top]
		scale = 0.6
	}
endscript

script menu_using_guitar_controller_add_text_back 
	text1 = "RETOUR"
	text1_pos = (460.0, 582.0)
	text2 = "Frette rouge"
	text2_pos = (460.0, 615.0)
	GetEnterButtonAssignment
	if (<assignment> = circle)
		text1 = "CONTINUER"
		text1_pos = (460.0, 582.0)
		text2 = "Frette rouge"
		text2_pos = (460.0, 615.0)
	endif
	CreateScreenElement {
		type = TextElement
		text = <text1>
		pos = <text1_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [left top]
		scale = (0.7, 0.7)
	}
	CreateScreenElement {
		type = TextElement
		text = <text2>
		pos = <text2_pos>
		parent = ugc_container
		rgba = [165 70 70 255]
		font = ($menu_using_guitar_controller_font)
		just = [left top]
		scale = 0.6
	}
endscript

script menu_using_guitar_controller_add_text_continue 
	text1 = "CONTINUER"
	text1_pos = (390.0, 582.0)
	text2 = "Frette verte"
	text2_pos = (390.0, 615.0)
	GetEnterButtonAssignment
	if (<assignment> = circle)
		text1 = "RETOUR"
		text1_pos = (390.0, 582.0)
		text2 = "Frette verte"
		text2_pos = (390.0, 615.0)
	endif
	CreateScreenElement {
		type = TextElement
		text = <text1>
		pos = <text1_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [right top]
		scale = (0.7, 0.7)
	}
	GetScreenElementDims id = <id>
	if (<width> > 125)
		extra_space = (<width> - 125)
		GetScreenElementProps id = <id>
		SetScreenElementProps id = <id> pos = (<pos> - <extra_space> * (0.5, 0.0))
	endif
	CreateScreenElement {
		type = TextElement
		text = <text2>
		pos = <text2_pos>
		parent = ugc_container
		rgba = [80 145 105 255]
		font = ($menu_using_guitar_controller_font)
		just = [right top]
		scale = 0.6
	}
endscript

script menu_using_guitar_controller_add_text_up_down 
	text1 = "HAUT/BAS"
	text1_pos = (570.0, 390.0)
	text2 = "Touche de médiator"
	text2_pos = (570.0, 423.0)
	if ((IsWinPort) && (Spanish))
		text1_pos = (555.0, 390.0)
	endif
	if ((IsWinPort) && (German))
		text1_pos = (548.0, 390.0)
	endif
	CreateScreenElement {
		type = TextElement
		text = <text1>
		pos = <text1_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [center top]
		scale = (0.7, 0.7)
	}
	GetScreenElementDims id = <id>
	if (<width> > 180)
		SetScreenElementProps id = <id> scale = 1
		fit_text_in_rectangle id = <id> only_if_larger_x = 1 dims = ((180.0, 0.0) + <Height> * (0.0, 1.0))
	endif
	CreateScreenElement {
		type = TextElement
		text = <text2>
		pos = <text2_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [center top]
		scale = 0.6
	}
	GetScreenElementDims id = <id>
	if (<width> > 180)
		SetScreenElementProps id = <id> scale = 1
		fit_text_in_rectangle id = <id> only_if_larger_x = 1 dims = ((180.0, 0.0) + <Height> * (0.0, 1.0))
	endif
endscript

script menu_using_guitar_controller_add_text_tilt_starpower 
	text1 = "LEVER"
	text1_pos = (280.0, 380.0)
	text2 = "pour Star Power"
	text2_pos = (280.0, 413.0)
	CreateScreenElement {
		type = TextElement
		text = <text1>
		pos = <text1_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [left top]
		scale = (0.7, 0.7)
	}
	GetScreenElementDims id = <id>
	if (<width> > 180)
		SetScreenElementProps id = <id> scale = 1
		fit_text_in_rectangle id = <id> only_if_larger_x = 1 dims = ((180.0, 0.0) + <Height> * (0.0, 1.0))
	endif
	CreateScreenElement {
		type = TextElement
		text = <text2>
		pos = <text2_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [left top]
		scale = 0.6
	}
	GetScreenElementDims id = <id>
	if (<width> > 180)
		SetScreenElementProps id = <id> scale = 1
		fit_text_in_rectangle id = <id> only_if_larger_x = 1 dims = ((180.0, 0.0) + <Height> * (0.0, 1.0))
	endif
	CreateScreenElement \{type = SpriteElement
		parent = ugc_container
		texture = boot_usingGuitar_arrow
		pos = (270.0, 460.0)
		just = [
			right
			center
		]}
endscript

script menu_using_guitar_controller_add_text_header 
	text1 = "DÉCHIRE-TOI"
	text1_pos = (660.0, 55.0)
	if ($menu_using_guitar_controller_kb = 1)
		text2 = "UTILISER LE CLAVIER ET LA SOURIS"
	else
		text2 = "UTILISER LA GUITARE"
	endif
	text2_pos = (660.0, 95.0)
	CreateScreenElement {
		type = TextElement
		text = <text1>
		pos = <text1_pos>
		parent = ugc_container
		rgba = [185 95 100 255]
		font = ($menu_using_guitar_controller_font)
		just = [center top]
		scale = (1.4, 1.0)
	}
	CreateScreenElement {
		type = TextElement
		text = <text2>
		pos = <text2_pos>
		parent = ugc_container
		rgba = [0 0 0 255]
		font = ($menu_using_guitar_controller_font)
		just = [center top]
		scale = (0.8, 0.7)
	}
endscript
