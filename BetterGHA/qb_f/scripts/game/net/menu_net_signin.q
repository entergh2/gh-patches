loginTextColor = [
	255
	200
	0
	255
]
gPrivateMatchId = 0

script create_winport_connection_status_screen 
	printf \{"--- create_winport_connection_status_screen"}
	create_menu_backdrop \{texture = Online_Background}
	z = 110
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = connectionStatusContainer
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = VScrollingMenu
		parent = connectionStatusContainer
		just = [
			center
			top
		]
		dims = (500.0, 150.0)
		pos = (640.0, 465.0)
		z_priority = 1}
	menu_id = <id>
	CreateScreenElement {
		type = VMenu
		parent = <menu_id>
		pos = (298.0, 0.0)
		just = [center top]
		internal_just = [center top]
		dims = (500.0, 150.0)
		event_handlers = [
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back cancel_winport_connection_status_screen}
		]
	}
	vmenu_id = <id>
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
	create_pause_menu_frame \{parent = connectionStatusContainer
		z = 5}
	displaySprite \{parent = connectionStatusContainer
		tex = Dialog_Title_BG
		dims = (224.0, 224.0)
		z = 9
		pos = (640.0, 100.0)
		just = [
			right
			top
		]
		flip_v}
	displaySprite \{parent = connectionStatusContainer
		tex = Dialog_Title_BG
		dims = (224.0, 224.0)
		z = 9
		pos = (640.0, 100.0)
		just = [
			left
			top
		]}
	CreateScreenElement \{type = TextElement
		parent = connectionStatusContainer
		font = fontgrid_title_gh3
		scale = 1.2
		rgba = [
			223
			223
			223
			250
		]
		text = "En ligne"
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 182.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	CreateScreenElement {
		type = TextBlockElement
		parent = connectionStatusContainer
		id = statusMessage
		font = text_a4
		scale = 0.8
		rgba = [210 210 210 250]
		just = [center top]
		internal_just = [center top]
		internal_scale = <scale>
		z_priority = <z>
		pos = (640.0, 310.0)
		dims = (800.0, 320.0)
		line_spacing = 1.0
	}
	if NOT (NetSessionFunc func = IsConnected)
		add_user_control_helper \{text = "ANNULER"
			button = red
			z = 100}
		LaunchEvent type = focus target = <vmenu_id>
		NetSessionFunc \{func = onlinesignin}
		begin
		NetSessionFunc \{func = GetNetworkStatus}
		switch (<CurrentNetworkTask>)
			case "START_NETWORK"
			switch (<CurrentNetworkStatus>)
				case "PENDING"
				statusText = "Initialisation des services en ligne"
				case "DONE"
				statusText = "Online Services Ready"
				case "FAILED"
				statusText = "Impossible d'initialiser les services en ligne"
				success = false
				default
				statusText = "Internal Error: Unexpected Network State!"
				success = false
			endswitch
			case "CHECK_DNS"
			switch (<CurrentNetworkStatus>)
				case "PENDING"
				statusText = "Locating Game Servers"
				case "DONE"
				statusText = "Game Servers Located"
				success = true
				case "FAILED"
				statusText = "Unable to locate Game Servers"
				success = false
				default
				statusText = "Internal Error: Unexpected Network State!"
				success = false
			endswitch
			default
			statusText = "Internal Error: Unexpected Network State!"
			success = false
		endswitch
		SetScreenElementProps id = statusMessage text = <statusText>
		fit_text_into_menu_item \{id = statusMessage
			max_width = 480}
		if GotParam \{success}
			clean_up_user_control_helpers
			if (<success> = false)
				add_user_control_helper \{text = "RETOUR"
					button = red
					z = 100}
				return
			endif
			break
		endif
		Wait \{1
			frame}
		if NOT (ScreenElementExists id = connectionStatusContainer)
			return
		endif
		repeat
	endif
	if NOT (NetSessionFunc func = HasExistingLogin)
		DestroyScreenElement \{id = connectionStatusContainer}
		clean_up_user_control_helpers
		create_popup_warning_menu \{textblock = {
				text = "Identifiant existant introuvable.\\nCréer un nouveau compte ou utiliser un compte existant ?"
				dims = (700.0, 320.0)
				scale = 0.6
			}
			no_background
			menu_pos = (640.0, 465.0)
			dialog_dims = (600.0, 80.0)
			helper_pills = [
				back
				select
				updown
			]
			pad_back_script = cancel_winport_connection_status_screen
			options = [
				{
					func = start_winport_account_create_screen
					text = "NOUVEAU COMPTE"
					scale = 0.9
				}
				{
					func = start_winport_account_login_screen
					text = "COMPTE EXISTANT"
					scale = 0.9
				}
			]}
		return
	endif
	if NOT (NetSessionFunc func = IsLoggedIn)
		ui_flow_manager_respond_to_action \{action = account_login}
	endif
	ui_flow_manager_respond_to_action \{action = goto_online_menu}
endscript

script destroy_winport_connection_status_screen 
	destroy_popup_warning_menu
	if ScreenElementExists \{id = connectionStatusContainer}
		DestroyScreenElement \{id = connectionStatusContainer}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script cancel_winport_connection_status_screen 
	NetSessionFunc \{func = ResetNetwork}
	ui_flow_manager_respond_to_action \{action = back}
endscript

script create_winport_account_create_screen 
	create_winport_account_management_screen \{mode = createAccount
		title = "Création de compte"
		container = accountCreateContainer}
endscript

script destroy_winport_account_create_screen 
	destroy_winport_account_management_screen \{container = accountCreateContainer}
endscript

script start_winport_account_create_screen 
	ui_flow_manager_respond_to_action \{action = account_create}
endscript

script create_winport_account_login_screen 
	NetSessionFunc \{func = GetAutoLoginSetting}
	if (<autoLoginSetting> = autoLoginOn && NetSessionFunc func = HasExistingLogin)
		NetSessionFunc \{func = InitializeLoginFields
			params = {
				loginMode = loginAccount
			}}
		ui_flow_manager_respond_to_action \{action = executeLogin}
	else
		create_winport_account_management_screen \{mode = loginAccount
			title = "Identifiant de compte"
			container = accountLoginContainer
			yellowButtonText = "MODIFIER LE MOT DE PASSE"
			yellowButtonAction = start_winport_account_change_screen
			blueButtonText = "NOUVEAU COMPTE"
			blueButtonAction = start_winport_account_create_screen}
	endif
endscript

script destroy_winport_account_login_screen 
	destroy_winport_account_management_screen \{container = accountLoginContainer}
endscript

script start_winport_account_login_screen 
	ui_flow_manager_respond_to_action \{action = account_login}
endscript

script create_winport_account_change_screen 
	create_winport_account_management_screen \{mode = changeAccount
		title = "Changer de mot de passe"
		container = accountChangeContainer
		yellowButtonText = "RÉINITIALISER LE MOT DE PASSE"
		yellowButtonAction = start_winport_account_reset_screen}
endscript

script destroy_winport_account_change_screen 
	destroy_winport_account_management_screen \{container = accountChangeContainer}
endscript

script start_winport_account_change_screen 
	ui_flow_manager_respond_to_action \{action = account_change}
endscript

script create_winport_account_reset_screen 
	create_winport_account_management_screen \{mode = resetAccount
		title = "Réinitialiser le mot de passe"
		container = accountResetContainer
		yellowButtonText = "SUPPRIMER LE COMPTE"
		yellowButtonAction = start_winport_account_delete_screen}
endscript

script destroy_winport_account_reset_screen 
	destroy_winport_account_management_screen \{container = accountResetContainer}
endscript

script start_winport_account_reset_screen 
	ui_flow_manager_respond_to_action \{action = account_reset}
endscript

script create_winport_account_delete_screen 
	create_winport_account_management_screen \{mode = deleteAccount
		title = "Supprimer le compte"
		container = accountDeleteContainer}
endscript

script destroy_winport_account_delete_screen 
	destroy_winport_account_management_screen \{container = accountDeleteContainer}
endscript

script start_winport_account_delete_screen 
	ui_flow_manager_respond_to_action \{action = account_delete}
endscript

script create_change_password_submenu 
	create_winport_account_management_screen \{mode = changeAccount
		title = "Changer de mot de passe"
		container = accountChangeContainer
		yellowButtonAction = winport_null_action}
endscript

script destroy_change_password_submenu 
	destroy_winport_account_management_screen \{container = accountChangeContainer}
endscript

script create_account_delete_submenu 
	create_winport_account_management_screen \{mode = deleteAccount
		title = "Supprimer le compte"
		container = accountDeleteSubmenuContainer
		yellowButtonAction = winport_null_action}
endscript

script destroy_account_delete_submenu 
	destroy_winport_account_management_screen \{container = accountDeleteSubmenuContainer}
endscript

script winport_null_action 
endscript

script create_winport_account_management_screen 
	printf \{"--- create_winport_account_management_screen"}
	z = 110
	create_menu_backdrop \{texture = Online_Background}
	if ((GotParam yellowButtonAction) && (GotParam blueButtonAction))
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose ui_flow_manager_respond_to_action params = {action = executeLogin}}
			{pad_option2 <yellowButtonAction>}
			{pad_option <blueButtonAction>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	elseif (GotParam yellowButtonAction)
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose ui_flow_manager_respond_to_action params = {action = executeLogin}}
			{pad_option2 <yellowButtonAction>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	elseif (GotParam blueButtonAction)
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose ui_flow_manager_respond_to_action params = {action = executeLogin}}
			{pad_option <blueButtonAction>}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	else
		Handlers = [
			{focus retail_menu_focus}
			{unfocus retail_menu_unfocus}
			{pad_choose ui_flow_manager_respond_to_action params = {action = executeLogin}}
			{pad_back cancel_winport_account_management_screen params = {mode = <mode>}}
		]
	endif
	CreateScreenElement {
		type = ContainerElement
		parent = root_window
		id = <container>
		pos = (0.0, 0.0)
		event_handlers = <Handlers>
	}
	NetSessionFunc func = InitializeLoginFields params = {loginMode = <mode>}
	displaySprite parent = <container> tex = Dialog_Title_BG dims = (300.0, 230.0) z = 9 pos = (640.0, 40.0) just = [right top] flip_v
	displaySprite parent = <container> tex = Dialog_Title_BG dims = (300.0, 230.0) z = 9 pos = (640.0, 40.0) just = [left top]
	CreateScreenElement {
		type = TextElement
		parent = <container>
		font = fontgrid_title_gh3
		scale = 1.0
		rgba = [223 223 223 250]
		text = <title>
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 125.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	fit_text_in_rectangle id = <id> dims = (400.0, 75.0) pos = (640.0, 125.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center
	CreateScreenElement {
		type = TextElement
		parent = <container>
		id = capsLockField
		font = text_a4
		scale = 0.6
		rgba = [255 0 0 255]
		text = "(Verr. Maj activé)"
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 530.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <container>
		font = text_a4
		scale = 0.6
		rgba = [180 180 180 255]
		text = "L'expérience de jeu peut changer dans le cadre du jeu en ligne"
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 560.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <container>
		font = text_a4
		scale = 1.0
		rgba = [180 180 180 255]
		text = "*Utiliser le clavier pour saisir toutes les informations de compte*"
		just = [center top]
		z_priority = 10.0
		pos = (640.0, 595.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [0 0 0 255]
	}
	fit_text_in_rectangle id = <id> dims = (600.0, 25.0) pos = (640.0, 595.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center keep_ar = 1
	<pos> = (375.0, 290.0)
	create_winport_login_field container = <container> pos = <pos> label = "Nom d'utilisateur : " labelId = usernameLabelId prefixId = usernamePrefixId cursorId = usernameCursorId suffixId = usernameSuffixId ang = -2.0
	GetScreenElementDims \{id = usernameLabelId}
	lineHeight = (<Height> + 8)
	if (<mode> = loginAccount || <mode> = deleteAccount || <mode> = changeAccount)
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = "Mot de passe : " labelId = passwordLabelId prefixId = passwordPrefixId cursorId = passwordCursorId suffixId = passwordSuffixId ang = 0.2
	endif
	if (<mode> = createAccount || <mode> = changeAccount || <mode> = resetAccount)
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = "Nouveau mot de passe : " labelId = newPassword1LabelId prefixId = newPassword1PrefixId cursorId = newPassword1CursorId suffixId = newPassword1SuffixId ang = -0.6
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = "Répéter nouv. mot de passe : " labelId = newPassword2LabelId prefixId = newPassword2PrefixId cursorId = newPassword2CursorId suffixId = newPassword2SuffixId ang = 0.5
	endif
	if (<mode> = createAccount || <mode> = resetAccount)
		pos = (<pos> + ((0.0, 1.0) * <lineHeight>))
		create_winport_login_field container = <container> pos = <pos> label = "Licence : " labelId = licenseLabelId prefixId = licensePrefixId cursorId = licenseCursorId suffixId = licenseSuffixId ang = 1.5
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
	add_user_control_helper \{text = "ACCEPTER"
		button = green
		z = 100}
	add_user_control_helper \{text = "RETOUR"
		button = red
		z = 100}
	if GotParam \{yellowButtonText}
		add_user_control_helper text = <yellowButtonText> button = Yellow z = 100
	endif
	if GotParam \{blueButtonText}
		add_user_control_helper text = <blueButtonText> button = Blue z = 100
	endif
	LaunchEvent type = focus target = <container>
	begin
	if (IsCapsLockOn)
		SetScreenElementProps \{id = capsLockField
			alpha = 1.0}
	else
		SetScreenElementProps \{id = capsLockField
			alpha = 0.0}
	endif
	update_winport_login_field \{field = UserName
		labelId = usernameLabelId
		prefixId = usernamePrefixId
		cursorId = usernameCursorId
		suffixId = usernameSuffixId}
	update_winport_login_field \{field = password
		labelId = passwordLabelId
		prefixId = passwordPrefixId
		cursorId = passwordCursorId
		suffixId = passwordSuffixId}
	update_winport_login_field \{field = newPassword1
		labelId = newPassword1LabelId
		prefixId = newPassword1PrefixId
		cursorId = newPassword1CursorId
		suffixId = newPassword1SuffixId}
	update_winport_login_field \{field = newPassword2
		labelId = newPassword2LabelId
		prefixId = newPassword2PrefixId
		cursorId = newPassword2CursorId
		suffixId = newPassword2SuffixId}
	update_winport_login_field \{field = license
		labelId = licenseLabelId
		prefixId = licensePrefixId
		cursorId = licenseCursorId
		suffixId = licenseSuffixId}
	Wait \{1
		frame}
	if NOT (ScreenElementExists id = <container>)
		return
	endif
	NetSessionFunc \{func = GetLoginEntry}
	if (<loginEntry> = loginAccepted)
		break
	endif
	if (<loginEntry> = loginAborted)
		break
	endif
	if ((GotParam yellowButtonAction) && (<loginEntry> = loginOption1))
		printf \{"Got yellowButtonAction button"}
		break
	endif
	if ((GotParam blueButtonAction) && (<loginEntry> = loginOption2))
		printf \{"Got blueButtonAction button"}
		break
	endif
	repeat
	switch <loginEntry>
		case loginAccepted
		ui_flow_manager_respond_to_action \{action = executeLogin}
		case loginOption1
		printf \{"Executing option 1"}
		ui_flow_manager_respond_to_action \{action = executeOption1}
		case loginOption2
		printf \{"Executing option 2"}
		ui_flow_manager_respond_to_action \{action = executeOption2}
		case loginAborted
		cancel_winport_account_management_screen mode = <mode>
	endswitch
endscript

script destroy_winport_account_management_screen 
	NetSessionFunc \{func = DestroyLoginFields}
	if (ScreenElementExists id = <container>)
		DestroyScreenElement id = <container>
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script cancel_winport_account_management_screen 
	if (<mode> = loginAccount)
		if (NetSessionFunc func = HasExistingLogin)
			ui_flow_manager_respond_to_action \{action = back_to_main}
		else
			ui_flow_manager_respond_to_action \{action = back_to_connection_status}
		endif
	else
		ui_flow_manager_respond_to_action \{action = back}
	endif
endscript

script create_winport_login_field 
	CreateScreenElement {
		type = ContainerElement
		parent = <container>
		rot_angle = <ang>
	}
	rotContainer = <id>
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <labelId>
		font = fontgrid_title_gh3
		scale = 0.8
		rgba = $loginTextColor
		text = <label>
		just = [left top]
		z_priority = 10.0
		pos = <pos>
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <prefixId>
		font = fontgrid_title_gh3
		scale = 0.8
		rgba = $loginTextColor
		text = ""
		just = [left top]
		z_priority = 10.0
		pos = (300.0, 300.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <cursorId>
		font = fontgrid_title_gh3
		scale = (0.5, 0.8)
		rgba = $loginTextColor
		text = "I"
		just = [left top]
		z_priority = 10.0
		pos = (400.0, 300.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	CreateScreenElement {
		type = TextElement
		parent = <rotContainer>
		id = <suffixId>
		font = fontgrid_title_gh3
		scale = 0.8
		rgba = $loginTextColor
		text = ""
		just = [left top]
		z_priority = 10.0
		pos = (500.0, 300.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [0 0 0 255]
	}
	RunScriptOnScreenElement id = <cursorId> winport_cursor_blinker params = {blinkId = <cursorId>}
endscript

script update_winport_login_field 
	if NOT (ScreenElementExists id = <labelId>)
		return
	endif
	NetSessionFunc func = GetLoginField params = {field = <field>}
	if (<active> = 1)
		SetScreenElementProps id = <prefixId> text = <prefix>
		SetScreenElementProps id = <cursorId> text = "I"
		SetScreenElementProps id = <suffixId> text = <suffix>
	else
		SetScreenElementProps id = <prefixId> text = <prefix>
		SetScreenElementProps id = <cursorId> text = ""
		SetScreenElementProps id = <suffixId> text = ""
	endif
	GetScreenElementDims id = <labelId>
	GetScreenElementPosition id = <labelId>
	pos = (<screenelementpos> + ((1.0, 0.0) * <width>))
	SetScreenElementProps id = <prefixId> pos = <pos>
	GetScreenElementPosition id = <prefixId>
	GetScreenElementDims id = <prefixId>
	pos = (<screenelementpos> + ((1.0, 0.0) * <width>))
	SetScreenElementProps id = <cursorId> pos = <pos>
	GetScreenElementPosition id = <cursorId>
	GetScreenElementDims id = <cursorId>
	pos = (<screenelementpos> + ((1.0, 0.0) * <width>))
	SetScreenElementProps id = <suffixId> pos = <pos>
endscript

script winport_cursor_blinker 
	begin
	if NOT (ScreenElementExists id = <blinkId>)
		return
	endif
	doScreenElementMorph id = <blinkId> alpha = 0 time = 0.5
	Wait \{0.5
		seconds}
	if NOT (ScreenElementExists id = <blinkId>)
		return
	endif
	doScreenElementMorph id = <blinkId> alpha = 1.0 time = 0.5
	Wait \{0.5
		seconds}
	repeat
endscript

script create_winport_account_create_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_create_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_login_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_login_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_change_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_change_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_reset_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_reset_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_delete_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_winport_account_delete_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_account_change_submenu_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_account_change_submenu_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_account_delete_submenu_status_screen 
	create_winport_account_management_status_screen
endscript

script destroy_account_delete_submenu_status_screen 
	destroy_winport_account_management_status_screen
endscript

script create_winport_account_management_status_screen 
	printf \{"--- create_winport_account_management_status_screen"}
	create_menu_backdrop \{texture = Online_Background}
	z = 110
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = accountStatusContainer
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = VScrollingMenu
		parent = accountStatusContainer
		just = [
			center
			top
		]
		dims = (500.0, 150.0)
		pos = (640.0, 465.0)
		z_priority = 1}
	menu_id = <id>
	CreateScreenElement {
		type = VMenu
		parent = <menu_id>
		id = <vmenu_id>
		pos = (298.0, 0.0)
		just = [center top]
		internal_just = [center top]
		dims = (500.0, 150.0)
		event_handlers = [
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
		]
	}
	vmenu_id = <id>
	change \{menu_focus_color = [
			180
			50
			50
			255
		]}
	change \{menu_unfocus_color = [
			0
			0
			0
			255
		]}
	create_pause_menu_frame \{parent = accountStatusContainer
		z = 5}
	displaySprite \{parent = accountStatusContainer
		tex = Dialog_Title_BG
		dims = (224.0, 224.0)
		z = 9
		pos = (640.0, 100.0)
		just = [
			right
			top
		]
		flip_v}
	displaySprite \{parent = accountStatusContainer
		tex = Dialog_Title_BG
		dims = (224.0, 224.0)
		z = 9
		pos = (640.0, 100.0)
		just = [
			left
			top
		]}
	CreateScreenElement \{type = TextElement
		parent = accountStatusContainer
		font = fontgrid_title_gh3
		scale = 1.2
		rgba = [
			223
			223
			223
			250
		]
		text = "En ligne"
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 182.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	CreateScreenElement {
		type = TextBlockElement
		parent = accountStatusContainer
		id = statusMessage
		font = text_a4
		scale = 0.8
		rgba = [210 210 210 250]
		just = [center top]
		internal_just = [center top]
		internal_scale = <scale>
		z_priority = <z>
		pos = (640.0, 310.0)
		dims = (800.0, 320.0)
		line_spacing = 1.0
	}
	LaunchEvent type = focus target = <vmenu_id>
	NetSessionFunc \{func = ExecuteLoginTask}
	begin
	NetSessionFunc \{func = GetNetworkStatus}
	switch (<CurrentNetworkTask>)
		case "CREATE_ACCOUNT"
		switch (<CurrentNetworkStatus>)
			case "PENDING"
			statusText = "Demande de création de compte"
			case "DONE"
			statusText = "Account Created"
			success = true
			case "FAILED"
			statusText = "Unable to Create Account"
			success = false
			default
			statusText = "Internal Error: Unexpected Network State!"
			success = false
		endswitch
		case "LOGIN_ACCOUNT"
		switch (<CurrentNetworkStatus>)
			case "PENDING"
			statusText = "Autorisation de compte"
			case "DONE"
			statusText = "Compte autorisé"
			success = true
			case "FAILED"
			statusText = "Autorisation de compte impossible"
			success = false
			default
			statusText = "Internal Error: Unexpected Network State!"
			success = false
		endswitch
		case "CHANGE_ACCOUNT"
		switch (<CurrentNetworkStatus>)
			case "PENDING"
			statusText = "Demande de changement de mot de passe"
			case "DONE"
			statusText = "Password Changed"
			success = true
			case "FAILED"
			statusText = "Unable to Change Password"
			success = false
			default
			statusText = "Internal Error: Unexpected Network State!"
			success = false
		endswitch
		case "RESET_ACCOUNT"
		switch (<CurrentNetworkStatus>)
			case "PENDING"
			statusText = "Demande de réinitialisation de compte"
			case "DONE"
			statusText = "Account Password Reset"
			success = true
			case "FAILED"
			statusText = "Unable to Reset Account"
			success = false
			default
			statusText = "Internal Error: Unexpected Network State!"
			success = false
		endswitch
		case "DELETE_ACCOUNT"
		switch (<CurrentNetworkStatus>)
			case "PENDING"
			statusText = "Demande de suppression de compte"
			case "DONE"
			statusText = "Le compte a été supprimé"
			success = true
			case "FAILED"
			statusText = "Suppression de compte impossible"
			success = false
			default
			statusText = "Internal Error: Unexpected Network State!"
			success = false
		endswitch
		default
		printf "Unexpected state = %s" s = <CurrentNetworkTask>
		statusText = "Internal Error: Unexpected Network State!"
		success = false
	endswitch
	SetScreenElementProps id = statusMessage text = <statusText>
	fit_text_into_menu_item \{id = statusMessage
		max_width = 480}
	if GotParam \{success}
		break
	endif
	Wait \{1
		frame}
	if NOT (ScreenElementExists id = accountStatusContainer)
		return
	endif
	repeat
	if (<success> = false)
		NetSessionFunc \{func = GetAutoLoginSetting}
		if (<autoLoginSetting> = autoLoginOn && NetSessionFunc func = HasExistingLogin)
			NetSessionFunc \{func = SetAutoLoginSetting
				params = {
					autoLoginSetting = autoLoginPrompt
				}}
		endif
		NetSessionFunc \{func = GetFailureCode}
		switch <FailureCode>
			case 666
			statusText = "Les nouveaux champs de mot de passe ne correspondent pas"
			case 667
			statusText = "Authorization Service failed"
			case 668
			statusText = "Les noms d'utilisateur doivent compter de 6 à 16 caractères."
			case 669
			statusText = "Les mots de passe doivent compter de 6 à 16 caractères."
			case 700
			statusText = "Task Succeeded"
			case 701
			statusText = "Bad Authorization Request"
			case 702
			statusText = "Erreur de configuration du serveur"
			case 703
			statusText = "Invalid Game Title Id"
			case 704
			statusText = "Informations de compte incorrectes"
			case 705
			statusText = "Illegal Authorization Request"
			case 706
			statusText = "Invalid License Code"
			case 707
			statusText = "Username Already Exists"
			case 708
			statusText = "Invalid Username Format"
			case 709
			statusText = "Username Declined"
			case 710
			statusText = "Too Many Accounts for License Code"
			case 711
			statusText = "Account Migration not Supported"
			case 712
			statusText = "Title has been disabled"
			case 713
			statusText = "Account has Expired"
			case 714
			statusText = "Account is Locked"
			case 715
			statusText = "Authentication Error: Online functions will not be available until Guitar Hero: Aerosmith is quit and relaunched."
			case 716
			statusText = "Mot de passe incorrect"
		endswitch
		SetScreenElementProps id = statusMessage text = <statusText>
		fit_text_into_menu_item \{id = statusMessage
			max_width = 480}
		displaySprite \{parent = accountStatusContainer
			id = options_bg_1
			tex = dialog_bg
			pos = (640.0, 500.0)
			dims = (320.0, 64.0)
			z = 9
			just = [
				center
				botom
			]}
		displaySprite \{parent = accountStatusContainer
			id = options_bg_2
			tex = dialog_bg
			pos = (640.0, 530.0)
			dims = (320.0, 64.0)
			z = 9
			just = [
				center
				top
			]
			flip_h}
		CreateScreenElement {
			type = ContainerElement
			parent = <vmenu_id>
			dims = (100.0, 50.0)
			event_handlers = [
				{focus retail_menu_focus}
				{unfocus retail_menu_unfocus}
				{pad_choose ui_flow_manager_respond_to_action params = {action = errorAction}}
				{pad_back ui_flow_manager_respond_to_action params = {action = errorAction}}
			]
		}
		container_id = <id>
		CreateScreenElement {
			type = TextElement
			parent = <container_id>
			local_id = text
			font = fontgrid_title_gh3
			scale = 0.85
			rgba = ($menu_unfocus_color)
			text = "RÉESSAYER"
			just = [center top]
			z_priority = (<z> + 0.1)
		}
		fit_text_into_menu_item id = <id> max_width = 480
		GetScreenElementDims id = <id>
		CreateScreenElement {
			type = SpriteElement
			parent = <container_id>
			local_id = bookend_left
			texture = Dialog_Highlight
			alpha = 0.0
			just = [right center]
			pos = ((0.0, 20.0) + (1.0, 0.0) * (<width> / (-2)) + (-5.0, 0.0))
			z_priority = (<z> + 0.1)
			scale = (1.0, 1.0)
			flip_v
		}
		CreateScreenElement {
			type = SpriteElement
			parent = <container_id>
			local_id = bookend_right
			texture = Dialog_Highlight
			alpha = 0.0
			just = [left center]
			pos = ((0.0, 20.0) + (1.0, 0.0) * (<width> / (2)) + (5.0, 0.0))
			z_priority = (<z> + 0.1)
			scale = (1.0, 1.0)
		}
		clean_up_user_control_helpers
		add_user_control_helper \{text = "CHOISIR"
			button = green
			z = 100}
		add_user_control_helper \{text = "RETOUR"
			button = red
			z = 100}
		LaunchEvent type = focus target = <vmenu_id>
		return
	endif
	Wait \{3
		seconds}
	ui_flow_manager_respond_to_action \{action = successAction}
	NetSessionFunc \{func = stats_init}
endscript

script destroy_winport_account_management_status_screen 
	if (ScreenElementExists id = accountStatusContainer)
		DestroyScreenElement \{id = accountStatusContainer}
	endif
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script create_join_private_menu 
	printf \{"--- create_join_private_menu"}
	z = 110
	create_menu_backdrop \{texture = Online_Background}
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = private_menu_container
		pos = (0.0, 0.0)
		event_handlers = [
			{
				focus
				retail_menu_focus
			}
			{
				unfocus
				retail_menu_unfocus
			}
			{
				pad_choose
				executeJoinAttempt
			}
			{
				pad_back
				ui_flow_manager_respond_to_action
				params = {
					action = back
				}
			}
		]}
	NetSessionFunc \{func = InitializeLoginFields
		params = {
			loginMode = matchUsername
		}}
	displaySprite \{parent = private_menu_container
		tex = Dialog_Title_BG
		dims = (300.0, 250.0)
		z = 9
		pos = (640.0, 50.0)
		just = [
			right
			top
		]
		flip_v}
	displaySprite \{parent = private_menu_container
		tex = Dialog_Title_BG
		dims = (300.0, 250.0)
		z = 9
		pos = (640.0, 50.0)
		just = [
			left
			top
		]}
	CreateScreenElement \{type = TextElement
		parent = private_menu_container
		font = fontgrid_title_gh3
		scale = 1.0
		rgba = [
			223
			223
			223
			250
		]
		text = "Rejoindre partie privée"
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 145.0)
		shadow
		shadow_offs = (3.0, 3.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	fit_text_in_rectangle id = <id> dims = (400.0, 75.0) pos = (640.0, 145.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center
	CreateScreenElement \{type = TextElement
		parent = private_menu_container
		font = text_a4
		scale = 1.0
		rgba = [
			180
			180
			180
			255
		]
		text = "*Saisis à l'aide du clavier le nom d'utilisateur de la partie à rejoindre.*"
		just = [
			center
			top
		]
		z_priority = 10.0
		pos = (640.0, 590.0)
		shadow
		shadow_offs = (1.0, 1.0)
		shadow_rgba = [
			0
			0
			0
			255
		]}
	fit_text_in_rectangle id = <id> dims = (600.0, 25.0) pos = (640.0, 590.0) only_if_larger_x = 1 only_if_larger_y = 1 just = center keep_ar = 1
	<pos> = (375.0, 320.0)
	create_winport_login_field container = private_menu_container pos = <pos> label = "Nom d'utilisateur de partie : " labelId = usernameLabelId prefixId = usernamePrefixId cursorId = usernameCursorId suffixId = usernameSuffixId ang = -2.0
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
	add_user_control_helper \{text = "ACCEPTER"
		button = green
		z = 100}
	add_user_control_helper \{text = "RETOUR"
		button = red
		z = 100}
	LaunchEvent \{type = focus
		target = private_menu_container}
	begin
	update_winport_login_field \{field = matchUsername
		labelId = usernameLabelId
		prefixId = usernamePrefixId
		cursorId = usernameCursorId
		suffixId = usernameSuffixId}
	Wait \{1
		frame}
	if NOT (ScreenElementExists id = private_menu_container)
		return
	endif
	NetSessionFunc \{func = GetLoginEntry}
	if ((<loginEntry> = loginAccepted) || (<loginEntry> = loginAborted))
		break
	endif
	repeat
	switch <loginEntry>
		case loginAccepted
		executeJoinAttempt
		case loginAborted
		ui_flow_manager_respond_to_action \{action = back}
	endswitch
endscript

script executeJoinAttempt 
	NetSessionFunc \{func = GeneratePrivateMatchId}
	change gPrivateMatchId = <privateMatchId>
	ui_flow_manager_respond_to_action \{action = attempt_join}
endscript

script destroy_join_private_menu 
	NetSessionFunc \{func = DestroyLoginFields}
	DestroyScreenElement \{id = private_menu_container}
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script create_logout_submenu 
	printf \{"--- create_logout_submenu"}
	create_popup_warning_menu \{textblock = {
			title = "SE DÉCONNECTER"
			text = "Sélectionner Se déconnecter mettra fin à la session en ligne actuelle. Les scores ne seront pas suivis au classement jusqu'à la prochaine connexion."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = executeLogout
				text = "SE DÉCONNECTER"
			}
			{
				func = {
					ui_flow_manager_respond_to_action
					params = {
						action = back
					}
				}
				text = "RESTER EN LIGNE"
			}
		]}
endscript

script destroy_logout_submenu 
	destroy_popup_warning_menu
	clean_up_user_control_helpers
	destroy_menu_backdrop
endscript

script executeLogout 
	NetSessionFunc \{func = ResetNetwork}
	Wait \{1.0
		second}
	destroy_logout_submenu
	start_flow_manager \{flow_state = main_menu_fs}
endscript

script create_account_submenu \{menu_title = "GESTION DE COMPTE"
		menu_id = online_account_menu
		vmenu_id = online_account_vmenu}
	change \{online_main_menu_pos = (640.0, 110.0)}
	CreateScreenElement \{type = ContainerElement
		parent = root_window
		id = account_submenu_anchor
		pos = (0.0, 0.0)}
	CreateScreenElement {
		type = VScrollingMenu
		parent = account_submenu_anchor
		id = <menu_id>
		just = [center top]
		dims = (400.0, 480.0)
		pos = (($online_main_menu_pos) + (0.0, 75.0))
		z_priority = 1
	}
	CreateScreenElement {
		type = VMenu
		parent = <menu_id>
		id = <vmenu_id>
		pos = (47.5, 0.0)
		just = [left top]
		internal_just = [center top]
		dims = (400.0, 480.0)
		event_handlers = [
			{pad_back ui_flow_manager_respond_to_action params = {action = back}}
			{pad_back generic_menu_pad_back}
			{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
		]
	}
	CreateScreenElement \{type = ContainerElement
		parent = account_submenu_anchor
		id = online_account_submenu_container
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = ContainerElement
		parent = online_account_submenu_container
		id = online_account_submenu_text_container
		pos = (0.0, 0.0)}
	CreateScreenElement \{type = ContainerElement
		parent = account_submenu_anchor
		id = online_info_pane_container
		pos = (0.0, 0.0)}
	create_menu_backdrop \{texture = Online_Background}
	displaySprite id = online_frame parent = online_account_submenu_container tex = Online_Frame_Large pos = ($online_main_menu_pos) dims = (660.0, 480.0) just = [center top] z = 2
	displaySprite id = online_frame_crown parent = online_account_submenu_container tex = online_frame_crown pos = (($online_main_menu_pos) + (0.0, -62.0)) dims = (256.0, 105.0) just = [center top] z = 3
	CreateScreenElement {
		type = TextElement
		parent = online_account_submenu_text_container
		id = online_title
		font = fontgrid_title_gh3
		scale = 0.85
		rgba = ($online_dark_purple)
		pos = (($online_main_menu_pos) + (0.0, 35.0))
		text = <menu_title>
		just = [center top]
		z_priority = 4.0
	}
	GetScreenElementDims id = <id>
	if (<width> > 420)
		SetScreenElementProps {
			id = <id>
			scale = 1.0
		}
		scale_element_to_size {
			id = <id>
			target_width = 420
			target_height = <Height>
		}
	endif
	net_add_item_to_main_menu {
		VMenu = <vmenu_id>
		text = "Se déconnecter"
		pad_choose_script = ui_flow_manager_respond_to_action
		choose_script_params = {action = execute_logout}
		line_spacing = 50
	}
	net_add_item_to_main_menu {
		VMenu = <vmenu_id>
		text = "Changer de mot de passe"
		pad_choose_script = ui_flow_manager_respond_to_action
		choose_script_params = {action = execute_change_password}
		line_spacing = 50
	}
	net_add_item_to_main_menu {
		VMenu = <vmenu_id>
		text = "Supprimer le compte"
		pad_choose_script = ui_flow_manager_respond_to_action
		choose_script_params = {action = execute_delete_account}
		line_spacing = 50
	}
	set_focus_color rgba = ($online_dark_purple)
	set_unfocus_color rgba = ($online_light_blue)
	create_online_main_menu_helper_buttons
	LaunchEvent type = focus target = <vmenu_id>
endscript

script destroy_account_submenu 
	clean_up_user_control_helpers
	destroy_menu_backdrop
	if ScreenElementExists \{id = account_submenu_anchor}
		DestroyScreenElement \{id = account_submenu_anchor}
	endif
endscript
