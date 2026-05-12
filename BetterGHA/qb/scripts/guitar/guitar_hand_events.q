
script Strum_iterator \{song_name = "test"
		difficulty = "easy"
		array_type = "song"
		part = ''}
	if NOT GotParam \{target}
		printf \{"Strum_iterator called without target!"}
		return
	endif
	get_song_prefix song = <song_name>
	FormatText checksumname = song '%s_song_%pexpert' s = <song_prefix> p = <part> AddToStringLookup
	array_entry = 0
	GetArraySize $<song>
	if (<array_size> = 0)
		return
	endif
	song_array_size = (<array_size> / $num_song_columns)
	GetSongTimeMs time_offset = <time_offset>
	if NOT (<song_array_size> = 0)
		begin
		if ((<time> - <skipleadin>) < ($<song> [<array_entry>]))
			break
		endif
		<array_entry> = (<array_entry> + $num_song_columns)
		repeat <song_array_size>
		song_array_size = (<song_array_size> - (<array_entry> / $num_song_columns))
	endif
	ExtendCRC <target> '_Info' out = info_struct
	begin
	if (<song_array_size> = 0)
		break
	endif
	TimeMarkerReached_SetParams time_offset = <time_offset> array = <song> array_entry = <array_entry>
	begin
	if TimeMarkerReached
		GetSongTimeMs time_offset = <time_offset>
		break
	endif
	Wait \{1
		gameframe}
	repeat
	TimeMarkerReached_ClearParams
	if (($<info_struct>.playing) = true)
		note_length = ($<song> [(<array_entry> + 1)])
		if (<note_length> > 0)
			LaunchEvent type = strum_guitar target = <target> data = {note_length = <note_length>}
		endif
	endif
	<array_entry> = (<array_entry> + $num_song_columns)
	repeat <song_array_size>
endscript

script FretPos_iterator 
	if NOT GotParam \{target}
		printf \{"FretPos_iterator called without target!"}
		return
	endif
	if ($disable_band = 1)
		return
	endif
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_anim_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		printf \{"FRETPOS ANIMS DISABLED: No midi events found for this song"}
		return
	endif
	ExtendCRC <target> '_Info' out = info_struct
	array_entry = 0
	GetArraySize $<event_array>
	GetSongTimeMs time_offset = <time_offset>
	if NOT (<array_size> = 0)
		begin
		if ((<time> - <skipleadin>) < $<event_array> [<array_entry>] [0])
			break
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <array_size>
		array_size = (<array_size> - <array_entry>)
		if (<array_size> = 0)
			return
		endif
		if (<part> = guitar)
			min_note = 118
			max_note = 127
		elseif (<part> = rhythm)
			min_note = 84
			max_note = 93
		else
			min_note = 101
			max_note = 110
		endif
		begin
		TimeMarkerReached_SetParams time_offset = <time_offset> array = <event_array> array_entry = <array_entry> ArrayOfArrays
		begin
		if TimeMarkerReached
			GetSongTimeMs time_offset = <time_offset>
			break
		endif
		Wait \{1
			gameframe}
		repeat
		TimeMarkerReached_ClearParams
		if (($<info_struct>.playing) = true)
			note = ($<event_array> [<array_entry>] [1])
			length = ($<event_array> [<array_entry>] [2])
			if ((<note> >= <min_note>) && (<note> <= <max_note>))
				if CompositeObjectExists name = <target>
					LaunchEvent type = pose_fret target = <target> data = {note = <note> note_length = <note_length>}
				endif
			endif
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <array_size>
	endif
endscript

script FretFingers_iterator \{part = ''}
	FretFingers_iterator_CFunc_Setup
	begin
	if FretFingers_iterator_CFunc
		break
	endif
	Wait \{1
		gameframe}
	repeat
	FretFingers_iterator_CFunc_Cleanup
endscript

