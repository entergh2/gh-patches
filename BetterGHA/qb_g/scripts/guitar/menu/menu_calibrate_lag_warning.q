calibrate_lag_warning_menu_font = fontgrid_title_gh3

script create_calibrate_lag_warning_menu 
	disable_pause
	player_device = ($last_start_pressed_device)
	create_popup_warning_menu {
		textblock = {
			text = "Um die Latenz zu kalibrieren, muss dieser Song neu gestartet werden. Bei einem Neustart gehen alle nichtgespeicherten Fortschritte verloren. Wollen Sie wirklich fortfahren?"
			dims = (800.0, 400.0)
			scale = 0.55
		}
		player_device = <player_device>
		no_background
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		helper_pills = [select updown]
		options = [
			{
				func = menu_flow_go_back
				text = "ABBRECHEN"
			}
			{
				func = menu_calibrate_lag_warning_select_yes
				text = "KALIBRIEREN"
			}
		]
	}
endscript

script destroy_calibrate_lag_warning_menu 
	destroy_popup_warning_menu
endscript

script menu_calibrate_lag_warning_select_yes 
	ResetScoreUpdateReady
	GH3_SFX_fail_song_stop_sounds
	ui_flow_manager_respond_to_action \{action = continue}
endscript
