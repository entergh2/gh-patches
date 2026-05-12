
script create_practice_warning_menu 
	disable_pause
	player_device = ($player1_status.controller)
	get_song_struct song = ($current_song)
	if StructureContains Structure = <song_struct> boss
		warning_text = "Ta progression dans cette chanson sera perdue si tu veux aller au didacticiel maintenant. Quitter ?"
		goto_text = "DIDACTICIEL"
	else
		warning_text = "Tu perdras ta progression si tu vas en Répétition."
		goto_text = "RÉPÈTE"
	endif
	kill_start_key_binding
	create_popup_warning_menu {
		textblock = {
			text = <warning_text>
			dims = (600.0, 400.0)
			scale = 0.6
		}
		player_device = <player_device>
		no_background
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		helper_pills = [select updown]
		options = [
			{
				func = practice_warning_menu_select_cancel
				text = "ANNULER"
			}
			{
				func = practice_warning_menu_select_practice
				text = <goto_text>
			}
		]
	}
endscript

script destroy_practice_warning_menu 
	destroy_popup_warning_menu
endscript

script practice_warning_menu_select_cancel 
	ui_flow_manager_respond_to_action \{action = go_back}
endscript

script practice_warning_menu_select_practice 
	ResetScoreUpdateReady
	restore_player_selected_character_info \{player_status = player1_status}
	restore_player_selected_character_info \{player_status = player2_status}
	get_song_struct song = ($current_song)
	if StructureContains Structure = <song_struct> boss
		player_device = ($primary_controller)
		if IsGuitarController controller = <player_device>
			ui_flow_manager_respond_to_action \{action = continue_tutorial}
		endif
	else
		ui_flow_manager_respond_to_action \{action = continue}
	endif
endscript