script WatchForStartPlaying_iterator 
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_song_expert' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		return
	endif
	array_entry = 0
	GetArraySize $<event_array>
	song_array_size = (<array_size> / $num_song_columns)
	GetSongTimeMs time_offset = <time_offset>
	if NOT (<song_array_size> = 0)
		begin
		if ((<time> - <skipleadin>) < $<event_array> [<array_entry>])
			break
		endif
		<array_entry> = (<array_entry> + $num_song_columns)
		repeat <song_array_size>
		song_array_size = (<song_array_size> - (<array_entry> / $num_song_columns))
		if (<song_array_size> = 0)
			return
		endif
		TimeMarkerReached_SetParams time_offset = <time_offset> array = <event_array> array_entry = <array_entry>
		begin
		if TimeMarkerReached
			GetSongTimeMs time_offset = <time_offset>
			break
		endif
		Wait \{1
			gameframe}
		repeat
		TimeMarkerReached_ClearParams
		BroadcastEvent \{type = start_playing}
	endif
endscript

script Faceoff_Anim_iterator \{song_name = "test"
		difficulty = "easy"
		array_type = "song"
		part = ''}
	printf channel = faceoff "Faceoff_Anim_iterator for player %a " a = <player>
	if NOT GotParam \{player}
		printf \{"Faceoff_Anim_iterator called without param 'player'!"}
		return
	endif
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_faceoff%p' s = <song_prefix> p = <player_text> AddToStringLookup
	array_entry = 0
	GetArraySize $<event_array>
	if (<array_size> = 0)
		return
	endif
	GetSongTimeMs time_offset = <time_offset>
	begin
	if ((<time> - <skipleadin>) < ($<event_array> [<array_entry>]) [0])
		break
	endif
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
	array_size = (<array_size> - <array_entry>)
	if (<array_size> = 0)
		return
	endif
	begin
	begin
	GetSongTimeMs time_offset = <time_offset>
	if (<time> >= $<event_array> [<array_entry>] [0])
		break
	endif
	Wait \{1
		gameframe}
	repeat
	target = (<player_status>.band_member)
	ExtendCRC <target> '_Info' out = info_struct
	change structurename = <info_struct> playing = true
	play_time = ($<event_array> [<array_entry>] [1])
	stop_playing_time = (($<event_array> [<array_entry>] [0]) + ($<event_array> [<array_entry>] [1]))
	begin
	GetSongTimeMs time_offset = <time_offset>
	if (<time> >= <stop_playing_time>)
		break
	endif
	Wait \{1
		gameframe}
	printf channel = faceoff "%a is playing" a = <player>
	repeat
	change structurename = <info_struct> playing = false
	<array_entry> = (<array_entry> + 1)
	repeat <array_size>
endscript

script Drum_iterator 
	Drum_iterator_CFunc_Setup
	begin
	if Drum_iterator_CFunc
		break
	endif
	Wait \{1
		gameframe}
	repeat
	Drum_iterator_CFunc_Cleanup
endscript

