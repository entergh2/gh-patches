// These scripts will allow customs to use the GHA _ENDOFSONG marker

script GetMarkerArraySize 
	GetArraySize <Array>
	if (<array_Size> > 0)
		if (<Array> [(<array_Size> - 1)].marker = "_ENDOFSONG")
			return array_Size = (<array_Size> - 1)
		else
			return array_Size = <array_Size>
		endif
	else
		return array_Size = <array_Size>
	endif
endscript

script get_song_end_time \{for_practice = 0}
	get_song_prefix Song = <Song>
	FormatText ChecksumName = song_expert '%s_song_expert' S = <song_prefix> AddToStringLookup
	FormatText ChecksumName = rhythm_expert '%s_song_rhythm_expert' S = <song_prefix> AddToStringLookup
	total_end_time = 2.0
	get_song_end_time_for_array total_end_time = <total_end_time> song_array = <song_expert>
	get_song_end_time_for_array total_end_time = <total_end_time> song_array = <rhythm_expert>
	get_song_struct Song = <Song>
	if StructureContains Structure = <song_struct> use_coop_notetracks
		FormatText ChecksumName = guitarcoop_expert '%s_song_guitarcoop_expert' S = <song_prefix> AddToStringLookup
		FormatText ChecksumName = rhythmcoop_expert '%s_song_rhythmcoop_expert' S = <song_prefix> AddToStringLookup
		get_song_end_time_for_array total_end_time = <total_end_time> song_array = <guitarcoop_expert>
		get_song_end_time_for_array total_end_time = <total_end_time> song_array = <rhythmcoop_expert>
	endif
	if (<for_practice> = 0)
		get_song_prefix Song = <Song>
		FormatText ChecksumName = song_section_array '%s_markers' S = <song_prefix>
		if GlobalExists Name = <song_section_array>
			GetArraySize ($<song_section_array>)
			if (<array_Size> > 0)
				if ($<song_section_array> [(<array_Size> - 1)].marker = "_ENDOFSONG")
					return total_end_time = ($<song_section_array> [(<array_Size> - 1)].Time)
				endif
			endif
		endif
	endif
	return total_end_time = <total_end_time>
endscript

