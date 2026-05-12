in_signin_changed_menu = 0

script create_signin_changed_menu 
	destroy_popup_warning_menu
	destroy_net_popup
	create_popup_warning_menu \{title = "CAMB. INICIO SESIÓN"
		title_props = {
			scale = 1.0
		}
		textblock = {
			text = "Se ha producido un cambio al iniciar sesión. No podrás guardar tus logros y tus progresos. Como resultado, la partida se ha reiniciado."
			pos = (640.0, 380.0)
		}
		menu_pos = (640.0, 510.0)
		helper_pills = [
			select
		]
		options = [
			{
				func = signing_change_confirm_reboot
				text = "CONTINÚA"
				scale = (1.0, 1.0)
			}
		]}
	change \{in_signin_changed_menu = 1}
endscript

script destroy_signin_changed_menu 
	change \{in_signin_changed_menu = 0}
	destroy_popup_warning_menu
endscript

script recreate_signin_changed_menu 
	destroy_signin_changed_menu
	create_signin_changed_menu
endscript