script Drum_cymbal_iterator 
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_drums_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		printf \{"FRETPOS ANIMS DISABLED: No midi events found for this song"}
		return
	endif
	array_entry = 0
	GetArraySize $<event_array>
	cymbal_anims = ($drummer_info.cymbal_anims)
	GetSongTimeMs time_offset = <time_offset>
	if NOT (<array_size> = 0)
		begin
		if ((<time> - <skipleadin>) < $<event_array> [<array_entry>] [0])
			break
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <array_size>
		array_size = (<array_size> - <array_entry>)
		if (<array_size> = 0)
			return
		endif
		begin
		TimeMarkerReached_SetParams time_offset = <time_offset> array = <event_array> array_entry = <array_entry> ArrayOfArrays
		begin
		if TimeMarkerReached
			GetSongTimeMs time_offset = <time_offset>
			break
		endif
		Wait \{1
			gameframe}
		repeat
		TimeMarkerReached_ClearParams
		if CompositeObjectExists \{name = Drummer}
			if ($drummer_info.playing_special_anim = false)
				note = ($<event_array> [<array_entry>] [1])
				length = ($<event_array> [<array_entry>] [2])
				if ((<note> >= 37) && (<note> <= 45))
					switch (<note>)
						case 44
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal1 timerId = CymbalTimer1 Anim = ($<cymbal_anims> [0]) BlendDuration = $cymbal_blend_time
						case 45
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal2 timerId = CymbalTimer2 Anim = ($<cymbal_anims> [1]) BlendDuration = $cymbal_blend_time
						case 43
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal3 timerId = CymbalTimer3 Anim = ($<cymbal_anims> [2]) BlendDuration = $cymbal_blend_time
						case 41
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal4 timerId = CymbalTimer4 Anim = ($<cymbal_anims> [3]) BlendDuration = $cymbal_blend_time
						case 42
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal4 timerId = CymbalTimer4 Anim = ($<cymbal_anims> [3]) BlendDuration = $cymbal_blend_time
					endswitch
				elseif ((<note> >= 49) && (<note> <= 57))
					switch (<note>)
						case 56
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal1 timerId = CymbalTimer1 Anim = ($<cymbal_anims> [0]) BlendDuration = $cymbal_blend_time
						case 57
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal2 timerId = CymbalTimer2 Anim = ($<cymbal_anims> [1]) BlendDuration = $cymbal_blend_time
						case 55
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal3 timerId = CymbalTimer3 Anim = ($<cymbal_anims> [2]) BlendDuration = $cymbal_blend_time
						case 53
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal4 timerId = CymbalTimer4 Anim = ($<cymbal_anims> [3]) BlendDuration = $cymbal_blend_time
						case 54
						Drummer :hero_play_anim Tree = $hero_drumming_branch target = cymbal4 timerId = CymbalTimer4 Anim = ($<cymbal_anims> [3]) BlendDuration = $cymbal_blend_time
					endswitch
				endif
			endif
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <array_size>
	endif
endscript
first_countoff_note = true

script Drum_countoff_iterator 
	get_song_struct song = <song_name>
	if StructureContains Structure = <song_struct> name = countoff
		if ((<song_struct>.countoff) = 'hihat01' || (<song_struct>.countoff) = 'hihat02')
			return
		endif
	endif
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_drums_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		printf \{"FRETPOS ANIMS DISABLED: No midi events found for this song"}
		return
	endif
	array_entry = 0
	GetArraySize $<event_array>
	change \{first_countoff_note = true}
	GetSongTimeMs time_offset = <time_offset>
	if NOT (<array_size> = 0)
		begin
		if ((<time> - <skipleadin>) < $<event_array> [<array_entry>] [0])
			break
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <array_size>
		array_size = (<array_size> - <array_entry>)
		if (<array_size> = 0)
			return
		endif
		begin
		TimeMarkerReached_SetParams time_offset = <time_offset> array = <event_array> array_entry = <array_entry> ArrayOfArrays
		begin
		if TimeMarkerReached
			GetSongTimeMs time_offset = <time_offset>
			break
		endif
		Wait \{1
			gameframe}
		repeat
		TimeMarkerReached_ClearParams
		if CompositeObjectExists \{name = Drummer}
			note = ($<event_array> [<array_entry>] [1])
			length = ($<event_array> [<array_entry>] [2])
			if (<note> = 70)
				next_note = ($<event_array> [(<array_entry> + 1)] [1])
				if (<next_note> = 70)
					Drummer :obj_spawnscript \{play_countoff_anim}
				else
					Drummer :obj_spawnscript \{play_countoff_anim
						params = {
							last_countoff
						}}
					return
				endif
			endif
		endif
		<array_entry> = (<array_entry> + 1)
		repeat <array_size>
	endif
endscript

