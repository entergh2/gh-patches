
script create_wuss_out_menu 
	change \{boss_wuss_out = 0}
	if IsWinPort
		player_device = ($primary_controller)
	else
		player_device = ($last_start_pressed_device)
	endif
	warning_text = "Pero tío, ¿Joe Perry te está vacilando? ¿Necesitas un abrazo? Quizás lo tuyo es el bajo. ¿Quieres pasar de él?  Quizás más tarde tienes lo que hay que tener para codearte con un Guitar Hero de verdad."
	kill_start_key_binding
	create_popup_warning_menu {
		title = "¿TE PIRAS?"
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
				text = "CONTINÚA"
			}
			{
				func = wuss_out_menu_wuss_out
				text = "COBARDE"
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
