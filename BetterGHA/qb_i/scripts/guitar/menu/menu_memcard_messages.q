load_warning_menu_font = fontgrid_title_gh3

script create_network_prompt_menu 
	memcard_cleanup_messages
	create_popup_warning_menu \{textblock = {
			text = "Per far apparire la tua performance con quella di altri giocatori nelle Classifiche, ti serve un account online."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		TextElement = {
			text = "Vuoi collegarti online adesso?"
			pos = (640.0, 465.0)
			scale = 0.6
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (600.0, 80.0)
		options = [
			{
				func = startup_go_online
				text = "SÌ"
			}
			{
				func = startup_stay_offline
				text = "NO"
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
			text = "Vuoi eseguire il login automaticamente ogni volta che esegui Guita Hero: Aerosmith? Puoi cambiare la tua selezione dal menu Opzioni anche in seguito."
			dims = (800.0, 400.0)
			scale = 0.5
		}
		menu_pos = (640.0, 480.0)
		dialog_dims = (340.0, 80.0)
		options = [
			{
				func = set_autologin_yes_result
				text = "SÌ"
			}
			{
				func = set_autologin_no_result
				text = "NO"
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
					text = "Non hai effettuato l'accesso alla PLAYSTATION®Network. Non potrai scrivere le statistiche."
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (288.0, 64.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = signin_warning_select_continue
						text = "CONTINUA"
						scale = (1.0, 1.0)
					}
				]}
			case xenon
			create_popup_warning_menu \{textblock = {
					text = "Non hai eseguito l'accesso ad alcun profilo giocatore Xbox 360. Non potrai salvare il contenuto della partita se prima non effettui l'accesso."
					dims = (800.0, 400.0)
					scale = 0.5
				}
				TextElement = {
					text = "Vuoi accedere?"
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
						text = "ACCEDI"
					}
					{
						func = signin_warning_select_cws
						text = "CONTINUA SENZA SALVARE"
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
			text = "Questo gioco salva automaticamente i dati in alcuni momenti specifici. Non spegnere il sistema quando la spia accesso disco fisso lampeggia."
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
		<text> = "Devi essere connesso a Xbox LIVE."
	else
		<text> = "Per accedere alle funzionalità della PLAYSTATION®Network devi effettuare la connessione."
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
				text = "CONTINUA"
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
		desc_text = "Nessuna periferica di memorizzazione selezionata o trovata. Se non è disponibile una periferica di memorizzazione, tutti i progressi andranno persi."
		continue_text = "CONTINUA SENZA SALVARE"
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
					text = "SELEZIONA PERIFERICA DI MEMORIZZAZIONE"
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
		create_popup_warning_menu \{title = "VERIFICA IN CORSO..."
			textblock = {
				text = "Verifica disco fisso in corso... Non spegnere il sistema durante questa fase."
			}}
		case xenon
		create_popup_warning_menu \{title = "VERIFICA IN CORSO..."
			textblock = {
				text = "Controllo periferica di memoria..."
			}}
	endswitch
endscript

script create_confirm_overwrite_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Sovrascrivere i dati salvati? Tutti i progressi contenuti in questo salvataggio andranno persi."
		case xenon
		text = "Sovrascrivere questo contenuto? Tutti i progressi contenuti in questo salvataggio andranno persi."
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
				text = "SOVRASCRIVI"
			}
			{
				func = {memcard_sequence_quit}
				text = "ANNULLA"
			}
		]
	}
endscript

script create_confirm_load_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		text = "Caricare i dati salvati? Tutti i progressi compiuti dall'ultimo salvataggio andranno persi."
		case xenon
		text = "Caricare questo contenuto? Tutti i progressi compiuti dall'ultimo salvataggio andranno persi."
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
				text = "CARICA"
			}
			{
				func = {memcard_sequence_quit}
				text = "ANNULLA"
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
					text = "Nessun salvataggio di Guitar Hero Aerosmith rilevato sul disco fisso."
				}
				menu_pos = (640.0, 480.0)
				dialog_dims = (288.0, 64.0)
				helper_pills = [
					select
				]
				options = [
					{
						func = memcard_sequence_quit
						text = "CONTINUA"
						scale = (1.0, 1.0)
					}
				]}
			case xenon
			create_popup_warning_menu \{title = "NESSUN SALVATAGGIO"
				textblock = {
					text = "Nessun salvataggio di GUITAR HERO Aerosmith rilevato."
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
						text = "PROVA UN'ALTRA PERIFERICA"
					}
					{
						func = memcard_sequence_quit
						text = "ANNULLA"
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
		text = "I dati salvati sono danneggiati e non possono essere utilizzati. Vuoi eliminarli? Tutti i progressi contenuti in questo salvataggio andranno persi."
		case xenon
		text = "Il contenuto del gioco è danneggiato e non può essere utilizzato. Eliminare questo contenuto? Tutti i progressi contenuti in questo salvataggio andranno persi."
	endswitch
	if ($MemcardSavingOrLoading = Saving)
		options = [
			{
				func = memcard_delete_file
				text = "ELIMINA"
				scale = 1
			}
			{
				func = memcard_disable_saves_and_quit
				text = "CONTINUA SENZA SALVARE"
				scale = 1
			}
		]
	else
		options = [
			{
				func = memcard_delete_file
				text = "ELIMINA"
				scale = 1
			}
			{
				func = memcard_sequence_quit
				text = "CONTINUA SENZA SALVARE"
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
		create_popup_warning_menu \{title = "ELIMINAZIONE IN CORSO..."
			textblock = {
				text = "Eliminazione dei dati salvati in corso. Non spegnere il sistema durante questa fase."
			}}
		case xenon
		create_popup_warning_menu \{title = "ELIMINAZIONE IN CORSO..."
			textblock = {
				text = "Eliminazione contenuti..."
			}}
	endswitch
endscript

script create_delete_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Eliminazione completata."
			}}
		case xenon
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Eliminazione completata."
			}}
	endswitch
endscript

script create_load_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Caricamento completato."
			}}
		case xenon
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Caricamento completato."
			}}
	endswitch