script play_countoff_anim 
	arm_anims = ($drummer_info.arm_anims)
	blend_time = 0.2
	if ($first_countoff_note = true)
		Band_PlaysimpleAnim name = Drummer Anim = ($<arm_anims>.sticktap_into_l)
		change \{first_countoff_note = false}
		if CompositeObjectExists \{name = Drummer}
			Drummer :hero_wait_until_anim_finished
		endif
		blend_time = 0.0
	else
		delay = (12.0 / 30.0)
		Wait <delay> seconds
	endif
	Band_PlaysimpleAnim name = Drummer Anim = ($<arm_anims>.sticktap_l) BlendDuration = <blend_time>
endscript

script delay_drumkick_broadcast 
	Wait <delay> seconds
	BroadcastEvent type = <type>
endscript

script play_delayed_right_foot_anim 
	Wait <delay> seconds
	hero_play_anim Tree = $hero_drumming_branch target = rightfoot timerId = rightfoot_timer Anim = <anim_name> BlendDuration = $drum_blend_time_kick
endscript

script handle_strum_event 
	Obj_KillSpawnedScript \{name = hero_strum_guitar}
	Obj_SpawnScriptNow hero_strum_guitar params = {note_length = <note_length>}
endscript

script handle_missed_strum_event 
	Obj_KillSpawnedScript \{name = hero_strum_guitar}
	Obj_SpawnScriptNow hero_strum_guitar params = {note_length = <note_length>}
endscript

script handle_start_playing 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	if (<info_struct>.stance = intro || <info_struct>.stance = intro_smstg)
		handle_change_stance \{stance = Stance_A}
	endif
endscript

script handle_fret_event 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	FormatText checksumname = track 'track_%n' n = <note>
	fret_anims = ($<info_struct>.fret_anims)
	if NOT StructureContains Structure = $<fret_anims> name = <track>
		return
	endif
	Anim = (<fret_anims>.<track>)
	Obj_KillSpawnedScript \{name = hero_play_fret_anim}
	Obj_SpawnScriptNow hero_play_fret_anim params = {Anim = <Anim>}
endscript

script handle_finger_event 
	Obj_KillSpawnedScript \{name = hero_play_chord}
	Obj_SpawnScriptNow hero_play_chord params = {chord = <chord>}
endscript

script handle_missed_note 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	if ($<info_struct>.playing_missed_note = false)
		change structurename = <info_struct> playing_missed_note = true
		strum_anims = $bad_strums
		anim_length = ($<info_struct>.last_strum_length)
		strum_anim = (<strum_anims>.<anim_length> [0])
		hero_play_strum_anim Anim = <strum_anim> BlendDuration = 0.1
	endif
endscript

script handle_hit_note 
	Obj_GetID
	handle_hit_note_CFunc
endscript

script handle_change_stance \{Speed = 1.0}
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	display_debug_info = false
	if (should_display_debug_info)
		display_debug_info = true
	endif
	if GotParam \{no_wait}
		anim_set = ($<info_struct>.anim_set)
		old_stance = ($<info_struct>.stance)
		if play_stance_transition_cfunc anim_set = <anim_set> old_stance = <old_stance> new_stance = <stance>
			hero_play_anim Anim = <anim_to_run> Speed = <Speed>
			ragdoll_markforreset
			hero_wait_until_anim_finished
		else
			ragdoll_markforreset
		endif
		change structurename = <info_struct> stance = <stance>
		change structurename = <info_struct> next_stance = <stance>
		if (<display_debug_info> = true)
			printf channel = AnimInfo "%a stance is immediately changing to %b ...." a = <ObjID> b = <stance>
		endif
		if (<ObjID> = Guitarist || <ObjID> = bassist || <ObjID> = rhythm)
			if (<stance> = intro || <stance> = intro_smstg || <stance> = stance_frontend || <stance> = stance_frontend_guitar)
				change structurename = <info_struct> disable_arms = 2
				change structurename = <info_struct> next_anim_disable_arms = 2
			else
				change structurename = <info_struct> disable_arms = 0
				change structurename = <info_struct> next_anim_disable_arms = 0
			endif
			Obj_SwitchScript \{guitarist_idle}
		else
			Obj_SwitchScript \{BandMember_Idle}
		endif
	else
		if (<display_debug_info> = true)
			printf channel = AnimInfo "%a is queuing stance change to %b............." a = <ObjID> b = <stance>
		endif
		change structurename = <info_struct> next_stance = <stance>
		if (<ObjID> = Guitarist || <ObjID> = bassist || <ObjID> = rhythm)
			if (<stance> = intro || <stance> = intro_smstg || <stance> = stance_frontend || <stance> = stance_frontend_guitar)
				change structurename = <info_struct> next_anim_disable_arms = 2
			else
				change structurename = <info_struct> next_anim_disable_arms = 0
			endif
		endif
	endif
	return
