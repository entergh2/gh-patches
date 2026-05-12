
script create_wuss_out_menu 
	change \{boss_wuss_out = 0}
	if IsWinPort
		player_device = ($primary_controller)
	else
		player_device = ($last_start_pressed_device)
	endif
	warning_text = "Mann, macht Joe Perry dich fertig?  Soll ich dich mal drücken?  Vielleicht solltest Du besser doch beim Bass spielen bleiben. Du willst ihn einfach überspringen?   Vielleicht hast Du ja später das Zeug, es mit einem richtigen Gitarrenhelden aufzunehmen."
	kill_start_key_binding
	create_popup_warning_menu {
		title = "PLATT GEMACHT?"
		textblock = {
			text = <warning_text>
			dims = (880.0, 600.0)
			pos = (640.0, 387.0)
			scale = 0.55
		}
		player_device = <player_device>
		no_background
		menu_pos = (640.0, 470.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = wuss_out_menu_continue
				text = "WEITER"
			}
			{
				func = wuss_out_menu_wuss_out
				text = "PLATT MACHEN"
			}
		]
	}
endscript

script destroy_wuss_out_menu 
	restore_start_key_binding
	destroy_popup_warning_menu
endscript

script wuss_out_menu_continue 
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script wuss_out_menu_wuss_out 
	ui_flow_manager_respond_to_action \{action = wuss_out}
endscript
