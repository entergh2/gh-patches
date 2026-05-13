guitar_hero_cheats = [
	{
		name = AirGuitar
		name_text = $cheats_air_guitar
		var = Cheat_AirGuitar
		unlock_pattern = [
			4352
			69632
			4352
			4352
			4112
			4112
			4112
			4112
			4112
			272
			272
			257
		]
	}
	{
		name = PerformanceMode
		name_text = $cheats_performance_mode
		var = Cheat_PerformanceMode
		unlock_pattern = [
			69632
			69632
			4097
			4112
			69632
			69632
			4097
			4112
		]
	}
	{
		name = hyperspeed
		name_text = $cheats_hyperspeed
		var = Cheat_Hyperspeed
		unlock_pattern = [
			257
			257
			257
			257
			257
			4352
			4352
			4352
			4352
			4112
			4112
			4112
			4112
			4112
			272
			257
			257
		]
	}
	{
		name = NoFail
		name_text = $cheats_no_fail
		var = Cheat_NoFail
		unlock_pattern = [
			69632
			16
			69632
			65792
			16
			65792
			4352
			1
			4352
			65792
			256
			65792
			69632
		]
	}
	{
		name = PrecisionMode
		name_text = $cheats_precision_mode
		var = Cheat_PrecisionMode
		unlock_pattern = [
			4352
			4112
			4112
			4352
			4352
			272
			272
			272
			4112
			4352
			4112
			4112
			4352
			4352
			272
			272
			272
			4112
		]
	}
	{
		name = unlockall
		name_text = $cheats_unlocked_all_songs
		var = Cheat_UnlockAll
		unlock_pattern = [
			4352
			69632
			69632
			4352
			4352
			69632
			4352
			4352
			69632
			69632
			4352
			4352
			69632
			4352
			4112
		]
	}
	{
		name = superuser
		name_text = $cheats_debug_mode_enabled
		var = Cheat_SuperUser
		unlock_pattern = [
			69888
			4368
			273
		]
	}
	{
		name = viewercheat
		name_text = $cheats_viewer_launched
		var = cheat_viewer
		unlock_pattern = [
			273
			4368
			69888
		]
	}
]

script unlock_cheat 
	change \{options_autosave_required = 1}
	if (<cheat> = Cheat_SuperUser)
		change \{enable_button_cheats = 1}
		SoundEvent \{event = Crowd_OneShots_Cheer_Close}
		spawnscriptnow cheat_award_text params = {index = <index> show_unlock = 0}
		return
	endif
	if (<cheat> = cheat_viewer)
		LaunchViewer
		change \{select_shift = 1}
		SoundEvent \{event = Crowd_OneShots_Cheer_Close}
		spawnscriptnow cheat_award_text params = {index = <index> show_unlock = 0}
		return
	endif
	if (<cheat> = Cheat_UnlockAll)
		GlobalTags_UnlockAll \{songlist = GH3_General_Songs
			songs_only = 1}
		GlobalTags_UnlockAll \{songlist = GH3_Bonus_Songs
			songs_only = 1}
		GetArraySize ($GH3_Bonus_Songs.tier1.songs)
		i = 0
		begin
		if NOT (<i> = 9)
			SetGlobalTags ($GH3_Bonus_Songs.tier1.songs [<i>]) params = {unlocked = 1}
		endif
		<i> = (<i> + 1)
		repeat <array_size>
		SoundEvent \{event = Crowd_OneShots_Cheer_Close}
		spawnscriptnow cheat_award_text params = {index = <index> show_unlock = 0}
		return
	endif
	if (<cheat> = Cheat_PrecisionMode)
		change \{check_time_early = $original_check_time_early}
		change \{check_time_late = $original_check_time_late}
	endif
	if NOT (<cheat> > 0)
		SoundEvent \{event = Crowd_OneShots_Cheer_Close}
		change globalname = <cheat> newvalue = 2
		updateUnlockedCheats
		spawnscriptnow cheat_award_text params = {index = <index>}
	endif
endscript