endscript

script queue_change_stance 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	change structurename = <info_struct> next_stance = <stance>
endscript

script handle_play_anim 
	Obj_GetID
	ExtendCRC <ObjID> '_Info' out = info_struct
	anim_set = ($<info_struct>.anim_set)
	stance = ($<info_struct>.stance)
	display_debug_info = false
	if (should_display_debug_info)
		display_debug_info = true
	endif
	if GotParam \{no_wait}
		if (<display_debug_info> = true)
			printf channel = AnimInfo "%a will immediately start the %b anim........" a = <ObjID> b = <Anim>
		endif
		change structurename = <info_struct> current_anim = <Anim>
		change structurename = <info_struct> next_anim = none
		if GotParam \{repeat_count}
			change structurename = <info_struct> anim_repeat_count = <repeat_count>
		else
			change structurename = <info_struct> anim_repeat_count = 1
		endif
		if GotParam \{Cycle}
			change structurename = <info_struct> cycle_anim = true
		else
			change structurename = <info_struct> cycle_anim = false
		endif
		if (<name> = Guitarist || <name> = bassist || <ObjID> = rhythm)
			if GotParam \{disable_auto_arms}
				change structurename = <info_struct> disable_arms = 2
			elseif GotParam \{disable_auto_strum}
				change structurename = <info_struct> disable_arms = 1
			else
				change structurename = <info_struct> disable_arms = 0
			endif
		endif
		ragdoll_markforreset
		Obj_KillSpawnedScript \{name = hero_play_adjusting_random_anims}
		Obj_SpawnScriptNow hero_play_adjusting_random_anims params = {Anim = <Anim>}
	else
		if (<display_debug_info> = true)
			if (<info_struct>.next_anim != none)
				printf channel = AnimInfo "******* %a is replacing queued anim %b with %c ******* " a = <ObjID> b = (<info_struct>.next_anim) c = <Anim>
			else
				printf channel = AnimInfo "%a is queueing the %b anim........" a = <ObjID> b = <Anim>
			endif
		endif
		change structurename = <info_struct> next_anim = <Anim>
		if GotParam \{repeat_count}
			change structurename = <info_struct> next_anim_repeat_count = <repeat_count>
		else
			change structurename = <info_struct> next_anim_repeat_count = 1
		endif
		if GotParam \{Cycle}
			change structurename = <info_struct> cycle_next_anim = true
		else
			change structurename = <info_struct> cycle_next_anim = false
		endif
		if (<name> = Guitarist || <name> = bassist || <ObjID> = rhythm)
			if GotParam \{disable_auto_arms}
				change structurename = <info_struct> next_anim_disable_arms = 2
			elseif GotParam \{disable_auto_strum}
				change structurename = <info_struct> next_anim_disable_arms = 1
			else
				change structurename = <info_struct> next_anim_disable_arms = 0
			endif
		endif
	endif
endscript

