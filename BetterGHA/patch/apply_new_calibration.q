
script start_gem_scroller \{StartTime = 0
		practice_intro = 0
		training_mode = 0
		endtime = 99999999
		devil_finish_restart = 0
		end_credits_restart = 0}
	if (<devil_finish_restart> = 1)
		printf \{"FINISH DEVIL RESTART"}
	else
		change \{devil_finish = 0}
		if ($current_song = bossdevil)
			<StartTime> = 0
		endif
	endif
	if (<end_credits_restart> = 1)
		printf \{"END CREDITS RESTART"}
	else
		if NOT ($current_song = kingsandqueenscredits)
			change \{end_credits = 0}
		endif
	endif
	change \{playing_song = 1}
	mark_unsafe_for_shutdown
	dragonforce_hack_off
	Menu_Music_Off
	GuitarEvent_EnterVenue
	init_play_log
	load_songqpak song_name = <song_name> async = 1
	if IsWinPort

		change \{default_gem_offset = $winport_gem_offset}
		change \{default_input_offset = $winport_input_offset}
		change \{default_drums_offset = $winport_drums_offset}
		change \{default_practice_mode_audio_offset = $winport_practice_mode_audio_offset}
		change \{default_practice_mode_pitchshift_offset_song = $winport_practice_mode_pitchshift_offset_song}
	else
		if isXenon
			change \{default_gem_offset = $xenon_gem_offset}
			change \{default_input_offset = $xenon_input_offset}
			change \{default_drums_offset = $xenon_drums_offset}
			change \{default_practice_mode_pitchshift_offset_song = $xenon_practice_mode_pitchshift_offset_song}
		else
			if IsPs3
				change \{default_gem_offset = $ps3_gem_offset}
				change \{default_input_offset = $ps3_input_offset}
				change \{default_drums_offset = $ps3_drums_offset}
				change \{default_practice_mode_pitchshift_offset_song = $ps3_practice_mode_pitchshift_offset_song}
			else
				change \{default_gem_offset = $ps2_gem_offset}
				change \{default_input_offset = $ps2_input_offset}
				change \{default_drums_offset = $ps2_drums_offset}
				change \{default_practice_mode_pitchshift_offset_song = $ps2_practice_mode_pitchshift_offset_song}
			endif
		endif
	endif
	begin_singleplayer_game
	get_song_struct song = <song_name>
	if StructureContains Structure = <song_struct> boss
		<difficulty2> = <difficulty>
	endif
	change current_song = <song_name>
	change current_difficulty = <difficulty>
	change current_difficulty2 = <difficulty2>
	change current_starttime = <StartTime>
	change current_endtime = <endtime>
	change \{boss_play = 0}
	change \{showing_raise_axe = 0}
	change \{allow_4x_effect = true}
	<perry_mic_stand> = 0
	if StructureContains Structure = <song_struct> perry_mic_stand
		if ($current_num_players = 1)
			<perry_mic_stand> = (<song_struct>.perry_mic_stand)
		endif
	endif
	Progression_SetProgressionNodeFlags perry_mic_stand = <perry_mic_stand>
	get_song_struct song = <song_name>
	if StructureContains Structure = <song_struct> boss
		change current_boss = (<song_struct>.boss)
		change \{boss_battle = 1}
		change \{current_num_players = 2}
		change boss_oldcontroller = ($player2_status.controller)
		GetInputHandlerBotIndex \{player = 2}
		change structurename = player2_status controller = <controller>
		if StructureContains \{Structure = $current_boss
				name = character_profile}
			profile = ($current_boss.character_profile)
			change structurename = player2_status character_id = <profile>
			change \{structurename = player2_status
				outfit = 1}
			change \{structurename = player2_status
				style = 1}
		endif
		printf \{channel = log
			"Starting bot for boss"}
	else
		if (($player2_status.bot_play = 1) || ($new_net_logic))
			change boss_oldcontroller = ($player2_status.controller)
			GetInputHandlerBotIndex \{player = 2}
			change structurename = player2_status controller = <controller>
			printf \{channel = log
				"Starting bot for player 2"}
		endif
	endif
	if ($player1_status.bot_play = 1)
		GetInputHandlerBotIndex \{player = 1}
		change structurename = player1_status controller = <controller>
		printf \{channel = log
			"Starting bot for player 1"}
	endif
	if ($game_mode = p2_battle)
		printf \{"Initiating Battlemode"}
		battlemode_init
	endif
	if ($boss_battle = 1)
		printf \{"Initiating BossBattle"}
		bossbattle_init
	endif
	if ($new_net_logic)
		new_net_logic_init
	endif
	printf \{"-------------------------------------"}
	printf \{"-------------------------------------"}
	printf \{"-------------------------------------"}
	printf \{"Now playing %s %d"
		s = $current_song
		d = $current_difficulty}
	printf \{"-------------------------------------"}
	printf \{"-------------------------------------"}
	printf \{"-------------------------------------"}
	song_start_time = <StartTime>
	call_startup_scripts <...>
	setup_bg_viewport
	create_cameracuts <...>
	starttimeafterintro = <StartTime>
	printf "Current Transition = %s" s = ($current_transition)
	if ($current_transition = none)
		change \{current_transition = fastintro}
	endif
	Transition_GetTime type = ($current_transition)
	StartTime = (<StartTime> - <transition_time>)
	setslomo \{0.001}
	reset_song_time StartTime = <StartTime>
	if NOT ($use_character_debug_cam = 1)
	endif
	create_movie_viewport
	create_crowd_models
	crowd_create_lighters
	Crowd_StageDiver_Hide
	if ($debug_showmeasures = on)
		debug_measures_text :SetProps \{unhide}
	endif
	change \{structurename = guitarist_info
		stance = Stance_A}
	change \{structurename = guitarist_info
		next_stance = Stance_A}
	change \{structurename = guitarist_info
		current_anim = Idle}
	change \{structurename = guitarist_info
		cycle_anim = true}
	change \{structurename = guitarist_info
		next_anim = none}
	change \{structurename = guitarist_info
		playing_missed_note = false}
	change \{structurename = guitarist_info
		waiting_for_cameracut = false}
	change \{structurename = bassist_info
		stance = Stance_A}
	change \{structurename = bassist_info
		next_stance = Stance_A}
	change \{structurename = bassist_info
		current_anim = Idle}
	change \{structurename = bassist_info
		cycle_anim = true}
	change \{structurename = bassist_info
		next_anim = none}
	change \{structurename = bassist_info
		playing_missed_note = false}
	change \{structurename = bassist_info
		waiting_for_cameracut = false}
	change \{structurename = vocalist_info
		stance = Stance_A}
	change \{structurename = vocalist_info
		next_stance = Stance_A}
	change \{structurename = vocalist_info
		current_anim = Idle}
	change \{structurename = vocalist_info
		cycle_anim = true}
	change \{structurename = vocalist_info
		next_anim = none}
	change \{structurename = drummer_info
		stance = Stance_A}
	change \{structurename = drummer_info
		next_stance = Stance_A}
	change \{structurename = drummer_info
		current_anim = Idle}
	change \{structurename = drummer_info
		cycle_anim = true}
	change \{structurename = drummer_info
		next_anim = none}
	change \{structurename = drummer_info
		Twist = 0.0}
	change \{structurename = drummer_info
		desired_twist = 0.0}
	change \{structurename = drummer_info
		last_left_arm_note = 0}
	change \{structurename = drummer_info
		last_right_arm_note = 0}
	if (<training_mode> = 0)
		if NOT create_band \{starting_song = true
				async = 1}
			DownloadContentLost
		endif
	endif
	create_vocalist_dummy
	if ($game_mode = training)
		practicemode_init
	endif
	preload_song song_name = <song_name> StartTime = <song_start_time>
	calc_score = true
	if NOT (<devil_finish_restart> = 1 || $end_credits = 1)
		if ($use_last_player_scores = 0)
			reset_score \{player_status = player1_status}
		else
			change \{use_last_player_scores = 0}
			<calc_score> = false
		endif
	endif
	reset_score \{player_status = player2_status}
	GetGlobalTags \{user_options}
	SetArrayElement \{ArrayName = currently_holding
		GlobalArray
		index = 0
		newvalue = 0}
	SetArrayElement \{ArrayName = currently_holding
		GlobalArray
		index = 1
		newvalue = 0}
	player = 1
	begin
	if (<player> = 2)
		if GotParam \{difficulty2}
			<difficulty> = <difficulty2>
		endif
	endif
	FormatText checksumname = player_status 'player%i_status' i = <player> AddToStringLookup
	FormatText TextName = player_text 'p%i' i = <player> AddToStringLookup
	change structurename = <player_status> guitar_volume = 0
	UpdateGuitarVolume
	GetGlobalTags \{user_options}
	if (<player> = 1)
		change structurename = <player_status> lefthanded_gems = (<lefty_flip_p1>)
		change structurename = <player_status> lefthanded_button_ups = (<lefty_flip_p1>)
	else
		if ($is_network_game = 0)
			change structurename = <player_status> lefthanded_gems = (<lefty_flip_p2>)
			change structurename = <player_status> lefthanded_button_ups = (<lefty_flip_p2>)
		endif
	endif
	get_resting_whammy_position controller = ($<player_status>.controller)
	if GotParam \{resting_whammy_position}
		change structurename = <player_status> resting_whammy_position = <resting_whammy_position>
	endif
	get_star_power_position controller = ($<player_status>.controller)
	if GotParam \{star_power_position}
		change structurename = <player_status> star_tilt_threshold = <star_power_position>
	endif
	if ($tutorial_disable_hud = 0)
		setup_hud <...>
	endif
	if ($output_gpu_log = 1)
		TextOutputStart
	endif
	if NOT GotParam \{no_score_update}
		SpawnScriptLater update_score_fast params = {<...>}
	endif
	if (($is_network_game) && ($player1_status.highway_layout = solo_highway))
		SpawnScriptLater \{update_score_fast
			params = {
				player_status = player2_status
			}}
	endif
	if (<training_mode> = 0)
		if NOT (<devil_finish_restart> = 1)
			crowd_reset <...>
		endif
	endif
	star_power_reset <...>
	difficulty_setup <...>
	setup_highway <...>
	if (<training_mode> = 0)
		reset_hud <...>
	endif
	spawnscriptnow gem_scroller params = {<...>}
	if ((<player> = 1) || ($new_net_logic) || ($is_network_game = 0))
		spawnscriptnow button_checker params = {<...>}
	endif
	if NOT (($is_network_game) && (<player> = 2))
		SpawnScriptLater check_for_star_power params = {<...>}
	endif
	if (<calc_score> = true)
		calc_songscoreinfo player_status = <player_status>
	endif
	player = (<player> + 1)
	repeat $current_num_players
	GetPakManCurrent \{map = zones}
	if ($boss_battle = 1)
		if should_play_boss_intro
			if ($current_transition = boss)
				GH_SFX_Preload_Boss_Intro_Audio
			endif
		endif
	endif
	GH3_Set_Guitar_Verb_And_Echo_to_Dry
	Transition_Play type = ($current_transition)
	change \{current_transition = none}
	change \{check_for_unplugged_controllers = 1}
	Wait \{1
		gameframe}
	if ($is_network_game)
		SyncAndLaunchNetGame
		begin
		if (($net_ready_to_start) || ($player2_present = 0))
			ui_flow_manager_respond_to_action \{action = net_begin_song}
			ui_print_gamertags \{pos1 = (240.0, 70.0)
				pos2 = (1040.0, 70.0)
				dims = (310.0, 25.0)
				just1 = [
					left
					top
				]
				just2 = [
					right
					top
				]
				offscreen = 1}
			break
		endif
		Wait \{1
			gameframe}
		repeat
	endif
	Reset_Transition_FXandLighting
	stoprendering
	destroy_loading_screen
	setslomo \{$current_speedfactor}
	if (($player2_present = 0) && ($is_network_game = 1))
		if NOT ((ScreenElementExists id = net_popup_container) || (ScriptIsRunning create_connection_lost_dialog))
			spawnscriptnow \{create_connection_lost_dialog}
		endif
	endif
	spawnscriptnow begin_song_after_intro params = {starttimeafterintro = <starttimeafterintro>}
	if ($boss_battle = 1)
		if ($show_boss_helper_screen = 1)
			disable_bg_viewport
			if ScreenElementExists \{id = battlemode_container}
				battlemode_container :SetProps \{alpha = 0}
			endif
			GetPakManCurrent \{map = zones}
			if should_play_boss_intro
				spawnscriptnow \{wait_and_show_boss_helper_after_intro}
			else
				SpawnScriptLater \{show_boss_helper_now}
			endif
		else
			enable_bg_viewport
		endif
	endif
	mark_safe_for_shutdown