// menu_choose_practice_section.q
script create_choose_practice_section_menu 
	end_practice_song_slomo
	set_focus_color \{rgba = [
			255
			255
			255
			255
		]}
	set_unfocus_color \{rgba = [
			0
			0
			0
			255
		]}
	if ($menu_choose_practice_destroy_previous_menu = 0)
		launchevent \{type = focus
			target = cps_menu}
		return
	endif
	change \{in_menu_choose_practice_section = 1}
	menu_music_off
	kill_start_key_binding
	change \{menu_choose_practice_section_index = 0}
	change \{menu_choose_practice_section_base = 0}
	start_y = 347
	end_y = 731
	start_x = 640
	header_pos = (640.0, 100.0)
	createscreenelement \{type = containerelement
		id = cps_container
		parent = root_window
		pos = (0.0, 0.0)}
	practice_setup_bg
	createscreenelement {
		type = textelement
		parent = ds_container
		id = header
		pos = ((1.0, 0.0) * ($left_column_x) + (0.0, 245.0))
		just = [left top]
		z_priority = 2
		font = ($detailed_stats_font)
		text = ($menu_choose_practice_section_start_text)
		rgba = [190 29 30 255]
		scale = (1.0, 1.75)
	}
	get_song_prefix song = ($current_song)
	formattext checksumname = song_section_array '%s_markers' s = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	num_entries = ($menu_choose_practice_section_num_entries)
	if ($menu_choose_practice_section_base = 0)
		if ((<array_size> + 1) < ($menu_choose_practice_section_num_entries))
			num_entries = (<array_size> + 1)
		endif
	endif
	change menu_choose_practice_section_num_song_entries = <num_entries>
	total_height = (<end_y> - <start_y>)
	individual_height = (<total_height> / ($menu_choose_practice_section_num_entries))
	total_width = ($menu_choose_practice_section_entry_width)
	entry_dims = ((1.0, 0.0) * <total_width> + (0.0, 1.0) * <individual_height>)
	entry = 0
	placement_pos = ((1.0, 0.0) * <start_x> + (0.0, 1.0) * <start_y>)
	begin
	formattext checksumname = entry_id 'entry_%d' d = <entry>
	createscreenelement {
		type = textelement
		font = text_a4
		parent = ds_container
		id = <entry_id>
		pos = (<placement_pos> - (0.0, 21.0))
		rgba = ($menu_unfocus_color)
		just = [center top]
	}
	<placement_pos> = (<placement_pos> + (0.0, 1.0) * <individual_height>)
	<entry> = (<entry> + 1)
	repeat (<array_size> + 1)
	createscreenelement {
		type = spriteelement
		parent = root_window
		id = cps_menu
		pos = (0.0, 0.0)
		dims = (1280.0, 720.0)
		rgba = [100 100 100 255]
		just = [left top]
		z_priority = -1
		event_handlers = [
			{pad_up menu_choose_practice_section_input_up}
			{pad_down menu_choose_practice_section_input_down}
			{pad_choose menu_choose_practice_section_input_choose}
			{pad_back menu_choose_practice_section_input_back}
		]
		exclusive_device = ($primary_controller)
	}
	launchevent \{type = focus
		target = cps_menu}
	cps_menu :settags \{stage = 1}
	highlight_width = ($right_column_x - $left_column_x + 50)
	height = 48
	createscreenelement {
		type = spriteelement
		id = highlight_bar
		parent = ds_container
		pos = ((1.0, 0.0) * <start_x> + (0.0, 1.0) * <start_y>)
		dims = ((1.0, 0.0) * <highlight_width> + (0.0, 1.0) * <height>)
		rgba = [130 0 0 100]
		just = [center top]
	}
	change \{current_practice_songpreview = none}
	change target_practice_songpreview = ($current_song)
	spawnscriptlater \{practice_songpreview_monitor}
	menu_choose_practice_section_refreshsongpreviewposition \{startindex = 0
		endindex = -1}
	change \{disable_menu_sounds = 1}
	if ($menu_choose_practice_last_song = $current_song)
		last_index = ($menu_choose_practice_last_index)
		begin
		if (<last_index> = ($menu_choose_practice_section_index + $menu_choose_practice_section_base))
			break
		endif
		launchevent \{type = pad_down
			target = cps_menu}
		repeat
	endif
	change \{disable_menu_sounds = 0}
	menu_choose_practice_section_refresh_entries
	menu_choose_practice_section_refresh_highlight_bar
	change menu_choose_practice_last_song = ($current_song)
	change menu_choose_practice_last_index = ($menu_choose_practice_section_index + $menu_choose_practice_section_base)
endscript

script menu_choose_practice_section_refresh_entries 
	get_song_prefix song = ($current_song)
	formattext checksumname = song_section_array '%s_markers' s = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	cps_menu :gettags
	entry = 0
	begin
	formattext checksumname = entry_id 'entry_%d' d = <entry>
	if screenelementexists id = <entry_id>
		if ((<entry> + ($menu_choose_practice_section_base)) = 0)
			setscreenelementprops id = <entry_id> text = ($practice_mode_full_song_text)
		else
			getuppercasestring ((<song_section_array> [(<entry> - 1 + ($menu_choose_practice_section_base))]).marker)
			setscreenelementprops id = <entry_id> text = <uppercasestring>
		endif
		if (<stage> = 2)
			if (($menu_choose_practice_section_base + <entry>) < <start_index> + 1)
				setscreenelementprops id = <entry_id> rgba = ($menu_choose_practice_section_inactive_color)
			else
				setscreenelementprops id = <entry_id> rgba = ($menu_unfocus_color)
			endif
		else
			setscreenelementprops id = <entry_id> rgba = ($menu_unfocus_color)
			change menu_choose_practice_last_index = ($menu_choose_practice_section_index + $menu_choose_practice_section_base)
		endif
	endif
	<entry> = (<entry> + 1)
	repeat (<array_size> + 1)
	formattext checksumname = entry_id 'entry_%d' d = ($menu_choose_practice_section_index)
	if screenelementexists id = <entry_id>
		setscreenelementprops id = <entry_id> rgba = ($menu_focus_color)
	endif
endscript

script menu_choose_practice_section_input_down 
	if ($in_destroy_choose_practice_section_menu = 1)
		return
	endif
	get_song_prefix Song = ($current_song)
	FormatText ChecksumName = song_section_array '%s_markers' S = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	if ($menu_choose_practice_section_index < (<array_Size>))
		Change menu_choose_practice_section_index = ($menu_choose_practice_section_index + 1)
		generic_menu_up_or_down_sound
	endif
	menu_choose_practice_section_refresh_entries
	menu_choose_practice_section_refresh_highlight_bar
	menu_detailed_stats_move_screen_up