script handle_walking 
	Obj_GetID
	if (<ObjID> != <name>)
		return
	endif
	ExtendCRC <ObjID> '_Info' out = info_struct
	if ($<info_struct>.allow_movement != true)
		return
	endif
	if NOT ($<info_struct>.stance = Stance_A)
		anim_set = ($<info_struct>.anim_set)
		old_stance = ($<info_struct>.stance)
		if play_stance_transition_cfunc anim_set = <anim_set> old_stance = <old_stance> new_stance = Stance_A
			hero_play_anim Anim = <anim_to_run>
			hero_wait_until_anim_finished
		endif
		change structurename = <info_struct> stance = Stance_A
	endif
	change structurename = <info_struct> disable_arms = 0
	Obj_SwitchScript guitarist_walking params = {<...>}
endscript

script play_drum_anim \{arm = left
		BlendDuration = $drum_blend_time}
	if NOT GotParam \{Anim}
		return
	endif
	if (<arm> = left)
		Obj_KillSpawnedScript \{name = play_drummer_left_arm_anim}
		Obj_SpawnScriptNow play_drummer_left_arm_anim params = {Anim = <Anim> note = <note> BlendDuration = <BlendDuration>}
	else
		Obj_KillSpawnedScript \{name = play_drummer_right_arm_anim}
		Obj_SpawnScriptNow play_drummer_right_arm_anim params = {Anim = <Anim> note = <note> BlendDuration = <BlendDuration>}
	endif
endscript

script delay_play_drummer_left_arm_anim 
	if ($display_drummer_anim_info = true)
	endif
	Wait <delay> seconds
	Obj_KillSpawnedScript \{name = play_drummer_left_arm_anim}
	Obj_SpawnScriptNow play_drummer_left_arm_anim params = {Anim = <Anim> note = <note> BlendDuration = <BlendDuration>}
endscript

script play_drummer_left_arm_anim 
	if GotParam \{note}
		change structurename = drummer_info last_left_arm_note = <note>
	endif
	hero_play_anim Tree = $hero_drumming_branch timerId = leftarm_timer target = DrummerLeftArm Anim = <Anim> BlendDuration = <BlendDuration>
	hero_wait_until_anim_finished \{Timer = leftarm_timer}
	Wait \{$drummer_arm_blend_out_delay
		seconds}
	anim_set = ($drummer_info.arm_anims)
	hero_play_anim Tree = $hero_drumming_branch timerId = leftarm_timer target = DrummerLeftArm Anim = ($<anim_set>.stickdown_l) BlendDuration = $drum_blend_out_time Cycle
	Wait \{$drummer_clear_arm_twist_value_delay
		seconds}
	change \{structurename = drummer_info
		last_left_arm_note = 0}
endscript

script delay_play_drummer_right_arm_anim 
	if ($display_drummer_anim_info = true)
		printf channel = Drummer "delaying drum right by %a seconds" a = <delay>
	endif
	Wait <delay> seconds
	Obj_KillSpawnedScript \{name = play_drummer_right_arm_anim}
	Obj_SpawnScriptNow play_drummer_right_arm_anim params = {Anim = <Anim> note = <note> BlendDuration = <BlendDuration>}
endscript

script play_drummer_right_arm_anim 
	if GotParam \{note}
		change structurename = drummer_info last_right_arm_note = <note>
	endif
	hero_play_anim Tree = $hero_drumming_branch timerId = rightarm_timer target = DrummerRightArm Anim = <Anim> BlendDuration = <BlendDuration>
	hero_wait_until_anim_finished \{Timer = rightarm_timer}
	Wait \{$drummer_arm_blend_out_delay
		seconds}
	anim_set = ($drummer_info.arm_anims)
	hero_play_anim Tree = $hero_drumming_branch timerId = rightarm_timer target = DrummerRightArm Anim = ($<anim_set>.stickdown_r) BlendDuration = $drum_blend_out_time Cycle
	Wait \{$drummer_clear_arm_twist_value_delay
		seconds}
	change \{structurename = drummer_info
		last_right_arm_note = 0}
endscript
