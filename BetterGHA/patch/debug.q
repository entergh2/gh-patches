// Unlock All debug mode option now unlocks cheats
script playday_unlockall 
	difficulties = [easy medium hard expert]
	stored_difficulty1 = ($current_difficulty)
	stored_difficulty2 = ($current_difficulty2)
	stored_band = ($current_band)
	stored_gamemode = ($game_mode)
	if ($progression_pop_count = 1)
		popped = 1
		progression_push_current
	else
		popped = 0
	endif
	diff_index = 0
	begin
	change current_difficulty = (<difficulties> [<diff_index>])
	change current_difficulty2 = (<difficulties> [<diff_index>])
	band_index = 1
	begin
	change current_band = <band_index>
	change \{game_mode = p1_career}
	progression_pop_current
	get_progression_globals \{game_mode = p1_career}
	GlobalTags_UnlockAll songlist = <tier_global>
	progression_push_current
	band_index = (<band_index> + 1)
	repeat 5
	GlobalTags_UnlockAll \{songlist = GH3_General_Songs}
	GlobalTags_UnlockAll \{songlist = GH3_Bonus_Songs}
	<diff_index> = (<diff_index> + 1)
	repeat 4
	GetArraySize ($GH3_Bonus_Songs.tier1.songs)
	i = 0
	begin
	SetGlobalTags ($GH3_Bonus_Songs.tier1.songs [<i>]) params = {unlocked = 1}
	<i> = (<i> + 1)
	repeat <array_size>
	i = 5
	GetArraySize ($bv_text_array)
	begin
	video_checksum = ($bv_text_array [<i>].id)
	SetGlobalTags <video_checksum> params = {unlocked = 1}
	<i> = (<i> + 1)
	repeat (<array_size> - 5)
	change \{structurename = player1_status
		new_cash = 0}
	change \{progression_play_completion_movie = 0}
	change \{progression_unlock_tier_last_song = 0}
	change current_difficulty = <stored_difficulty1>
	change current_difficulty2 = <stored_difficulty2>
	change current_band = <stored_band>
	change game_mode = <stored_gamemode>
	if (<popped> = 1)
		progression_pop_current
	endif
	SetGlobalTags \{user_options
		params = {
			unlock_Cheat_PrecisionMode = 1
		}}
	SetGlobalTags \{user_options
		params = {
			unlock_Cheat_NoFail = 1
		}}
	SetGlobalTags \{user_options
		params = {
			unlock_Cheat_PerformanceMode = 1
		}}
	SetGlobalTags \{user_options
		params = {
			unlock_Cheat_AirGuitar = 1
		}}
	SetGlobalTags \{user_options
		params = {
			unlock_Cheat_Hyperspeed = 1
		}}
endscript

// Prevent game from setting all scores to a million points on Unlock All
script GlobalTags_UnlockAll \{songs_only = 0}
	if NOT (<songs_only> = 1)
		array_count = 0
		GetArraySize \{$Bonus_Guitars}
		begin
		SetGlobalTags ($Bonus_Guitars [<array_count>].id) params = {unlocked = 1 unlocked_for_purchase = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Bonus_Guitar_Finishes}
		begin
		SetGlobalTags ($Bonus_Guitar_Finishes [<array_count>].id) params = {unlocked = 1 unlocked_for_purchase = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Secret_Guitars}
		begin
		SetGlobalTags ($Secret_Guitars [<array_count>].id) params = {unlocked = 1 unlocked_for_purchase = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Bonus_Basses}
		begin
		SetGlobalTags ($Bonus_Basses [<array_count>].id) params = {unlocked = 1 unlocked_for_purchase = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Bonus_Bass_Finishes}
		begin
		SetGlobalTags ($Bonus_Bass_Finishes [<array_count>].id) params = {unlocked = 1 unlocked_for_purchase = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Secret_Characters}
		begin
		SetGlobalTags ($Secret_Characters [<array_count>].id) params = {unlocked = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Bonus_Outfits}
		begin
		SetGlobalTags ($Bonus_Outfits [<array_count>].id) params = {unlocked = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Bonus_Styles}
		begin
		SetGlobalTags ($Bonus_Styles [<array_count>].id) params = {unlocked = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
		array_count = 0
		GetArraySize \{$Bonus_Videos}
		begin
		SetGlobalTags ($Bonus_Videos [<array_count>].id) params = {unlocked = 1}
		array_count = (<array_count> + 1)
		repeat <array_size>
	endif
	array_count = 0
	begin
	setlist_prefix = ($<songlist>.prefix)
	FormatText checksumname = tiername '%ptier%i' p = <setlist_prefix> i = (<array_count> + 1)
	FormatText checksumname = tier_checksum 'tier%s' s = (<array_count> + 1)
	GetArraySize ($<songlist>.<tier_checksum>.songs)
	SetGlobalTags <tiername> params = {unlocked = 1
		complete = 1
		aerosmith_unlocked = 1
		encore_unlocked = 1
		boss_unlocked = 1
		num_intro_songs_to_progress = 0
		num_songs_to_progress = 0}
	song_count = 0
	begin
	setlist_prefix = ($<songlist>.prefix)
	FormatText checksumname = song_checksum '%p_song%i_tier%s' p = <setlist_prefix> i = (<song_count> + 1) s = (<array_count> + 1) AddToStringLookup = true
	if (<songs_only> = 1)
		if NOT (<song_checksum> = bonus_song10_tier1)
			SetGlobalTags <song_checksum> params = {unlocked = 1}
		endif
	else
		SetGlobalTags <song_checksum> params = {stars = 3
			score = 1000
			unlocked = 1}
		get_difficulty_text_nl difficulty = ($current_difficulty)
		get_song_prefix song = ($<songlist>.<tier_checksum>.songs [<song_count>])
		get_formatted_songname song_prefix = <song_prefix> difficulty_text_nl = <difficulty_text_nl>
		SetGlobalTags <songname> params = {achievement_gold_star = 1}
	endif
	song_count = (<song_count> + 1)
	repeat <array_size>
	array_count = (<array_count> + 1)
	repeat ($<songlist>.num_tiers)
	if NOT (<songs_only> = 1)
		setup_venuetags \{cheat}
	endif
endscript