endscript

script menu_choose_practice_section_refreshsongpreviewposition
	if ($in_destroy_choose_practice_section_menu = 1)
		return
	endif
	get_song_prefix Song = ($current_song)
	FormatText ChecksumName = song_section_array '%s_markers' S = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	if (<startindex> = -1)
	elseif (<startindex> = 0)
		if (<array_Size> > 0)
			Change target_practice_songpreview_starttime = ((<song_section_array> [0]).Time)
		else
			Change \{target_practice_songpreview_starttime = 0}
		endif
		endindex = -1
	else
		Change target_practice_songpreview_starttime = ((<song_section_array> [(<startindex> - 1)]).Time)
	endif
	if (<endindex> = <array_Size> ||
			<endindex> = -1)
		setup_gemarrays song_name = ($current_song) DIFFICULTY = ($current_difficulty) player_status = player1_status
		get_song_end_time Song = ($current_song) for_practice = 1
		Change target_practice_songpreview_endtime = <total_end_time>
	else
		Change target_practice_songpreview_endtime = ((<song_section_array> [<endindex>]).Time)
	endif
endscript

script menu_choose_practice_section_play_full_song 
	if ($transitions_locked = 0)
		LaunchEvent \{Type = unfocus
			Target = cps_menu}
	endif
	get_song_prefix Song = ($current_song)
	FormatText ChecksumName = song_section_array '%s_markers' S = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	cps_menu :SetTags \{start_index = 1}
	cps_menu :SetTags end_index = (<array_Size> + 1)
	menu_choose_practice_section_set_times
	Change \{menu_choose_practice_destroy_previous_menu = 0}
	ui_flow_manager_respond_to_action \{action = Continue}
endscript

script menu_choose_practice_section_set_times 
	cps_menu :GetTags
	get_song_prefix Song = ($current_song)
	FormatText ChecksumName = song_section_array '%s_markers' S = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	if (<array_Size> > 0)
		Change practice_start_time = ((<song_section_array> [(<start_index> - 1)]).Time)
		if (<end_index> = <array_Size> + 1)
			setup_gemarrays song_name = ($current_song) DIFFICULTY = ($current_difficulty) player_status = player1_status
			get_song_end_time Song = ($current_song) for_practice = 1
			Change practice_end_time = <total_end_time>
		else
			Change practice_end_time = ((<song_section_array> [(<end_index> - 1)]).Time - 1)
		endif
	else
		Change \{practice_start_time = 0}
		Change \{practice_end_time = 0}
	endif
endscript


script practice_setup_bg 
	Change \{left_column_num_elements = 0}
	Change left_column_y_end = ($initial_column_y_end)
	Change \{center_column_num_elements = 0}
	Change center_column_y_end = ($initial_column_y_end)
	Change \{right_column_num_elements = 0}
	Change right_column_y_end = ($initial_column_y_end)
	Change \{relative_screen_y_position = 0}
	Change center_column_x = (($left_column_x) + (0.5 * ($right_column_x - $left_column_x)))
	detailed_stats_create_container \{for_practice = 1}
	get_song_prefix Song = ($current_song)
	FormatText ChecksumName = song_section_array '%s_markers' S = <song_prefix>
	add_section_stats_and_desc {
		section_index = 0
		section_array = <song_section_array>
		Highlight = 1
		for_practice = 1
	}
	GetMarkerArraySize Array = (<song_section_array>)
	section_index = 0
	Highlight = 0
	if (<array_Size> > 0)
		begin
		add_section_stats_and_desc {
			section_index = <section_index>
			section_array = <song_section_array>
			Highlight = <Highlight>
			for_practice = 1
		}
		if (<Highlight> = 1)
			<Highlight> = 0
		else
			<Highlight> = 1
		endif
		<section_index> = (<section_index> + 1)
		repeat <array_Size>
	endif
	menu_detailed_stats_add_paper_sprites
	add_user_control_helper \{Text = $buttons_select
		button = Green
		Z = 100}
	add_user_control_helper \{Text = $buttons_back
		button = RED
		Z = 100}
	add_user_control_helper \{Text = $buttons_up_down
		button = Strumbar
		Z = 100}
endscript

// menu_detailed_stats.q

