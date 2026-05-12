load_warning_menu_font = fontgrid_title_gh3

script create_network_prompt_menu 
	memcard_cleanup_messages
	create_popup_warning_menu \{textblock = {
			text = "Um deine Leistung in den Bestenlisten mit den Leistungen anderer Spieler vergleichen zu können, brauchst du ein Online-Konto."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		TextElement = {
			text = "Möchtest du jetzt online gehen?"
			pos = (640.0, 465.0)
			scale = 0.6
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = startup_go_online
				text = "JA"
			}
			{
				func = startup_stay_offline
				text = "NEIN"
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
			text = "Möchtest du bei jedem Start von Guitar Hero: Aerosmith automatisch angemeldet werden? Du kannst deine Auswahl später im Menü 'Optionen' ändern."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (340.0, 80.0)
		options = [
			{
				func = set_autologin_yes_result
				text = "JA"
			}
			{
				func = set_autologin_no_result
				text = "NEIN"
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
					text = "Sie sind beim PLAYSTATION®Network nicht angemeldet. Sie können keine Statistiken schreiben."
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (288.0, 64.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = signin_warning_select_continue
						text = "WEITER"
						scale = (1.0, 1.0)
					}
				]}
			case xenon
			create_popup_warning_menu \{textblock = {
					text = "Sie sind bei keinem Xbox 360 Spielerprofil angemeldet. Sie können keine Spielinhalte speichern, solange Sie nicht angemeldet sind."
					dims = (800.0, 400.0)
					scale = 0.5
				}
				TextElement = {
					text = "Wollen Sie sich anmelden?"
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
						text = "ANMELDEN"
					}
					{
						func = signin_warning_select_cws
						text = "OHNE SPEICHERN FORTFAHREN"
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
			text = "Dieses Spiel speichert Daten an bestimmten Stellen automatisch. System nicht ausschalten, wenn die Festplatten-Kontroll-Leuchte aufleuchtet."
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
		<text> = "Du musst bei Xbox LIVE angemeldet sein."
	else
		<text> = "Sie müssen sich anmelden, um auf die PLAYSTATION®Network-Features zugreifen zu können."
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
				text = "WEITER"
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
		desc_text = "Kein Speichermedium gewählt oder gefunden. Steht kein Speichermedium zur Verfügung, dann können keine Fortschritte gespeichert werden."
		continue_text = "OHNE SPEICHERN FORTFAHREN"
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
					text = "SPEICHERMEDIUM WÄHLEN"
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
		create_popup_warning_menu \{title = "PRÜFEN ..."
			textblock = {
				text = "Festplatte wird überprüft. Schalten Sie das System währenddessen nicht aus."
			}}
		case xenon
		create_popup_warning_menu \{title = "PRÜFEN ..."
			textblock = {
				text = "Speichergerät wird überprüft ..."
			}}
	endswitch
endscript

script create_confirm_overwrite_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Bist Du sicher, dass Du diese Speicherdaten überschreiben möchtst? Alle Fortschritte in diesen Speicherdaten gehen dabei verloren."
		case xenon
		text = "Sind Sie sicher, dass Sie diesen Inhalt überschreiben möchten? Alle Fortschritte in diesem gespeicherten Inhalt gehen dabei verloren."
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
				text = "ÜBERSCHREIBEN"
			}
			{
				func = {memcard_sequence_quit}
				text = "ABBRECHEN"
			}
		]
	}
endscript

script create_confirm_load_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Bist Du sicher, dass Du diese Speicherdaten laden möchtst? Alle Fortschritte, die Du seit dem letzten Speichern gemacht hast, gehen dabei verloren."
		case xenon
		text = "Sind Sie sicher, dass Sie diesen Inhalt laden möchten? Alle Fortschritte, die Sie seit dem letzten Speichern gemacht haben, gehen dabei verloren."
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
				text = "LADEN"
			}
			{
				func = {memcard_sequence_quit}
				text = "ABBRECHEN"
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
					text = "Auf der Festplatte wurden keine GUITAR HERO Aerosmith-Speicherdaten gefunden."
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (288.0, 64.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = memcard_sequence_quit
						text = "WEITER"
						scale = (1.0, 1.0)
					}
				]}
			case xenon
			create_popup_warning_menu \{title = "KEINE GESPEICHERTEN DATEN"
				textblock = {
					text = "Keine GUITAR HERO Aerosmith Daten vorhanden."
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
						text = "ANDERES GERÄT VERSUCHEN"
					}
					{
						func = memcard_sequence_quit
						text = "ABBRECHEN"
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
		text = "Speicherdaten sind beschädigt und können nicht verwendet werden. Willst Du diese Speicherdaten löschen? Alle Fortschritte in diesen Speicherdaten gehen dabei verloren."
		case xenon
		text = "Spielinhalt ist beschädigt und kann nicht verwendet werden. Wollen Sie diesen Inhalt löschen? Alle Fortschritte in diesem gespeicherten Inhalt gehen dabei verloren."
	endswitch
	if ($MemcardSavingOrLoading = Saving)
		options = [
			{
				func = memcard_delete_file
				text = "LÖSCHEN"
				scale = 1
			}
			{
				func = memcard_disable_saves_and_quit
				text = "OHNE SPEICHERN FORTFAHREN"
				scale = 1
			}
		]
	else
		options = [
			{
				func = memcard_delete_file
				text = "LÖSCHEN"
				scale = 1
			}
			{
				func = memcard_sequence_quit
				text = "OHNE SPEICHERN FORTFAHREN"
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
		create_popup_warning_menu \{title = "LÖSCHEN ..."
			textblock = {
				text = "Daten löschen. Schalten Sie das System währenddessen nicht aus."
			}}
		case xenon
		create_popup_warning_menu \{title = "LÖSCHEN ..."
			textblock = {
				text = "Inhalt wird gelöscht..."
			}}
	endswitch
endscript

script create_delete_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Löschen erfolgreich."
			}}
		case xenon
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Löschen erfolgreich."
			}}
	endswitch
