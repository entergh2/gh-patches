load_warning_menu_font = fontgrid_title_gh3

script create_network_prompt_menu 
	memcard_cleanup_messages
	create_popup_warning_menu \{textblock = {
			text = "Pour évaluer ta performance face à celle d'autres joueurs au classement, il te faut un compte en ligne."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		TextElement = {
			text = "Veux-tu te connecter maintenant ?"
			pos = (640.0, 465.0)
			scale = 0.6
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = startup_go_online
				text = "OUI"
			}
			{
				func = startup_stay_offline
				text = "NON"
			}
		]}
endscript

script destroy_network_prompt_menu 
	destroy_popup_warning_menu
endscript

script startup_go_online 
	ui_flow_manager_respond_to_action \{action = select_startup_go_online}
endscript

script startup_stay_offline 
	ui_flow_manager_respond_to_action \{action = select_startup_stay_offline}
endscript

script create_autologin_prompt_menu 
	memcard_cleanup_messages
	create_popup_warning_menu \{textblock = {
			text = "Veux-tu te connecter à chaque lancement de Guitar Hero: Aerosmith ? Tu pourras modifier ton choix par la suite dans le menu Options."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (340.0, 80.0)
		options = [
			{
				func = set_autologin_yes_result
				text = "OUI"
			}
			{
				func = set_autologin_no_result
				text = "NON"
			}
		]}
endscript

script destroy_autologin_prompt_menu 
	destroy_popup_warning_menu
endscript

script set_autologin_yes_result 
	NetSessionFunc \{func = SetAutoLoginSetting
		params = {
			autoLoginSetting = autoLoginOn
		}}
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script set_autologin_no_result 
	NetSessionFunc \{func = SetAutoLoginSetting
		params = {
			autoLoginSetting = autoLoginOff
		}}
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script set_autologin_prompt_result 
	NetSessionFunc \{func = SetAutoLoginSetting
		params = {
			autoLoginSetting = autoLoginPrompt
		}}
	ui_flow_manager_respond_to_action \{action = continue}
endscript

script create_signin_warning_menu 
	memcard_cleanup_messages
	if NOT IsWinPort
		GetPlatform
		switch <platform>
			case ps3
			create_popup_warning_menu \{textblock = {
					text = "Tu n'es pas connecté à PLAYSTATION®Network. Tu ne pourras pas saisir tes statistiques."
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (288.0, 64.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = signin_warning_select_continue
						text = "CONTINUER"
						scale = (1.0, 1.0)
					}
				]}
			case xenon
			create_popup_warning_menu \{textblock = {
					text = "Tu n'es pas connecté à un profil du joueur Xbox 360. Tu ne pourras pas sauvegarder ta progression si tu ne te connectes pas."
					dims = (800.0, 400.0)
					scale = 0.5
				}
				TextElement = {
					text = "Veux-tu te connecter ?"
					pos = (640.0, 465.0)
					scale = 0.6
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (600.0, 80.0)
				helper_pills = [
					select
					updown
				]
				options = [
					{
						func = signin_warning_select_signin
						text = "SE CONNECTER"
					}
					{
						func = signin_warning_select_cws
						text = "CONTINUER SANS SAUVEGARDER"
					}
				]}
		endswitch
	endif
endscript

script destroy_signin_warning_menu 
	destroy_popup_warning_menu
endscript

script signin_warning_select_signin 
	ui_flow_manager_respond_to_action \{action = select_choose_storage_device}
endscript

script signin_warning_select_cws 
	start_checking_for_signin_change
	change \{enable_saving = 0}
	SetGlobalTags \{user_options
		params = {
			autosave = 0
		}}
	RefreshXUserSigninInfo device_num = <device_num>
	ui_flow_manager_respond_to_action \{action = select_continue_without_saving}
endscript

script signin_warning_select_continue 
	ui_flow_manager_respond_to_action \{action = select_continue_without_signing_in}
endscript

script create_signin_complete_menu 
	memcard_cleanup_messages
	create_popup_warning_menu \{textblock = {
			text = "Cette partie sera automatiquement sauvegardée. Ne pas éteindre le système si l'indicateur d'accès disque dur clignote."
			pos = (640.0, 380.0)
			scale = 0.6
		}
		menu_pos = (640.0, 490.0)
		dialog_dims = (384.0, 64.0)
		helper_pills = [
			select
		]
		options = [
			{
				func = signin_complete_menu_select_ok
				text = "OK"
				scale = (1.0, 1.0)
			}
		]}
	change \{signin_complete_menu_select_ok_called = 0}
endscript
signin_complete_menu_select_ok_called = 0

script signin_complete_menu_select_ok 
	if ($signin_complete_menu_select_ok_called = 0)
		change \{signin_complete_menu_select_ok_called = 1}
		destroy_popup_warning_menu
		ui_flow_manager_respond_to_action \{action = continue}
	endif
endscript

script destroy_signin_complete_menu 
	destroy_popup_warning_menu
endscript

script create_online_signin_warning_menu 
	memcard_cleanup_messages
	if isXenon
		<text> = "Tu dois être connecté à Xbox LIVE."
	else
		<text> = "Tu dois être connecté pour accéder aux fonctionnalités du PLAYSTATION®Network"
	endif
	create_popup_warning_menu {
		textblock = {
			text = <text>
		}
		menu_pos = (640.0, 490.0)
		dialog_dims = (288.0, 64.0)
		helper_pills = [select]
		options = [
			{
				func = {ui_flow_manager_respond_to_action params = {action = continue}}
				text = "CONTINUER"
				scale = (1.0, 1.0)
			}
		]
	}
endscript

script destroy_online_signin_warning_menu 
	destroy_popup_warning_menu
endscript

script create_storagedevice_warning_menu 
	memcard_cleanup_messages
	if IsPs3
		memcard_sequence_quit
	else
		desc_text = "Aucun périphérique de stockage sélectionné ni détecté. Si aucun périphérique n'est disponible, la progression ne sera pas sauvegardée."
		continue_text = "CONTINUER SANS SAUVEGARDER"
		continue_func = memcard_disable_saves_and_quit
		create_popup_warning_menu {
			textblock = {
				text = <desc_text>
				pos = (640.0, 380.0)
				dims = (700.0, 400.0)
				scale = 0.6
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (600.0, 80.0)
			dialog_pos = (640.0, 455.0)
			dialgo
			helper_pills = [select updown]
			options = [
				{
					func = {memcard_sequence_retry params = {StorageSelectorForce = 1}}
					text = "CHOISIS LE PÉRIPHÉRIQUE DE STOCKAGE"
				}
				{
					func = <continue_func>
					text = <continue_text>
				}
			]
		}
	endif
	mark_safe_for_shutdown
endscript

script create_checking_memory_card_screen 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "VÉRIFICATION..."
			textblock = {
				text = "Vérification du disque dur. Ne pas éteindre le système."
			}}
		case xenon
		create_popup_warning_menu \{title = "VÉRIFICATION..."
			textblock = {
				text = "Vérification du périphérique de stockage..."
			}}
	endswitch
endscript

script create_confirm_overwrite_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Écraser ces données de sauvegarde ? Toute progression relative à ces données de sauvegarde sera perdue."
		case xenon
		text = "Veux-tu vraiment écraser ce contenu ? Toute progression associée à ce contenu sera perdue."
	endswitch
	create_popup_warning_menu {
		textblock = {
			text = <text>
			pos = (640.0, 370.0)
		}
		menu_pos = (640.0, 465.0)
		dialog_dims = (350.0, 64.0)
		helper_pills = [select updown]
		options = [
			{
				func = {memcard_save_file params = {OverwriteConfirmed = 1}}
				text = "ÉCRASER"
			}
			{
				func = {memcard_sequence_quit}
				text = "ANNULER"
			}
		]
	}
endscript

script create_confirm_load_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Charger ces données de sauvegarde ? Toute progression depuis la dernière sauvegarde sera perdue."
		case xenon
		text = "Veux-tu vraiment charger ce contenu ? Toute progression depuis ta dernière sauvegarde sera perdue."
	endswitch
	create_popup_warning_menu {
		textblock = {
			text = <text>
			pos = (640.0, 370.0)
		}
		menu_pos = (640.0, 465.0)
		dialog_dims = (256.0, 64.0)
		helper_pills = [select updown]
		options = [
			{
				func = {memcard_load_file params = {LoadConfirmed = 1}}
				text = "CHARGER"
			}
			{
				func = {memcard_sequence_quit}
				text = "ANNULER"
			}
		]
	}
endscript

script create_no_save_found_menu 
	memcard_cleanup_messages
	if NOT IsWinPort
		GetPlatform
		switch <platform>
			case ps3
			create_popup_warning_menu \{textblock = {
					text = "Il n'y pas de données GUITAR HERO Aerosmith sur le disque dur."
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (288.0, 64.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = memcard_sequence_quit
						text = "CONTINUER"
						scale = (1.0, 1.0)
					}
				]}
			case xenon
			create_popup_warning_menu \{title = "AUCUNE SAUVEGARDE"
				textblock = {
					text = "Aucune sauvegarde GUITAR HERO Aerosmith détectée."
				}
				menu_pos = (640.0, 465.0)
				dialog_dims = (500.0, 80.0)
				dialog_pos = (640.0, 450.0)
				helper_pills = [
					select
					updown
				]
				options = [
					{
						func = {
							memcard_sequence_retry
							params = {
								StorageSelectorForce = 1
							}
						}
						text = "ESSAYER AUTRE PÉRIPHÉRIQUE"
					}
					{
						func = memcard_sequence_quit
						text = "ANNULER"
					}
				]}
		endswitch
	endif
endscript

script create_corrupted_data_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Les données de sauvegarde sont endommagées et inutilisables. Effacer ces données de sauvegarde ? Toute progression relative à ces données de sauvegarde sera perdue."
		case xenon
		text = "Le contenu du jeu est endommagé et inutilisable. Veux-tu effacer ce \\ncontenu ? Toute progression associée à ce contenu sera perdue."
	endswitch
	if ($MemcardSavingOrLoading = Saving)
		options = [
			{
				func = memcard_delete_file
				text = "EFFACER"
				scale = 1
			}
			{
				func = memcard_disable_saves_and_quit
				text = "CONTINUER SANS SAUVEGARDER"
				scale = 1
			}
		]
	else
		options = [
			{
				func = memcard_delete_file
				text = "EFFACER"
				scale = 1
			}
			{
				func = memcard_sequence_quit
				text = "CONTINUER SANS SAUVEGARDER"
				scale = 1
			}
		]
	endif
	create_popup_warning_menu {
		textblock = {
			text = <text>
			dims = (800.0, 500.0)
			pos = (640.0, 375.0)
			scale = 0.5
		}
		menu_pos = (640.0, 465.0)
		dialog_dims = (256.0, 64.0)
		helper_pills = [select updown]
		options = <options>
	}
endscript

script create_delete_file_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "SUPPRESSION EN COURS..."
			textblock = {
				text = "Suppression des données sauvegardées. Ne pas éteindre le système."
			}}
		case xenon
		create_popup_warning_menu \{title = "SUPPRESSION EN COURS..."
			textblock = {
				text = "Suppression de contenu..."
			}}
	endswitch
endscript

script create_delete_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Suppression réussie"
			}}
		case xenon
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Suppression réussie"
			}}
	endswitch