script create_detailed_stats_menu 
	change \{left_column_num_elements = 0}
	change left_column_y_end = ($initial_column_y_end)
	change \{center_column_num_elements = 0}
	change center_column_y_end = ($initial_column_y_end)
	change \{right_column_num_elements = 0}
	change right_column_y_end = ($initial_column_y_end)
	change \{relative_screen_y_position = 0}
	change center_column_x = (($left_column_x) + (0.5 * ($right_column_x - $left_column_x)))
	notes_ratio = ["" ""]
	sp_ratio = ["" ""]
	avg_multiplier = ["" ""]
	lead_percentage = ["" ""]
	attacks_thrown = ["" ""]
	p1_notes_hit = ($player1_status.notes_hit)
	p1_notes_max = ($player1_status.total_notes)
	p1_sp_phrases_hit = ($player1_status.sp_phrases_hit)
	p1_sp_phrases_max = ($player1_status.sp_phrases_total)
	if ($player1_status.base_score > 0)
		p1_avg_multiplier_val = ($player1_status.score / (1.0 * $player1_status.base_score))
		if (<p1_avg_multiplier_val> < 1.0)
			p1_avg_multiplier_val = 1.0
		endif
	else
		p1_avg_multiplier_val = 1.0
	endif
	if ($game_mode = p2_career ||
			$game_mode = p2_coop)
		p1_notes_hit = ($player1_status.notes_hit)
		p1_notes_max = ($player1_status.total_notes)
		p1_sp_phrases_hit = ($player1_status.sp_phrases_hit + $player2_status.sp_phrases_hit)
		p1_sp_phrases_max = ($player1_status.sp_phrases_total + $player2_status.sp_phrases_total)
		if ($player1_status.base_score = 0 &&
				$player2_status.base_score = 0)
			p1_avg_multiplier_val = 1.0
		else
			p1_avg_multiplier_val = (($player1_status.score + $player2_status.score)
				/ (1.0 * ($player1_status.base_score + $player2_status.base_score)))
			if (<p1_avg_multiplier_val> < 1.0)
				p1_avg_multiplier_val = 1.0
			endif
		endif
	endif
	formattext textname = p1_notes_ratio "%a/%b" a = <p1_notes_hit> b = <p1_notes_max>
	setarrayelement arrayname = notes_ratio index = 0 newvalue = <p1_notes_ratio>
	if NOT ($game_mode = p2_battle || $current_song = bosstom || $current_song = bossslash || $current_song = bossdevil)
		formattext textname = p1_sp_ratio "%a/%b" a = <p1_sp_phrases_hit> b = <p1_sp_phrases_max>
		setarrayelement arrayname = sp_ratio index = 0 newvalue = <p1_sp_ratio>
		formattext textname = p1_avg_multiplier "%d X" d = <p1_avg_multiplier_val>
		setarrayelement arrayname = avg_multiplier index = 0 newvalue = <p1_avg_multiplier>
	else
		formattext textname = p1_attacks_thrown "%a" a = ($player1_status.battle_num_attacks)
		setarrayelement arrayname = attacks_thrown index = 0 newvalue = <p1_attacks_thrown>
	endif
	if NOT ($game_mode = p2_career ||
			$game_mode = p2_coop)
		if ($current_num_players = 2)
			p1_time_in_lead = 0
			p2_time_in_lead = 0
			total_time = ($player1_status.time_in_lead + $player2_status.time_in_lead)
			if (<total_time> > 0)
				p1_time_in_lead = ((100 * $player1_status.time_in_lead / <total_time>) + 0.5)
				casttointeger \{p1_time_in_lead}
				p2_time_in_lead = (100 - <p1_time_in_lead>)
			endif
			if NOT ($game_mode = p2_battle || $current_song = bosstom || $current_song = bossslash || $current_song = bossdevil)
				formattext textname = p1_lead_percent "%d\\%" d = <p1_time_in_lead>
				setarrayelement arrayname = lead_percentage index = 0 newvalue = <p1_lead_percent>
			endif
			p2_notes_hit = ($player2_status.notes_hit)
			p2_notes_max = ($player2_status.total_notes)
			p2_sp_phrases_hit = ($player2_status.sp_phrases_hit)
			p2_sp_phrases_max = ($player2_status.sp_phrases_total)
			if ($player2_status.base_score > 0)
				p2_avg_multiplier_val = ($player2_status.score / (1.0 * $player2_status.base_score))
				if (<p2_avg_multiplier_val> < 1.0)
					p2_avg_multiplier_val = 1.0
				endif
			else
				p2_avg_multiplier_val = 1.0
			endif
			formattext textname = p2_notes_ratio "%a/%b" a = <p2_notes_hit> b = <p2_notes_max>
			setarrayelement arrayname = notes_ratio index = 1 newvalue = <p2_notes_ratio>
			if NOT ($game_mode = p2_battle || $current_song = bosstom || $current_song = bossslash || $current_song = bossdevil)
				formattext textname = p2_sp_ratio "%a/%b" a = <p2_sp_phrases_hit> b = <p2_sp_phrases_max>
				setarrayelement arrayname = sp_ratio index = 1 newvalue = <p2_sp_ratio>
				formattext textname = p2_avg_multiplier "%d X" d = <p2_avg_multiplier_val>
				setarrayelement arrayname = avg_multiplier index = 1 newvalue = <p2_avg_multiplier>
				formattext textname = p2_lead_percent "%d\\%" d = <p2_time_in_lead>
				setarrayelement arrayname = lead_percentage index = 1 newvalue = <p2_lead_percent>
			else
				formattext textname = p2_attacks_thrown "%a" a = ($player2_status.battle_num_attacks)
				setarrayelement arrayname = attacks_thrown index = 1 newvalue = <p2_attacks_thrown>
			endif
		endif
	endif
	if ($game_mode = p2_battle)
		p1_sp_ratio = ($stats_screen_not_available)
		p1_avg_multiplier = ($stats_screen_not_available)
		p1_lead_percent = ($stats_screen_not_available)
		p2_sp_ratio = ($stats_screen_not_available)
		p2_avg_multiplier = ($stats_screen_not_available)
		p2_lead_percent = ($stats_screen_not_available)
	endif
	left_margin = 400
	right_margin = 800
	basic_stats_y_offset = 100
	if ($current_num_players = 1 ||
			$game_mode = p2_career ||
			$game_mode = p2_coop)
		desc_internal_just = [left top]
		desc_x_offset = <left_margin>
		p1_stat_internal_just = [right top]
		p1_stat_x_offset = <right_margin>
	else
		desc_internal_just = [center top]
		desc_x_offset = 640
		p1_stat_internal_just = [left top]
		p1_stat_x_offset = <left_margin>
		p2_stat_internal_just = [right top]
		p2_stat_x_offset = <right_margin>
	endif
	detailed_stats_create_container
	if NOT ($game_mode = p2_career ||
			$game_mode = p2_coop)
		if ($current_num_players = 2)
			add_text_to_column \{column = 'left'
				text = $stats_screen_p1}
			add_text_to_column \{column = 'right'
				text = $stats_screen_p2}
			add_text_to_column \{column = 'center'
				text = ""}
			add_text_to_column \{column = 'left'
				text = ""}
			add_text_to_column \{column = 'center'
				text = ""}
			add_text_to_column \{column = 'right'
				text = ""}
		endif
	endif
	add_basic_stats_desc
	add_basic_stats notes_ratio = <notes_ratio> sp_ratio = <sp_ratio> lead_percentage = <lead_percentage> avg_multiplier = <avg_multiplier> attacks_thrown = <attacks_thrown>
	add_text_to_column \{column = 'left'
		text = ""}
	add_text_to_column \{column = 'center'
		text = ""}
	add_text_to_column \{column = 'right'
		text = ""}
	add_text_to_column \{column = 'left'
		text = ""}
	add_text_to_column \{column = 'center'
		text = ""}
	add_text_to_column \{column = 'right'
		text = ""}
	add_divider_graphic
	get_song_prefix song = ($current_song)
	formattext checksumname = song_section_array '%s_markers' s = <song_prefix>
	GetMarkerArraySize Array = (<song_section_array>)
	section_index = 0
	highlight = 1
	if (<array_size> > 0)
		begin
		get_highest_lowest_stats section_index = <section_index> section_array = <song_section_array>
		<section_index> = (<section_index> + 1)
		repeat <array_size>
	endif
	section_index = 0
	highlight = 1
	if (<array_size> > 0)
		begin
		add_section_stats_and_desc section_index = <section_index> section_array = <song_section_array> highlight = <highlight>
		if (<highlight> = 1)
			<highlight> = 0
		else
			<highlight> = 1
		endif
		<section_index> = (<section_index> + 1)
		repeat <array_size>
	endif
	menu_detailed_stats_add_paper_sprites
	circle_pos = [(327.0, 349.0) , (873.9, 349.0)]
	best_pos = [(595.0, 365.0) , (665.0, 365.0)]
	rot_vals = [-3 , 3]
	if NOT ($game_mode = p2_career ||
			$game_mode = p2_coop)
		if ($current_num_players = 2)
			tie = 0
			if ($player2_status.score > $player1_status.score)
				better_player = 1
				c = 'right'
			elseif ($player1_status.score > $player2_status.score)
				better_player = 0
				c = 'left'
			else
				<tie> = 1
			endif
			if (<tie> = 0)
				formattext checksumname = entry_id '%c_column_%d' c = <c> d = 0
				getscreenelementprops id = <entry_id>
				getscreenelementdims id = <entry_id>
				createscreenelement {
					type = spriteelement
					parent = ds_container
					pos = (<circle_pos> [<better_player>])
					texture = circle_pen
					just = [center center]
					dims = ((1.8, 0.0) * <width> + (0.0, 4.25) * <height>)
					rgba = [60 70 115 100]
					z_priority = 7
				}
				createscreenelement {
					type = textelement
					parent = ds_container
					pos = (<best_pos> [<better_player>])
					text = ($stats_screen_best)
					font = text_a3
					rot_angle = (<rot_vals> [<better_player>])
					id = best_text
					z_priority = 7
					rgba = [60 70 115 100]
					scale = 1.4
				}
			endif
		endif
	endif
	add_user_control_helper \{text = $buttons_back
		button = red
		z = 100}
	add_user_control_helper \{text = $menu_calibrate_lag_continue
		button = green
		z = 100}
	add_user_control_helper \{text = $buttons_up_down
		button = strumbar
		z = 100}
