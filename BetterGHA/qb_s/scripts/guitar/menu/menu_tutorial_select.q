tutorial_select_menu_font = text_a4
menu_tutorial_select_num_items = 3
winport_in_tutorial = 0

script create_tutorial_select_menu 
	disable_pause
	if IsWinPort
		change \{winport_in_tutorial = 0}
	endif
	change \{rich_presence_context = presence_tutorial}
	CreateScreenElement {
		parent = root_window
		id = ts_container
		type = ContainerElement
		pos = (0.0, 0.0)
		exclusive_device = ($primary_controller)
	}
	new_menu \{scrollid = ts_scroll
		vmenuid = ts_vmenu
		font = $video_settings_menu_font
		menu_pos = (320.0, 405.0)
		spacing = 7
		text_left
		focus_color = dark_red
		unfocus_color = blueish_grey}
	displayText \{parent = ts_container
		pos = (1000.0, 560.0)
		just = [
			right
			center
		]
		text = "tutoriales"
		rgba = [
			180
			180
			180
			255
		]
		font = $video_settings_menu_font
		noshadow}
	fit_text_in_rectangle id = <id> dims = (300.0, 70.0) pos = (980.0, 565.0)
	create_menu_backdrop \{texture = Venue_BG}
	displaySprite \{parent = ts_container
		tex = options_video_poster
		pos = (640.0, 365.0)
		dims = (1024.0, 512.0)
		just = [
			center
			center
		]
		z = 1
		font = $video_settings_menu_font}
	displaySprite \{tex = Tape_H_02
		parent = ts_container
		pos = (275.0, 120.0)
		dims = (160.0, 64.0)
		rot_angle = -40
		just = [
			center
			center
		]
		z = 7}
	displaySprite {
		tex = Tape_H_02
		parent = <id>
		pos = (5.0, 5.0)
		rgba = [0 0 0 128]
		z = 6
	}
	displaySprite \{tex = Tape_H_02
		parent = ts_container
		pos = (980.0, 110.0)
		dims = (160.0, 64.0)
		rot_angle = 20
		just = [
			center
			center
		]
		z = 7}
	displaySprite {
		tex = Tape_H_02
		parent = <id>
		pos = (5.0, 5.0)
		rgba = [0 0 0 128]
		z = 6
	}
	CreateScreenElement \{type = SpriteElement
		parent = ts_container
		id = ts_hilite
		texture = white
		just = [
			left
			top
		]
		rgba = [
			185
			190
			200
			255
		]
		dims = (340.0, 30.0)
		z_priority = 2}
	text_params = {parent = ts_vmenu type = TextElement font = $video_settings_menu_font rgba = ($menu_unfocus_color) scale = 0.75 z_priority = 3}
	CreateScreenElement {
		<text_params>
		id = ts_basic
		text = "LECCIONES BÁSICAS"
		event_handlers = [
			{focus ts_focus params = {item = basic hilite_pos = (285.0, 423.0)}}
			{unfocus ts_unfocus params = {item = basic}}
			{pad_choose menu_tutorial_select_choose_basic}
		]
	}
	fit_text_into_menu_item id = <id> max_width = 290
	CreateScreenElement {
		<text_params>
		id = ts_star
		text = "ENERGÍA ESTRELLA"
		event_handlers = [
			{focus ts_focus params = {item = star hilite_pos = (285.0, 466.0)}}
			{unfocus ts_unfocus params = {item = star}}
			{pad_choose menu_tutorial_select_choose_star_power}
		]
	}
	fit_text_into_menu_item id = <id> max_width = 290
	CreateScreenElement {
		<text_params>
		id = ts_battle
		text = "GUERRA DE GUITARRAS"
		event_handlers = [
			{focus ts_focus params = {item = battle hilite_pos = (285.0, 510.0)}}
			{unfocus ts_unfocus params = {item = battle}}
			{pad_choose menu_tutorial_select_choose_battle}
		]
	}
	fit_text_into_menu_item id = <id> max_width = 290
	CreateScreenElement {
		<text_params>
		id = ts_advanced
		text = "TÉCNICAS AVANZADAS"
		event_handlers = [
			{focus ts_focus params = {item = advanced hilite_pos = (285.0, 553.0)}}
			{unfocus ts_unfocus params = {item = advanced}}
			{pad_choose menu_tutorial_select_choose_advanced}
		]
	}
	fit_text_into_menu_item id = <id> max_width = 290
	add_user_control_helper \{text = "SELECCIONAR"
		button = green
		z = 100}
	add_user_control_helper \{text = "ATRÁS"
		button = red
		z = 100}
	add_user_control_helper \{text = "ARRIBA/ABAJO"
		button = strumbar
		z = 100}
	GetGlobalTags \{training}
	complete_color = [150 20 50 255]
	not_complete_color = $menu_unfocus_color
	if (<basic_lesson> = complete)
		ts_add_skull pos = (302.0, 435.0) color = <complete_color>
	else
		ts_add_skull pos = (302.0, 435.0) color = <not_complete_color>
	endif
	if (<star_power_lesson> = complete)
		ts_add_skull pos = (302.0, 478.0) color = <complete_color>
	else
		ts_add_skull pos = (302.0, 478.0) color = <not_complete_color>
	endif
	if (<guitar_battle_lesson> = complete)
		ts_add_skull pos = (302.0, 521.0) color = <complete_color>
	else
		ts_add_skull pos = (302.0, 521.0) color = <not_complete_color>
	endif
	if (<advanced_techniques_lesson> = complete)
		ts_add_skull pos = (302.0, 564.0) color = <complete_color>
	else
		ts_add_skull pos = (302.0, 564.0) color = <not_complete_color>
	endif
	if ($select_battle_tutorial = 1)
		LaunchEvent \{type = pad_down}
		LaunchEvent \{type = pad_down}
		change \{select_battle_tutorial = 0}
	else
		retail_menu_focus \{id = ts_basic}
	endif