endscript

script gem_scroller \{player = 1
		training_mode = 0}
	setup_gemarrays song_name = <song_name> difficulty = <difficulty> player_status = <player_status>
	calc_health_invincible_time song = <song_name> player_status = <player_status>
	if ($Cheat_PrecisionMode = 1)
		if ($is_network_game)
			change \{check_time_early = $original_check_time_early}
			change \{check_time_late = $original_check_time_late}
		endif
	endif
	change structurename = <player_status> check_time_early = ($check_time_early * $current_speedfactor)
	change structurename = <player_status> check_time_late = ($check_time_late * $current_speedfactor)
	FormatText checksumname = input_array 'input_array%p' p = <player_text>
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf "Creating array for %p" p = <player_text>
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	printf \{"-----------------------------------"}
	InputArrayCreate name = <input_array>
	if (<player> = 1)
		if ($input_mode = record)
			ClearDataBuffer \{name = replay}
			DataBufferPutChecksum name = replay value = <song_name>
			DataBufferPutChecksum name = replay value = ($current_transition)
			DataBufferPutInt \{name = replay
				value = $current_num_players}
			DataBufferPutInt name = replay value = ($player1_status.controller)
			DataBufferPutInt name = replay value = ($player2_status.controller)
			DataBufferPutChecksum name = replay value = <difficulty> bytes = 16
			DataBufferPutChecksum name = replay value = <difficulty2> bytes = 16
			GetRandomSeeds
			DataBufferPutInt name = replay value = <seed1>
			DataBufferPutInt name = replay value = <seed2>
			DataBufferPutInt name = replay value = <seed3>
			DataBufferPutInt name = replay value = <seed4>
			DataBufferPutInt name = replay value = <seed5>
			DataBufferPutInt name = replay value = <seed6>
		endif
	endif
	<gem_offset> = ($time_gem_offset)
	<input_offset> = ($time_input_offset)

	GetGlobalTags \{user_options}
	<gem_offset> = (<gem_offset> - <lag_audio> + <lag_video>)
	<input_offset> = (<input_offset> - <lag_audio>)
	change default_drums_offset = ($default_drums_offset + <lag_audio>)

	if (<training_mode> = 0)
		SpawnScriptLater Strum_iterator params = {song_name = <song_name> difficulty = expert
			time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
			part = <part> target = (<player_status>.band_member)}
		SpawnScriptLater FretFingers_iterator params = {song_name = <song_name> difficulty = expert
			time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
			part = <part> target = (<player_status>.band_member)}
		SpawnScriptLater FretPos_iterator params = {song_name = <song_name>
			time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
			part = ($<player_status>.part) target = (<player_status>.band_member)}
		if ($game_mode = p2_faceoff)
			array_suffix = <player_text>
			if ($is_network_game)
				if NOT IsHost
					if (<player_text> = 'p1')
						<array_suffix> = 'p2'
					else
						<array_suffix> = 'p1'
					endif
				endif
			endif
			SpawnScriptLater Faceoff_Anim_iterator params = {song_name = <song_name> difficulty = expert
				time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
				player_status = <player_status> player_text = <array_suffix> player = <player>}
		endif
		if (<player> = 1)
			SpawnScriptLater tempo_matching_iterator params = {song_name = <song_name> difficulty = <difficulty> thin_fretbars
				time_offset = <gem_offset> fretbar_function = create_fretbar skipleadin = 0
				player = <player> player_status = <player_status> player_text = <player_text>}
			SpawnScriptLater Drum_iterator params = {song_name = <song_name> difficulty = <difficulty>
				time_offset = (<gem_offset> + $drum_anim_lead_time) skipleadin = 0
				player = <player> player_status = <player_status> player_text = <player_text>}
			SpawnScriptLater Drum_cymbal_iterator params = {song_name = <song_name> difficulty = <difficulty>
				time_offset = (<gem_offset> + $cymbal_anim_lead_time) skipleadin = 0
				player = <player> player_status = <player_status> player_text = <player_text>}
			SpawnScriptLater Drum_countoff_iterator params = {song_name = <song_name> difficulty = <difficulty>
				time_offset = (<gem_offset> + $stick_tap_lead_time) skipleadin = 0
				player = <player> player_status = <player_status> player_text = <player_text>}
			if ($current_num_players = 1)
				bassist_song_part = 'rhythm_'
				bassist_part = Bass
				rhythm_song_part = 'aux_'
				rhythm_part = rhythm
				get_song_struct song = <song_name>
				if StructureContains Structure = <song_struct> name = rhythm_track
					if (<song_struct>.rhythm_track = 1)
						if StructureContains Structure = <song_struct> name = use_coop_notetracks
							bassist_song_part = 'aux_'
							rhythm_song_part = 'rhythmcoop_'
						else
							bassist_song_part = 'aux_'
							rhythm_song_part = 'rhythm_'
						endif
					endif
				endif
				if CompositeObjectExists \{name = bassist}
					SpawnScriptLater Strum_iterator params = {song_name = <song_name> difficulty = expert
						time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
						part = <bassist_song_part> target = bassist}
					SpawnScriptLater FretFingers_iterator params = {song_name = <song_name> difficulty = expert
						time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
						part = <bassist_song_part> target = bassist}
					SpawnScriptLater FretPos_iterator params = {song_name = <song_name> difficulty = <difficulty>
						time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
						part = <bassist_part> target = bassist}
				endif
				if CompositeObjectExists \{name = rhythm}
					SpawnScriptLater Strum_iterator params = {song_name = <song_name> difficulty = expert
						time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
						part = <rhythm_song_part> target = rhythm}
					SpawnScriptLater FretFingers_iterator params = {song_name = <song_name> difficulty = expert
						time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
						part = <rhythm_song_part> target = rhythm}
					SpawnScriptLater FretPos_iterator params = {song_name = <song_name> difficulty = <difficulty>
						time_offset = (<gem_offset> + $strum_anim_lead_time) skipleadin = 0
						part = <rhythm_part> target = rhythm}
				endif
			endif
		endif
	endif
	FormatText checksumname = input_array 'input_array%p' p = <player_text>
	SpawnScriptLater gem_iterator params = {iterator_text = 'fill_array' song_name = <song_name> difficulty = <difficulty> part = <part> input_array = <input_array>
		time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset> + 1000.0) strum_function = fill_input_array skipleadin = ($<player_status>.scroll_time * 1000.0)
		player = <player> player_status = <player_status> player_text = <player_text>}
	if ($game_mode = p2_faceoff)
		SpawnScriptLater faceoff_init params = {song_name = <song_name> difficulty = <difficulty> part = <part>
			time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset> + 1000.0) skipleadin = ($<player_status>.scroll_time * 1000.0)
			player = <player> player_status = <player_status> player_text = <player_text>}
		SpawnScriptLater faceoff_volumes_init params = {song_name = <song_name> difficulty = <difficulty> part = <part>
			time_offset = ((($<player_status>.check_time_early) * 1000.0) + <input_offset>) skipleadin = ($<player_status>.scroll_time * 1000.0)
			player = <player> player_status = <player_status> player_text = <player_text>}
	endif
	<do_bot> = 0
	if ($boss_battle = 1)
		if (<player> = 2)
			FormatText checksumname = bossresponse_array 'bossresponse_array%p' p = <player_text>
			InputArrayCreate name = <bossresponse_array>
			SpawnScriptLater gem_iterator params = {iterator_text = 'fill_bossarray' song_name = <song_name> difficulty = <difficulty> part = <part> input_array = <bossresponse_array>
				time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset> + 1000.0) strum_function = fill_input_array skipleadin = ($<player_status>.scroll_time * 1000.0)
				player = <player> player_status = <player_status> player_text = <player_text>}
			SpawnScriptLater gem_iterator params = {iterator_text = 'boss' song_name = <song_name> difficulty = <difficulty> part = <part> use_input_array = 'bossresponse_array'
				time_offset = ((($<player_status>.check_time_early) * 1000.0) + <input_offset>) strum_function = check_buttons_boss skipleadin = ($<player_status>.scroll_time * 1000.0)
				player = <player> player_status = <player_status> player_text = <player_text>}
		elseif ($<player_status>.bot_play = 1)
			<do_bot> = 1
		endif
	elseif ($<player_status>.bot_play = 1)
		<do_bot> = 1
	endif
	if (<do_bot> = 1)
		SpawnScriptLater gem_iterator params = {iterator_text = 'bot' song_name = <song_name> difficulty = <difficulty> part = <part> use_input_array = 'input_array' one_event_per_frame
			time_offset = ((($<player_status>.check_time_early) * 1000.0) + <input_offset>) strum_function = check_buttons_bot skipleadin = ($<player_status>.scroll_time * 1000.0)
			player = <player> player_status = <player_status> player_text = <player_text>}
		printf \{channel = log
			"Spawned bot!"}
	endif
	if ($new_net_logic)
		if (<player> = 2)
			FormatText checksumname = bossresponse_array 'bossresponse_array%p' p = <player_text>
			InputArrayCreate name = <bossresponse_array>
			SpawnScriptLater gem_iterator params = {iterator_text = 'fill_bossarray' song_name = <song_name> difficulty = <difficulty> part = <part> input_array = <bossresponse_array>
				time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset> + 1000.0) strum_function = fill_input_array skipleadin = ($<player_status>.scroll_time * 1000.0)
				player = <player> player_status = <player_status> player_text = <player_text>}
			SpawnScriptLater gem_iterator params = {iterator_text = 'boss' song_name = <song_name> difficulty = <difficulty> part = <part> use_input_array = 'bossresponse_array'
				time_offset = ((($<player_status>.check_time_early) * 1000.0) + <input_offset>) strum_function = check_buttons_boss skipleadin = ($<player_status>.scroll_time * 1000.0)
				player = <player> player_status = <player_status> player_text = <player_text>}
		endif
	endif
	SpawnScriptLater fretbar_iterator params = {song_name = <song_name> difficulty = <difficulty> thin_fretbars
		time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset>) fretbar_function = create_fretbar skipleadin = ($<player_status>.scroll_time * 1000.0)
		player = <player> player_status = <player_status> player_text = <player_text>}
	SpawnScriptLater gem_iterator params = {iterator_text = 'create_gem' song_name = <song_name> difficulty = <difficulty> part = <part> use_input_array = 'input_array'
		time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset>) gem_function = create_gem skipleadin = ($<player_status>.scroll_time * 1000.0)
		player = <player> player_status = <player_status> player_text = <player_text>}
	if ((<player_status>.is_local_client) || ($new_net_logic))
		SpawnScriptLater check_buttons_fast params = {song_name = <song_name> difficulty = <difficulty>
			time_offset = ((($<player_status>.check_time_early) * 1000.0) + <input_offset>) player = <player>
			player_status = <player_status> player_text = <player_text>}
	else
		SpawnScriptLater net_check_buttons params = {song_name = <song_name> player_status = <player_status>
			time_offset = ((($<player_status>.check_time_early) * 1000.0) + <input_offset>)}
	endif
	SpawnScriptLater fretbar_update_tempo params = {song_name = <song_name> difficulty = <difficulty>
		time_offset = ((($<player_status>.check_time_early) * 1000.0) + <gem_offset>) player = <player> skipleadin = ($<player_status>.scroll_time * 1000.0)
		player_status = <player_status> player_text = <player_text>}
	SpawnScriptLater fretbar_update_hammer_on_tolerance params = {song_name = <song_name> difficulty = <difficulty>
		time_offset = ((($<player_status>.scroll_time - $destroy_time) * 1000.0) + <gem_offset> + 1000.0) player = <player> skipleadin = ($<player_status>.scroll_time * 1000.0)
		player_status = <player_status> player_text = <player_text>}
	if (<player> = 1)
		if ($is_network_game)
			SpawnScriptLater dispatch_player_state params = {player_status = <player_status>}
			SpawnScriptLater \{network_events}
		endif
		SpawnScriptLater fretbar_iterator params = {song_name = <song_name> difficulty = <difficulty>
			time_offset = (($default_prefretbar_time * 1000.0) + <gem_offset>) fretbar_function = GuitarEvent_PreFretbar skipleadin = 0
			player = <player> player_status = <player_status> player_text = <player_text>}
		SpawnScriptLater fretbar_iterator params = {song_name = <song_name> difficulty = <difficulty>
			time_offset = <gem_offset> fretbar_function = GuitarEvent_Fretbar skipleadin = 0
			player = <player> player_status = <player_status> player_text = <player_text>}
		if ($Debug_Audible_Downbeat = 1)
			SpawnScriptLater fretbar_iterator params = {song_name = <song_name> difficulty = <difficulty>
				time_offset = (<gem_offset> + ($check_time_early * 1000.0)) fretbar_function = GuitarEvent_Fretbar_Early skipleadin = 0
				player = <player> player_status = <player_status> player_text = <player_text>}
			SpawnScriptLater fretbar_iterator params = {song_name = <song_name> difficulty = <difficulty>
				time_offset = (<gem_offset> - ($check_time_late * 1000.0)) fretbar_function = GuitarEvent_Fretbar_Late skipleadin = 0
				player = <player> player_status = <player_status> player_text = <player_text>}
		endif
		SpawnScriptLater lightshow_iterator params = {song_name = <song_name> time_offset = (<gem_offset> + $lightshow_offset_ms) skipleadin = 0}
		SpawnScriptLater cameracuts_iterator params = {song_name = <song_name> time_offset = <gem_offset> skipleadin = 0}
		GetArraySize \{$scripts_array}
		array_count = 0
		begin
		<lead_ms> = ($scripts_array [<array_count>].lead_ms)
		if StructureContains Structure = ($scripts_array [<array_count>]) audio_only
			midiscript_offset = <lead_ms>
		else
			midiscript_offset = (<gem_offset> + <lead_ms>)
		endif
		SpawnScriptLater event_iterator params = {song_name = <song_name> difficulty = <difficulty>
			event_string = ($scripts_array [<array_count>].name) time_offset = <midiscript_offset> skipleadin = 0
			player = <player> player_status = <player_status> player_text = <player_text>}
		SpawnScriptLater notemap_startiterator params = {song_name = <song_name> difficulty = <difficulty>
			event_string = ($scripts_array [<array_count>].name) time_offset = <midiscript_offset> skipleadin = 0
			player = <player> player_status = <player_status> player_text = <player_text>}
		array_count = (<array_count> + 1)
		repeat <array_size>
	endif
	SpawnScriptLater win_song params = {<...>}
endscript