endscript

script create_save_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Salvataggio completato."
			}}
		case xenon
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Salvataggio completato."
			}}
	endswitch
endscript

script create_overwrite_success_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Sovrascrittura completata."
			}}
		case xenon
		create_popup_warning_menu \{title = "COMPLETATO"
			textblock = {
				text = "Sovrascrittura completata."
			}}
	endswitch
endscript

script create_delete_failed_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ELIMINAZIONE FALLITA!"
			textblock = {
				text = "Eliminazione fallita! Esci dal gioco ed elimina questi dati."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
				}
			]}
		case xenon
		create_popup_warning_menu \{title = "ELIMINAZIONE FALLITA!"
			textblock = {
				text = "Impossibile eliminare."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
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
				text = "Tentativo di caricamento fallito. Il salvataggio è corrotto."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Tentativo di caricamento fallito."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
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
				text = "Tentativo di salvataggio fallito."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Salvataggio fallito.\\nNessuna periferica di memorizzazione selezionata oppure la periferica di memorizzazione in uso non è disponibile."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
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
				text = "Tentativo di sovrascrittura fallito."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
				}
			]}
		case xenon
		create_popup_warning_menu \{textblock = {
				text = "Sovrascrittura fallita.\\nNessuna periferica di memorizzazione selezionata oppure la periferica di memorizzazione in uso non è disponibile."
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
					text = "RIPROVA"
				}
				{
					func = memcard_sequence_quit
					text = "CONTINUA"
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
		FormatText TextName = message "Spazio su disco fisso insufficiente per salvare le partite. Guitar Hero Aerosmith richiede %dKB di spazio libero su disco per effettuare un singolo salvataggio. Se decidi di proseguire, non potrai salvare i progressi fatti durante la partita." d = <SpaceRequired>
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
					text = "ELIMINA FILE"
				}
				{
					func = memcard_disable_saves_and_quit
					text = "CONTINUA SENZA SALVARE"
				}
			]
		}
		case xenon
		if ($MemcardSavingOrLoading = Saving)
			create_popup_warning_menu \{textblock = {
					text = [
						"Spazio insufficiente per salvare"
						"\\n"
						"Elimina alcuni dati esistenti."
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
						text = "CONTINUA SENZA SALVARE"
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
		create_popup_warning_menu \{title = "CARICAMENTO"
			textblock = {
				text = "Caricamento dei dati in corso... Non resettare/spegnere il sistema."
			}}
		case xenon
		create_popup_warning_menu \{title = "CARICAMENTO"
			textblock = {
				text = "Caricamento contenuto..."
			}}
	endswitch
endscript

script create_overwrite_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "SOVRASCRITTURA"
			textblock = {
				text = "Sovrascrittura del salvataggio precedente in corso. Non spegnere il sistema durante questa fase."
			}}
		case xenon
		default
		create_popup_warning_menu \{title = "ATTENDERE"
			textblock = {
				text = "Salvataggio contenuti..."
			}}
	endswitch
endscript

script create_save_menu 
	memcard_cleanup_messages
	GetPlatform
	switch <platform>
		case ps3
		create_popup_warning_menu \{title = "ATTENDERE"
			textblock = {
				text = "Salvataggio sul disco fisso in corso... Non resettare/spegnere il sistema."
			}}
		case xenon
		create_popup_warning_menu \{title = "ATTENDERE"
			textblock = {
				text = "Salvataggio contenuti"
			}}
	endswitch
endscript