endscript

script ts_add_skull 
	displaySprite {
		tex = Toprockers_Skull
		parent = ts_container
		pos = <pos>
		dims = (24.0, 24.0)
		rot_angle = 0
		just = [center center]
		rgba = <color>
		z = 7
	}
	displaySprite {
		tex = Toprockers_Skull
		parent = ts_container
		pos = <pos>
		dims = (26.0, 26.0)
		rot_angle = 0
		just = [center center]
		rgba = [0 0 0 255]
		z = 6
	}
endscript

script ts_focus 
	retail_menu_focus
	GetTags
	<id> :GetTags
	if ScreenElementExists \{id = ts_hilite}
		ts_hilite :SetProps pos = <hilite_pos>
	endif
endscript

script ts_unfocus 
	retail_menu_unfocus
	return
endscript

script destroy_tutorial_select_menu 
	printf \{channel = newdebug
		"destroy tutorial select screen......"}
	if NOT IsWinPort
		restore_start_key_binding
	endif
	clean_up_user_control_helpers
	setslomo \{1.0}
	destroy_menu \{menu_id = ts_container}
	destroy_menu_backdrop
	destroy_menu \{menu_id = ts_scroll}
	destroy_menu \{menu_id = ts_basic}
	destroy_menu \{menu_id = ts_star}
	destroy_menu \{menu_id = ts_battle}
	destroy_menu \{menu_id = ts_advanced}
endscript

script menu_tutorial_select_choose_basic 
	if IsWinPort
		change \{winport_in_tutorial = 1}
	endif
	set_training_script \{name = training_basic_tutorial_script}
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script menu_tutorial_select_choose_star_power 
	if IsWinPort
		change \{winport_in_tutorial = 1}
	endif
	set_training_script \{name = training_star_power_tutorial_script}
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script menu_tutorial_select_choose_battle 
	if IsWinPort
		change \{winport_in_tutorial = 1}
	endif
	set_training_script \{name = training_battle_tutorial_script}
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script menu_tutorial_select_choose_advanced 
	if IsWinPort
		change \{winport_in_tutorial = 1}
	endif
	set_training_script \{name = training_advanced_techniques_tutorial_script}
	ui_flow_manager_respond_to_action \{action = continue}
endscript
