winport_calibrate_lag_warning_menu_font = fontgrid_title_gh3

script winport_create_calibrate_lag_warning_menu 
	disable_pause
	player_device = ($last_start_pressed_device)
	create_popup_warning_menu {
		textblock = {
			text = "Para calibrar el retraso, debes reiniciar este tema. Si lo haces, se perderá todo el progreso que no haya sido guardado. ¿Seguro que quieres continuar? "
			dims = (800.0, 400.0)
			scale = 0.55
		}
		player_device = <player_device>
		no_background
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = menu_flow_go_back
				text = "CANCELAR"
			}
			{
				func = winport_menu_calibrate_lag_warning_select_yes
				text = "Calibrar"
			}
		]
	}
endscript

script winport_destroy_calibrate_lag_warning_menu 
	destroy_popup_warning_menu
endscript

script winport_menu_calibrate_lag_warning_select_yes 
	GH3_SFX_fail_song_stop_sounds
	ui_flow_manager_respond_to_action \{action = continue}
endscript