endscript

// Debug Menu
script create_skipbymarker_menu 
	ui_menu_select_sfx
	if gotparam \{looppoint}
		destroy_looppoint_menu
		callback = back_to_looppoint_menu
	else
		destroy_skipintosong_menu
		callback = back_to_skipintosong_menu
	endif
	create_generic_backdrop
	createscreenelement {
		type = vscrollingmenu
		parent = pause_menu
		id = skipbymarker_scrolling_menu
		just = [left top]
		dims = (400.0, 250.0)
		pos = ($menu_pos + (30.0, 0.0))
	}
	createscreenelement {
		type = vmenu
		parent = skipbymarker_scrolling_menu
		id = skipbymarker_vmenu
		pos = (0.0, 0.0)
		just = [left top]
		event_handlers = [{pad_up generic_menu_up_or_down_sound params = {up}}
			{pad_down generic_menu_up_or_down_sound params = {down}}
			{pad_back generic_menu_pad_back params = {callback = <callback>}}
		]
	}
	menu_func = select_start_song
	if gotparam \{looppoint}
		menu_func = set_looppoint
		createscreenelement {
			type = textelement
			parent = skipbymarker_vmenu
			font = text_a1
			scale = 0.75
			rgba = [210 210 210 250]
			text = "No Loop Point"
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {starttime = -1000000}}
			]
		}
	endif
	get_song_prefix song = ($current_song)
	formattext checksumname = marker_array '%s_markers' s = <song_prefix>
	GetMarkerArraySize Array = (<marker_array>)
	if (<array_size> = 0)
		createscreenelement {
			type = textelement
			parent = skipbymarker_vmenu
			font = text_a1
			scale = 0.75
			rgba = [210 210 210 250]
			text = "start"
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose <menu_func> params = {song_name = ($current_song) difficulty = ($current_difficulty) difficulty2 = ($current_difficulty2) starttime = -1000000}}
			]
		}
	else
		marker_count = 0
		begin
		formattext textname = menu_itemname "%m (%ss)" m = ($<marker_array> [<marker_count>].marker) s = (($<marker_array> [<marker_count>].time) / 1000)
		createscreenelement {
			type = textelement
			parent = skipbymarker_vmenu
			font = text_a1
			scale = 0.75
			rgba = [210 210 210 250]
			text = <menu_itemname>
			just = [left top]
			z_priority = 100.0
			event_handlers = [
				{focus menu_focus}
				{unfocus menu_unfocus}
				{pad_choose restart_gem_scroller params = {song_name = ($current_song) difficulty = ($current_difficulty) difficulty2 = ($current_difficulty2) starttime = ($<marker_array> [<marker_count>].time) startmarker = <marker_count>}}
			]
		}
		marker_count = (<marker_count> + 1)
		repeat <array_size>
	endif
	launchevent \{type = focus
		target = skipbymarker_vmenu}
endscript