endscript

script create_load_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Chargement réussi."
			}}
		case xenon
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Chargement réussi."
			}}
	endswitch
endscript

script create_save_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Sauvegarde réussie."
			}}
		case xenon
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Sauvegarde réussie."
			}}
	endswitch
endscript

script create_overwrite_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Écrasement réussi."
			}}
		case xenon
		create_popup_warning_menu \{title = "RÉUSSI"
			textblock = {
				text = "Écrasement réussi."
			}}
	endswitch
endscript

script create_delete_failed_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ÉCHEC SUPPRESSION !"
			textblock = {
				text = "Échec suppression ! Quitte le jeu pour supprimer ces données."
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
		case xenon
		create_popup_warning_menu \{title = "ÉCHEC SUPPRESSION !"
			textblock = {
				text = "Suppression impossible"
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
	endswitch
endscript

script create_load_failed_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{textblock = {
				text = "Échec du chargement. La sauvegarde semble corrompue."
				pos = (640.0, 380.0)
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Échec du chargement."
				pos = (640.0, 380.0)
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
	endswitch
endscript

script create_save_failed_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{textblock = {
				text = "Échec de la sauvegarde."
				pos = (640.0, 380.0)
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Échec de la sauvegarde.\\Aucun périphérique de stockage n'a été sélectionné ou celui en cours d'utilisation n'est pas disponible."
				pos = (640.0, 380.0)
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
	endswitch
endscript

script create_overwrite_failed_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{textblock = {
				text = "Échec de l'écrasement."
				pos = (640.0, 380.0)
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Échec de l'écrasement.\\nAucun périphérique de stockage n'a été sélectionné ou celui en cours d'utilisation n'est pas disponible."
				pos = (640.0, 380.0)
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (275.0, 64.0)
			helper_pills = [
				select
				updown
			]
			options = [
				{
					func = memcard_sequence_retry
					text = "RÉESSAYER"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUER"
				}
			]}
	endswitch
endscript

script create_out_of_space_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		MC_SpaceForNewFolder \{desc = GuitarContent}
		FormatText TextName = message "Pas assez d'espace libre sur le disque dur pour sauvegarder les parties. Guitar Hero Aerosmith nécessite %d Ko sur le disque dur pour sauvegarder une partie. Si vous choisissez de continuer, votre progression ne sera pas sauvegardée." d = <SpaceRequired>
		create_popup_warning_menu {
			textblock = {
				text = <message>
				pos = (640.0, 390.0)
				dims = (900.0, 490.0)
				scale = 0.5
			}
			menu_pos = (640.0, 465.0)
			dialog_dims = (600.0, 80.0)
			helper_pills = [select updown]
			options = [
				{
					func = memcard_delete_file
					text = "SUPPRIMER LES FICHIERS"
				}
				{
					func = memcard_disable_saves_and_quit
					text = "CONTINUER SANS SAUVEGARDER"
				}
			]
		}
		case xenon
		if ($MemcardSavingOrLoading = Saving)
			create_popup_warning_menu \{textblock = {
					text = [
						"Espace insuffisant pour sauvegarder."
						"\\n"
						"Veuillez supprimer des données existantes."
					]
					pos = (640.0, 390.0)
					dims = (900.0, 490.0)
					scale = 0.5
				}
				menu_pos = (640.0, 465.0)
				dialog_dims = (600.0, 80.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = memcard_disable_saves_and_quit
						text = "CONTINUER SANS SAUVEGARDER"
					}
				]}
		else
			create_load_failed_menu
		endif
	endswitch
endscript

script create_load_file_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "CHARGEMENT..."
			textblock = {
				text = "Chargement des données. Ne pas réinitialiser, ni éteindre le système."
			}}
		case xenon
		create_popup_warning_menu \{title = "CHARGEMENT..."
			textblock = {
				text = "Chargement de contenu..."
			}}
	endswitch
endscript

script create_overwrite_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ÉCRASEMENT EN COURS..."
			textblock = {
				text = "Écrasement des données sauvegardées. Ne pas éteindre le système."
			}}
		case xenon
		default
		create_popup_warning_menu \{title = "SAUVEGARDE..."
			textblock = {
				text = "Sauvegarde de contenu..."
			}}
	endswitch
endscript

script create_save_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "SAUVEGARDE..."
			textblock = {
				text = "Sauvegarde sur le disque dur. Ne pas réinitialiser, ni éteindre le système."
			}}
		case xenon
		create_popup_warning_menu \{title = "SAUVEGARDE..."
			textblock = {
				text = "Sauvegarde de contenu."
			}}
	endswitch
endscript