endscript

script create_load_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Laden erfolgreich."
			}}
		case xenon
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Laden erfolgreich."
			}}
	endswitch
endscript

script create_save_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Speichern erfolgreich."
			}}
		case xenon
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Speichern erfolgreich."
			}}
	endswitch
endscript

script create_overwrite_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Überschreiben erfolgreich."
			}}
		case xenon
		create_popup_warning_menu \{title = "ERFOLGREICH"
			textblock = {
				text = "Überschreiben erfolgreich."
			}}
	endswitch
endscript

script create_delete_failed_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "LÖSCHEN FEHLGESCHLAGEN!"
			textblock = {
				text = "Löschen fehlgeschlagen! Bitte beenden Sie das Spiel und löschen Sie diese Spieldaten."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
				}
			]}
		case xenon
		create_popup_warning_menu \{title = "LÖSCHEN FEHLGESCHLAGEN!"
			textblock = {
				text = "Kann nicht gelöscht werden"
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
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
				text = "Fehler beim Laden. Die Speicherdaten scheinen beschädigt zu sein."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Laden fehlgeschlagen."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
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
				text = "Speichern fehlgeschlagen."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Fehler beim Speichern.\\nEs wurden keine Speichermedien ausgewählt, oder das verwendete Speichermedium ist nicht verfügbar."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
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
				text = "Fehler beim Überschreiben."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Fehler beim Überschreiben.\\nEs wurden keine Speichermedien ausgewählt, oder das verwendete Speichermedium ist nicht verfügbar."
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
					text = "ERNEUT VERSUCHEN"
				}
				{
					func = memcard_sequence_quit
					text = "WEITER"
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
		FormatText TextName = message "Auf der Festplatte ist nicht genügend Speicherplatz vorhanden. Bei Guitar Hero Aerosmith wird %dKB Festplattenspeicherplatz zum Speichern eines Spielstands benötigt.  Wenn Sie fortfahren, können Sie Ihre Spielfortschritte nicht speichern." d = <SpaceRequired>
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
					text = "DATEIEN LÖSCHEN"
				}
				{
					func = memcard_disable_saves_and_quit
					text = "OHNE SPEICHERN FORTFAHREN"
				}
			]
		}
		case xenon
		if ($MemcardSavingOrLoading = Saving)
			create_popup_warning_menu \{textblock = {
					text = [
						"Kein freier Speicherplatz"
						"\\n"
						"Bitte lösche einige bestehende Dateien."
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
						text = "OHNE SPEICHERN FORTFAHREN"
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
		create_popup_warning_menu \{title = "LÄDT..."
			textblock = {
				text = "Lädt Daten. Bitte das System nicht zurücksetzen oder ausschalten."
			}}
		case xenon
		create_popup_warning_menu \{title = "LÄDT..."
			textblock = {
				text = "Inhalt wird geladen..."
			}}
	endswitch
endscript

script create_overwrite_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ÜBERSCHREIBEN ..."
			textblock = {
				text = "Vorherige Speicherdaten werden überschrieben. Schalten Sie das System währenddessen nicht aus."
			}}
		case xenon
		default
		create_popup_warning_menu \{title = "SPEICHERN ..."
			textblock = {
				text = "Inhalt wird gespeichert..."
			}}
	endswitch
endscript

script create_save_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "SPEICHERN ..."
			textblock = {
				text = "Speichere auf Festplatte. Bitte das System nicht zurücksetzen oder ausschalten."
			}}
		case xenon
		create_popup_warning_menu \{title = "SPEICHERN ..."
			textblock = {
				text = "Inhalt wird gespeichert."
			}}
	endswitch
endscript
