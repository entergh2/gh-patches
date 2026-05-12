CameraCuts_Good_Array = Default_Cameras_Good
CameraCuts_Normal_Array = Default_Cameras_Normal
CameraCuts_Poor_Array = Default_Cameras_Poor
CameraCuts_Performance = good
CameraCuts_LastArray = CameraCuts_Good_Array
CameraCuts_LastPerformance = good
CameraCuts_Enabled = false
CameraCuts_LastIndex = 0
CameraCuts_LastType = none
CameraCuts_LastDownbeatIndex = 0
CameraCuts_ChangeTime = 0
CameraCuts_ChangeNow = false
CameraCuts_ForceTime = 0
CameraCuts_NextTime = 0
CameraCuts_ArrayPrefix = 'Cameras'
CameraCuts_ForceType = none
CameraCuts_NextName = none
CameraCuts_ChangeCamEnable = true
CameraCuts_AllowNoteScripts = true
CameraCuts_LastCameraStartTime = 0.0
CameraCuts_ForceChangeTime = 0.0
CameraCuts_ShadowCasters = none
CameraCuts_NextNoteCameraTime = -1
CameraCuts_NoteMapping = [
	{
		MidiNote = 0
		Scr = CameraCuts_EnableChangeCam
		params = {
			enable = true
		}
	}
	{
		MidiNote = 1
		Scr = CameraCuts_EnableChangeCam
		params = {
			enable = false
		}
	}
	{
		MidiNote = 3
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_rhythm'
			changenow
			type = RHYTHM_Vert_Down
		}
	}
	{
		MidiNote = 4
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_rhythm'
			changenow
			type = RHYTHM_Vert_Up
		}
	}
	{
		MidiNote = 5
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_rhythm'
			changenow
			type = RHYTHM_Orbit_CCW
		}
	}
	{
		MidiNote = 6
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_rhythm'
			changenow
			type = RHYTHM_Orbit_CW
		}
	}
	{
		MidiNote = 7
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_rhythm'
			changenow
			type = RHYTHM_CloseUp
		}
	}
	{
		MidiNote = 8
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_rhythm'
			changenow
			type = RHYTHM_Medium
		}
	}
	{
		MidiNote = 10
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			type = BASSIST_Vert_Down
		}
	}
	{
		MidiNote = 11
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			type = BASSIST_Vert_Up
		}
	}
	{
		MidiNote = 12
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			type = BASSIST_Orbit_CCW
		}
	}
	{
		MidiNote = 13
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			type = BASSIST_Orbit_CW
		}
	}
	{
		MidiNote = 14
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			type = bassist_closeup
		}
	}
	{
		MidiNote = 15
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_bassist'
			changenow
			type = BASSIST_Medium
		}
	}
	{
		MidiNote = 17
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = DRUMMER_Vert_Down
		}
	}
	{
		MidiNote = 18
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = DRUMMER_Vert_Up
		}
	}
	{
		MidiNote = 19
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = DRUMMER_Orbit_CCW
		}
	}
	{
		MidiNote = 20
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = DRUMMER_Orbit_CW
		}
	}
	{
		MidiNote = 21
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = drummer_closeup
		}
	}
	{
		MidiNote = 22
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_drummer'
			changenow
			type = DRUMMER_Medium
		}
	}
	{
		MidiNote = 24
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = SINGER_Vert_Down
		}
	}
	{
		MidiNote = 25
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = SINGER_Vert_Up
		}
	}
	{
		MidiNote = 26
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = SINGER_Orbit_CCW
		}
	}
	{
		MidiNote = 27
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = SINGER_Orbit_CW
		}
	}
	{
		MidiNote = 28
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = singer_closeup
		}
	}
	{
		MidiNote = 29
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			type = SINGER_Medium
		}
	}
	{
		MidiNote = 31
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = GUITARIST_Vert_Down
		}
	}
	{
		MidiNote = 32
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = GUITARIST_Vert_Up
		}
	}
	{
		MidiNote = 33
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = GUITARIST_Orbit_CCW
		}
	}
	{
		MidiNote = 34
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = GUITARIST_Orbit_CW
		}
	}
	{
		MidiNote = 35
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = guitarist_closeup
		}
	}
	{
		MidiNote = 36
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitarist'
			changenow
			type = GUITARIST_Medium
		}
	}
	{
		MidiNote = 38
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitar'
			changenow
			type = Guitar_CloseUp
		}
	}
	{
		MidiNote = 39
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitar'
			changenow
			type = GUITAR_Solo_Neck
		}
	}
	{
		MidiNote = 40
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_guitar'
			changenow
			type = GUITAR_Solo_Body
		}
	}
	{
		MidiNote = 42
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stage'
			changenow
			type = STAGE_Vert_Down
		}
	}
	{
		MidiNote = 43
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stage'
			changenow
			type = STAGE_Vert_Up
		}
	}
	{
		MidiNote = 44
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stage'
			changenow
			type = STAGE_Orbit_CCW
		}
	}
	{
		MidiNote = 45
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stage'
			changenow
			type = STAGE_Orbit_CW
		}
	}
	{
		MidiNote = 46
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stage'
			changenow
			type = STAGE_Low
		}
	}
	{
		MidiNote = 47
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stage'
			changenow
			type = STAGE_High
		}
	}
	{
		MidiNote = 49
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mid'
			changenow
			type = MID_Vert_Down
		}
	}
	{
		MidiNote = 50
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mid'
			changenow
			type = MID_Vert_Up
		}
	}
	{
		MidiNote = 51
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mid'
			changenow
			type = MID_Orbit_CCW
		}
	}
	{
		MidiNote = 52
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mid'
			changenow
			type = MID_Orbit_CW
		}
	}
	{
		MidiNote = 53
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mid'
			changenow
			type = MID_Low
		}
	}
	{
		MidiNote = 54
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mid'
			changenow
			type = MID_High
		}
	}
	{
		MidiNote = 56
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_longshot'
			changenow
			type = LONGSHOT_Low
		}
	}
	{
		MidiNote = 57
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_longshot'
			changenow
			type = LONGSHOT_High
		}
	}
	{
		MidiNote = 59
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_zoom'
			changenow
			type = ZOOM_In_Fast
		}
	}
	{
		MidiNote = 60
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_zoom'
			changenow
			type = ZOOM_In_Slow
		}
	}
	{
		MidiNote = 61
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_zoom'
			changenow
			type = ZOOM_Out_Fast
		}
	}
	{
		MidiNote = 62
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_zoom'
			changenow
			type = ZOOM_Out_Slow
		}
	}
	{
		MidiNote = 64
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_pan'
			changenow
			type = PAN_Singer_Guitarist
		}
	}
	{
		MidiNote = 65
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_pan'
			changenow
			type = PAN_Guitarist_Singer
		}
	}
	{
		MidiNote = 67
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_dolly'
			changenow
			type = DOLLY_Front_R
		}
	}
	{
		MidiNote = 68
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_dolly'
			changenow
			type = DOLLY_Front_L
		}
	}
	{
		MidiNote = 69
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_dolly'
			changenow
			type = DOLLY_Rear_R
		}
	}
	{
		MidiNote = 70
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_dolly'
			changenow
			type = DOLLY_Rear_L
		}
	}
	{
		MidiNote = 72
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_special'
			changenow
			type = SPECIAL_A
		}
	}
	{
		MidiNote = 73
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_special'
			changenow
			type = SPECIAL_B
		}
	}
	{
		MidiNote = 74
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_special'
			changenow
			type = SPECIAL_C
		}
	}
	{
		MidiNote = 75
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_special'
			changenow
			type = SPECIAL_D
		}
	}
	{
		MidiNote = 77
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mocap'
			changenow
			name = MOCAP01
		}
	}
	{
		MidiNote = 78
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mocap'
			changenow
			name = MOCAP02
		}
	}
	{
		MidiNote = 79
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mocap'
			changenow
			name = MOCAP03
		}
	}
	{
		MidiNote = 80
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_mocap'
			changenow
			name = MOCAP04
		}
	}
	{
		MidiNote = 82
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_audience'
			changenow
			type = audience
		}
	}
	{
		MidiNote = 84
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_boss_battle'
			changenow
			type = Player_CloseUp
		}
	}
	{
		MidiNote = 85
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_boss_battle'
			changenow
			type = Boss_CloseUp
		}
	}
	{
		MidiNote = 87
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			name = SINGER_CloseUp01
		}
	}
	{
		MidiNote = 88
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			name = SINGER_CloseUp02
		}
	}
	{
		MidiNote = 89
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_singer'
			changenow
			name = SINGER_CloseUp03
		}
	}
	{
		MidiNote = 91
		Scr = CameraCuts_SetArrayPrefix
		params = {
			prefix = 'cameras_stagediver'
			changenow
		}
	}
]

script cameracuts_iterator 
	printf "Cameras Iterator started with time %d" d = <time_offset>
	change \{CameraCuts_NextNoteCameraTime = -1}
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_cameras_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		return
	endif
	array_entry = 0
	fretbar_count = 0
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
		if NOT (<array_size> = 0)
			begin
			change CameraCuts_NextNoteCameraTime = ($<event_array> [<array_entry>] [0] - <time_offset>)
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
			note = ($<event_array> [<array_entry>] [1])
			if ($CameraCuts_AllowNoteScripts = true)
				if GetNoteMapping section = cameras note = <note>
					spawnscriptnow (<note_data>.Scr) params = {(<note_data>.params) length = ($<event_array> [<array_entry>] [2])}
				endif
			endif
			<array_entry> = (<array_entry> + 1)
			repeat <array_size>
		endif
	endif
	change \{CameraCuts_NextNoteCameraTime = -1}
endscript

script CameraCuts_GetNextNoteCameraTime 
	return camera_time = ($CameraCuts_NextNoteCameraTime)
endscript

script CameraCuts_SetArray \{type = good
		array = Default_Cameras_Good}
	if (<type> = good)
		change CameraCuts_Good_Array = <array>
	endif
	if (<type> = medium)
		change CameraCuts_Normal_Array = <array>
	endif
	if (<type> = poor)
		change CameraCuts_Poor_Array = <array>
	endif
endscript

script CameraCuts_SetParams \{performance = medium}
	change CameraCuts_Performance = <performance>
endscript

script CameraCuts_SetArrayPrefix \{prefix = 'cameras'
		type = none
		name = none
		length = 0}
	if GotParam \{selectguitartype}
		if ($player1_status.instrument_id = Instrument_Guitar_Demonik)
			type = demonik
		else
			type = Normal
		endif
	endif
	change CameraCuts_ArrayPrefix = <prefix>
	change CameraCuts_ForceType = <type>
	change CameraCuts_NextName = <name>
	set_defaultcameracuts
	change \{allow_4x_effect = true}
	if GotParam \{changetime}
		change CameraCuts_ForceChangeTime = <changetime>
	endif
	if GotParam \{changenow}
		if (<length> > 200)
			change CameraCuts_NextTime = <length>
		endif
		CameraCuts_EnableChangeCam \{enable = true}
	endif
endscript

script set_defaultcameracut_perf_debug \{perf = 'good'
		perf_checksum = good}
	GetPakManCurrentName \{map = zones}
	if ($current_num_players = 2)
		FormatText checksumname = Cameras_Array '%s_%p_%c_2p' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
		if GlobalExists name = <Cameras_Array> type = array
			FormatText TextName = Cameras_Array2 '%s_%p_%c_2p' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
			printf "set_defaultcameracut_perf_debug %t %i" t = <perf_checksum> i = <Cameras_Array2>
			return
		endif
		FormatText checksumname = Cameras_Array '%s_%p_2p' p = $CameraCuts_ArrayPrefix s = <pakname>
		if GlobalExists name = <Cameras_Array> type = array
			FormatText TextName = Cameras_Array2 '%s_%p_2p' p = $CameraCuts_ArrayPrefix s = <pakname>
			printf "set_defaultcameracut_perf_debug %t %i" t = <perf_checksum> i = <Cameras_Array2>
			return
		endif
	endif
	FormatText checksumname = Cameras_Array '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
	if GlobalExists name = <Cameras_Array> type = array
		FormatText checksumname = Cameras_Array2 '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
		printf "set_defaultcameracut_perf_debug %t %i" t = <perf_checksum> i = <Cameras_Array2>
		return
	endif
	FormatText checksumname = Cameras_Array '%s_%p' p = $CameraCuts_ArrayPrefix s = <pakname>
	if GlobalExists name = <Cameras_Array> type = array
		FormatText TextName = Cameras_Array2 '%s_%p' p = $CameraCuts_ArrayPrefix s = <pakname>
		printf "set_defaultcameracut_perf_debug %t %i" t = <perf_checksum> i = <Cameras_Array2>
		return
	endif
	FormatText checksumname = Cameras_Array '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = 'default'
	if GlobalExists name = <Cameras_Array> type = array
		FormatText TextName = Cameras_Array2 '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = 'default'
		printf "set_defaultcameracut_perf_debug %t %i" t = <perf_checksum> i = <Cameras_Array2>
		return
	endif
	FormatText \{checksumname = Cameras_Array
		'%s_%p'
		p = $CameraCuts_ArrayPrefix
		s = 'default'}
	if GlobalExists name = <Cameras_Array> type = array
		FormatText \{TextName = Cameras_Array2
			'%s_%p'
			p = $CameraCuts_ArrayPrefix
			s = 'default'}
		printf "set_defaultcameracut_perf_debug %t %i" t = <perf_checksum> i = <Cameras_Array2>
		return
	endif
	printstruct <...> prefix = ($CameraCuts_ArrayPrefix)
	ScriptAssert \{"CameraCut Array not found"}
endscript

script set_defaultcameracut_perf \{perf = 'good'
		perf_checksum = good}
	GetPakManCurrentName \{map = zones}
	if ($current_num_players = 2)
		FormatText checksumname = Cameras_Array '%s_%p_%c_2p' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
		if GlobalExists name = <Cameras_Array> type = array
			CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
			return
		endif
		FormatText checksumname = Cameras_Array '%s_%p_2p' p = $CameraCuts_ArrayPrefix s = <pakname>
		if GlobalExists name = <Cameras_Array> type = array
			CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
			return
		endif
	endif
	FormatText checksumname = Cameras_Array '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = <pakname>
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	FormatText checksumname = Cameras_Array '%s_%p' p = $CameraCuts_ArrayPrefix s = <pakname>
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	FormatText checksumname = Cameras_Array '%s_%p_%c' p = $CameraCuts_ArrayPrefix c = <perf> s = 'default'
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	FormatText \{checksumname = Cameras_Array
		'%s_%p'
		p = $CameraCuts_ArrayPrefix
		s = 'default'}
	if GlobalExists name = <Cameras_Array> type = array
		CameraCuts_SetArray type = <perf_checksum> array = <Cameras_Array>
		return
	endif
	printstruct <...> prefix = ($CameraCuts_ArrayPrefix)
	ScriptAssert \{"CameraCut Array not found"}
endscript

script set_defaultcameracuts 
	set_defaultcameracut_perf \{perf = 'good'
		perf_checksum = good}
	set_defaultcameracut_perf \{perf = 'normal'
		perf_checksum = medium}
	set_defaultcameracut_perf \{perf = 'poor'
		perf_checksum = poor}
endscript

script create_cameracuts 
	change \{CameraCuts_ArrayPrefix = 'cameras'}
	set_defaultcameracuts
	SetNoteMappings \{section = cameras
		mapping = $CameraCuts_NoteMapping}
	kill_dummy_bg_camera
	change \{CameraCuts_LastType = none}
	change \{CameraCuts_LastDownbeatIndex = 0}
	change \{CameraCuts_ForceChangeTime = 0.0}
	change \{CameraCuts_ForceType = none}
	change \{CameraCuts_NextName = none}
	if ($game_mode = training)
		change \{CameraCuts_ChangeCamEnable = false}
		change \{CameraCuts_AllowNoteScripts = false}
	else
		change \{CameraCuts_ChangeCamEnable = true}
		change \{CameraCuts_AllowNoteScripts = true}
	endif
	change \{CameraCuts_Enabled = true}
	CameraCuts_StartCallback
endscript

script CameraCuts_GetNextDownbeat 
	get_song_prefix song = ($current_song)
	FormatText checksumname = event_array '%s_lightshow_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		return endtime = <endtime>
	endif
	GetArraySize $<event_array>
	array_count = ($CameraCuts_LastDownbeatIndex)
	array_size = (<array_size> - <array_count>)
	if (<array_size> > 0)
		begin
		if ($<event_array> [<array_count>] [1] = 58)
			if ($<event_array> [<array_count>] [0] > <endtime>)
				change CameraCuts_LastDownbeatIndex = <array_count>
				return endtime = ($<event_array> [<array_count>] [0])
			endif
		endif
		array_count = (<array_count> + 1)
		repeat <array_size>
	endif
	return endtime = <endtime>
endscript

script CameraCuts_StartCallback 
	change \{CameraCuts_ChangeNow = false}
	if ($CameraCuts_Enabled = false)
		return
	endif
	if ($CameraCuts_Performance = poor)
		Camera_Array = CameraCuts_Poor_Array
	else
		if ($CameraCuts_Performance = good)
			Camera_Array = CameraCuts_Good_Array
		else
			Camera_Array = CameraCuts_Normal_Array
		endif
	endif
	if CompositeObjectExists \{name = Guitarist}
		Guitarist :get_target_node
	endif
	if NOT ($CameraCuts_NextName = none)
		CameraCut_GetArraySize Camera_Array = <Camera_Array> name = ($CameraCuts_NextName) target_node = <target_node>
	elseif NOT ($CameraCuts_ForceType = none)
		CameraCut_GetArraySize Camera_Array = <Camera_Array> includetype = $CameraCuts_ForceType target_node = <target_node>
	else
		CameraCut_GetArraySize Camera_Array = <Camera_Array> excludetype = $CameraCuts_LastType target_node = <target_node>
	endif
	if (<array_size> = 0)
		newindex = 0
	else
		GetRandomValue name = newindex Integer a = 0 b = (<array_size> - 1)
		CameraCut_GetCameraIndex Camera_Array = <Camera_Array> newindex = <newindex>
	endif
	debug_flags = none
	if NOT ($debug_camera_array = none)
		found = 0
		FormatText \{checksumname = New_Camera_Array
			'%s_%p'
			s = $debug_camera_array_pakname
			p = $debug_camera_array}
		if GlobalExists name = <New_Camera_Array>
			GetArraySize $<New_Camera_Array>
			index = ($debug_camera_array_count)
			if (<index> < <array_size>)
				Camera_Array = <New_Camera_Array>
				newindex = ($debug_camera_array_count)
				found = 1
				debug_flags = update_when_paused
			endif
		endif
		if (found = 0)
			change \{debug_camera_array = none}
			change \{debug_camera_array_pakname = none}
			change \{debug_camera_array_count = none}
		endif
	endif
	change CameraCuts_LastArray = <Camera_Array>
	change \{CameraCuts_LastPerformance = $CameraCuts_Performance}
	change CameraCuts_LastIndex = <newindex>
	if StructureContains Structure = (<Camera_Array> [<newindex>]) type
		change CameraCuts_LastType = ($<Camera_Array> [<newindex>].type)
	elseif StructureContains Structure = (<Camera_Array> [<newindex>]) params
		if StructureContains Structure = (<Camera_Array> [<newindex>].params) type
			change CameraCuts_LastType = ($<Camera_Array> [<newindex>].params.type)
		else
			change \{CameraCuts_LastType = none}
		endif
	else
		change \{CameraCuts_LastType = none}
	endif
	if ($debug_showcameraname = on)
		CameraCuts_UpdateDebugCameraName
	endif
	if ($output_gpu_log = 1)
		CameraCuts_OutputGPULog
	endif
	if StructureContains Structure = (<Camera_Array> [<newindex>]) params
		camStruct = ((<Camera_Array> [<newindex>]).params)
		if NOT StructureContains Structure = <camStruct> dof
			camStruct = (<Camera_Array> [<newindex>])
		endif
	endif
	if StructureContains Structure = <camStruct> dof
		if StructureContains Structure = (<camStruct>.dof) screen_fx
			dofType = (<camStruct>.dof)
			dofParam = (<dofType>.screen_fx [0])
		endif
	else
		dofParam = ($DOF_Off_tod_manager.screen_fx [0])
	endif
	if NOT ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = venue_DOF}
		ScreenFX_AddFXInstance {
			viewport = bg_viewport
			name = venue_DOF
			<dofParam>
		}
	else
		ScreenFX_UpdateFXInstanceParams {
			viewport = bg_viewport
			name = venue_DOF
			<dofParam>
		}
	endif
	if StructureContains Structure = (<Camera_Array> [<newindex>]) CrowdOff
		enable_crowd_models_cfunc \{active = false}
	else
		enable_crowd_models_cfunc \{active = true}
	endif
	if StructureContains Structure = (<Camera_Array> [<newindex>]) ShadowCasters
		change CameraCuts_ShadowCasters = (<Camera_Array> [<newindex>].ShadowCasters)
	else
		change \{CameraCuts_ShadowCasters = none}
	endif
	change \{structurename = guitarist_info
		waiting_for_cameracut = false}
	change \{structurename = bassist_info
		waiting_for_cameracut = false}
	GetSongTimeMs
	change CameraCuts_LastCameraStartTime = <time>
	CamParams = (<Camera_Array> [<newindex>])
	CameraCut_SwapLookAts
	PlayIGCCam {
		time = <camera_time>
		viewport = bg_viewport
		controlscript = CameraCuts_StaticCamControl
		params = {CamParams = <CamParams>}
		<CamParams>
		exitscript = CameraCuts_StartCallback
		Play_hold = 0
		name = CameraCutCam
		<debug_flags>
	}
endscript

script CameraCuts_UpdateDebugCameraName 
	if ScreenElementExists \{id = debug_camera_name_text}
		GetArraySize ($CameraCuts_LastArray)
		cameraname = none
		if ($CameraCuts_LastIndex < <array_size>)
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) params
				if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex].params) name
					cameraname = ($CameraCuts_LastArray [$CameraCuts_LastIndex].params.name)
				endif
			endif
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) name
				cameraname = ($CameraCuts_LastArray [$CameraCuts_LastIndex].name)
			endif
		endif
		<Crowd> = 1
		if StructureContains Structure = ($CameraCuts_LastArray [$CameraCuts_LastIndex]) CrowdOff
			<Crowd> = 0
		endif
		FormatText TextName = cameraname "%s type=%t crowd=%c" s = <cameraname> t = $CameraCuts_LastType c = <Crowd> DontAssertForChecksums
		debug_camera_name_text :SetProps text = <cameraname>
	endif
endscript

script CameraCuts_OutputGPULog 
	GetArraySize ($CameraCuts_LastArray)
	cameraname = none
	if ($CameraCuts_LastIndex < <array_size>)
		if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) params
			if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex].params) name
				cameraname = ($CameraCuts_LastArray [$CameraCuts_LastIndex].params.name)
			endif
		endif
		if StructureContains Structure = (($CameraCuts_LastArray) [$CameraCuts_LastIndex]) name
			cameraname = ($CameraCuts_LastArray [$CameraCuts_LastIndex].name)
		endif
	endif
	<Crowd> = 1
	if StructureContains Structure = ($CameraCuts_LastArray [$CameraCuts_LastIndex]) CrowdOff
		<Crowd> = 0
	endif
	FormatText TextName = text "Cam: %s, type: %t, crowd: %c ; ; ; 16.667" s = <cameraname> t = $CameraCuts_LastType c = <Crowd> DontAssertForChecksums
	TextOutput text = <text>
endscript

script destroy_cameracuts 
	change \{CameraCuts_Enabled = false}
	KillSpawnedScript \{name = CameraCuts_StartCallback}
	KillCamAnim \{name = CameraCutCam}
	kill_dummy_bg_camera
	ClearNoteMappings \{section = cameras}
	KillSpawnedScript \{name = cameracuts_iterator}
endscript
profiling_cameracuts = false

script profile_camera_cuts \{filename = "ProfileCameras"}
	if ($profiling_cameracuts = true)
		return
	endif
	change \{profiling_cameracuts = true}
	hide_analog_options
	setslomo \{0.001}
	setslomo_song \{slomo = 0.001}
	dumpprofilestart
	GetPakManCurrentName \{map = zones}
	camera_count = 0
	begin
	switch <camera_count>
		case 0
		suffix = "cameras_good"
		case 1
		suffix = "cameras_normal"
		case 2
		suffix = "cameras_poor"
		case 3
		suffix = "cameras_good_2p"
		case 4
		suffix = "cameras_normal_2p"
		case 5
		suffix = "cameras_poor_2p"
	endswitch
	FormatText checksumname = Camera_Array '%s_%p' s = <pakname> p = <suffix>
	if GlobalExists name = <Camera_Array>
		GetArraySize $<Camera_Array>
		array_count = 0
		begin
		profile_cameracut Camera_Array_pakname = <pakname> Camera_Array = <suffix> array_count = <array_count>
		<array_count> = (<array_count> + 1)
		repeat <array_size>
	endif
	camera_count = (<camera_count> + 1)
	repeat 6
	change \{debug_camera_array = none}
	destroy_cameracuts
	Wait \{3
		gameframes}
	create_cameracuts
	dumpprofileend output_text output_file filename = <filename>
	setslomo \{$current_speedfactor}
	setslomo_song \{slomo = $current_speedfactor}
	change \{profiling_cameracuts = false}
endscript

script profile_cameracut 
	change debug_camera_array = <Camera_Array>
	change debug_camera_array_pakname = <Camera_Array_pakname>
	change debug_camera_array_count = <array_count>
	cpu = $current_cpu
	ToggleMetrics \{mode = 2}
	change \{current_cpu = 6}
	destroy_cameracuts
	Wait \{2
		gameframes}
	create_cameracuts
	Wait \{3
		gameframes}
	profile_camera_gpu
	ToggleMetrics \{mode = 0}
	change current_cpu = <cpu>
endscript

script profile_camera_gpu 
	FormatText \{checksumname = New_Camera_Array
		'%s_%p'
		s = $debug_camera_array_pakname
		p = $debug_camera_array}
	Camera_Array = $<New_Camera_Array>
	if StructureContains Structure = (<Camera_Array> [$debug_camera_array_count]) name
		FormatText TextName = title "Camera %n Profile Dump" n = ((<Camera_Array> [$debug_camera_array_count]).name) DontAssertForChecksums
	else
		FormatText TextName = title "Camera %n Profile Dump" n = ((<Camera_Array> [$debug_camera_array_count]).params.name) DontAssertForChecksums
	endif
	dumpprofile cpu = 6 title = <title> current_time_only
endscript

script CameraCuts_EnableChangeCam 
	change CameraCuts_ChangeCamEnable = <enable>
	change \{CameraCuts_ChangeNow = true}
endscript

script CameraCuts_CalcTime 
	if ($CameraCuts_ChangeNow = true)
		camera_time = 0
		GetSongTimeMs
		camera_songtime = (<time> + <camera_time> * 1000)
		return camera_time = <camera_time> camera_songtime = <camera_songtime>
	endif
	if ($CameraCuts_ForceTime = 0)
		if ($CameraCuts_NextTime = 0)
			if NOT ($debug_camera_array = none)
				camera_time = 5.0
			else
				camera_time = RandomRange (3.0, 8.0)
				GetSongTimeMs
				endtime = (<time> + <camera_time> * 1000)
				CameraCuts_GetNextDownbeat endtime = <endtime>
				camera_time = ((<endtime> - <time>) / 1000.0)
			endif
		else
			camera_time = ($CameraCuts_NextTime / 1000.0)
			change \{CameraCuts_NextTime = 0}
		endif
	else
		camera_time = ($CameraCuts_ForceTime)
	endif
	GetSongTimeMs
	camera_songtime = (<time> + <camera_time> * 1000)
	return camera_time = <camera_time> camera_songtime = <camera_songtime>
endscript

script CameraCuts_WaitScript \{camera_time = 0
		camera_songtime = 0}
	GetSongTimeMs
	change CameraCuts_ChangeTime = <camera_songtime>
	begin
	GetSongTimeMs
	if ($gWinportCameraLocked = 0)
		if (<time> >= $CameraCuts_ChangeTime ||
				$CameraCuts_ChangeNow = true)
			if ($CameraCuts_ChangeCamEnable = true)
				break
			endif
		endif
		if NOT ($CameraCuts_ForceChangeTime = 0.0)
			if ($CameraCuts_ForceChangeTime < (<time> - $CameraCuts_LastCameraStartTime))
				change \{CameraCuts_ForceChangeTime = 0.0}
				break
			endif
		endif
		if GotParam \{nowait}
			return \{false}
		endif
	endif
	Wait \{1
		gameframe}
	repeat
	return \{true}
endscript

script CameraCuts_StaticCamControl 
	CameraCuts_CalcTime
	CCam_DoMorph {
		<CamParams>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript
allow_4x_effect = true

script CameraCuts_HandCam \{name = none}
	CameraCuts_CalcTime
	change \{allow_4x_effect = true}
	if GotParam \{LockToBone}
		if (<LockToBone> = bone_guitar_neck)
			hide_fourx_effect
			change \{allow_4x_effect = false}
		endif
	endif
	CCam_DoMorph <...>
	zooming = false
	if GotParam \{type}
		if (<type> = longshot)
			GetRandomValue \{name = random_value
				Integer
				a = 0
				b = 100}
			if (<random_value> < 25)
				CCam_DoMorph <...> FOV = 62 time = <camera_time>
				zooming = true
			endif
			if (<random_value> > 95)
				CCam_DoMorph <...> FOV = 78 time = <camera_time>
				zooming = true
			endif
		endif
		if (<type> = mid)
			GetRandomValue \{name = random_value
				Integer
				a = 0
				b = 100}
			if (<random_value> < 5)
				CCam_DoMorph <...> FOV = 64 time = <camera_time>
				zooming = true
			endif
			if (<random_value> > 85)
				CCam_DoMorph <...> FOV = 82 time = <camera_time>
				zooming = true
			endif
		endif
	endif
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = 0.24000001
		amplitudeRotation = -0.38400003
	endif
	CameraCuts_SetHandCamParams <...>
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
	if GotParam \{LockToBone}
		if (<LockToBone> = bone_guitar_neck)
			show_fourx_effect
			change \{allow_4x_effect = true}
		endif
	endif
endscript

script CameraCuts_HandCamSmooth \{name = none}
	CameraCuts_CalcTime
	CCam_DoMorph <...>
	zooming = false
	if GotParam \{type}
		if (<type> = longshot)
			GetRandomValue \{name = random_value
				Integer
				a = 0
				b = 100}
			if (<random_value> < 25)
				CCam_DoMorph <...> FOV = 62 time = <camera_time>
				zooming = true
			endif
			if (<random_value> > 95)
				CCam_DoMorph <...> FOV = 78 time = <camera_time>
				zooming = true
			endif
		endif
		if (<type> = mid)
			GetRandomValue \{name = random_value
				Integer
				a = 0
				b = 100}
			if (<random_value> < 5)
				CCam_DoMorph <...> FOV = 64 time = <camera_time>
				zooming = true
			endif
			if (<random_value> > 85)
				CCam_DoMorph <...> FOV = 82 time = <camera_time>
				zooming = true
			endif
		endif
	endif
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = 0.05
		amplitudeRotation = -0.08
	endif
	CameraCuts_SetHandCamParams <...>
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_TwoCam 
	if GotParam \{UseHandCam}
		CameraCuts_SetHandCamParams \{amplitudePosition = 0.24000001
			amplitudeRotation = -0.38400003}
	endif
	if GotParam \{UseHandCamSmooth}
		CameraCuts_SetHandCamParams \{amplitudePosition = 0.05
			amplitudeRotation = -0.08}
	endif
	CameraCuts_CalcTime
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
		time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_Encore 
	CameraCuts_CalcTime
	CCam_DoMorph {
		<Cam1>
	}
	Wait \{3
		seconds}
	CCam_DoMorph {
		<Cam2>
	}
	Wait \{2.5
		seconds}
	CCam_DoMorph {
		<Cam3>
	}
	Wait \{3
		seconds}
	CCam_DoMorph {
		<Cam4>
	}
	Wait \{2
		seconds}
	CCam_DoMorph {
		<Cam5>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_Orbit 
	CameraCuts_CalcTime
	CCam_DoMorph {
		<...>
	}
	orbitangle = (3.1409998 * <orbitangle> / 180.0)
	if (<camera_time> > 0)
		CCam_Orbit axis = (0.0, 1.0, 0.0) Speed = (<orbitangle> / <camera_time>)
	endif
	CameraCuts_SetHandCamDriftOnly
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_OrbitAndMorphTwoCam 
	CameraCuts_CalcTime
	if (<camera_time> > 0)
		<orbitangle> = (3.1409998 * <orbitangle> / 180.0)
		<orbitparams> = {axis = (0.0, 1.0, 0.0) Speed = (<orbitangle> / <camera_time>)}
	endif
	CCam_DoMorph {
		<Cam1>
	}
	if (<camera_time> > 0)
		if GotParam \{DisableOrbit1}
			CCam_Orbit \{off}
		else
			CCam_Orbit <orbitparams>
		endif
	endif
	CameraCuts_SetHandCamDriftOnly
	CCam_DoMorph {
		<Cam2>
		time = <camera_time>
	}
	if (<camera_time> > 0)
		if GotParam \{DisableOrbit2}
			CCam_Orbit \{off}
		else
			CCam_Orbit <orbitparams>
		endif
	endif
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_SplineMorph 
	CameraCuts_CalcTime
	CCam_SplineMorph {
		<...>
		total_time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_SpecialStepMove 
	CCam_SetSmoothing \{type = all
		on = 1
		slow_lerp_factor = 0.7
		fast_lerp_factor = 0.7
		lerp_dropoff = 2.0}
	CameraCuts_CalcTime
	CCam_DoMorph {
		<Cam1>
	}
	CameraCuts_SetHandCamParams \{amplitudePosition = 0.0
		amplitudeRotation = -0.8}
	origpos = (<Cam1>.pos)
	diry = <StepDir>
	count = 0.0
	timestep = 0.05
	step = (<timestep> / <stepTime>)
	num_jumps = <StepNum>
	dirx = ((<Cam2>.pos) - (<Cam1>.pos))
	printf "timestep %i" i = <timestep>
	jump_multiplier = (<num_jumps> * 360.0)
	count = (<count> + <step>)
	begin
	if (<count> >= 1.0)
		break
	endif
	sin (<count> * <jump_multiplier>)
	pos = (<origpos> + <dirx> * <count> + <diry> * <sin>)
	CCam_DoMorph {
		<...>
		time = <timestep>
		motion = linear
	}
	CCam_WaitMorph
	if CameraCuts_WaitScript camera_songtime = <camera_songtime> nowait
		return
	endif
	count = (<count> + <step>)
	repeat
	CCam_DoMorph {
		<Cam2>
		time = <FinalRotTime>
		motion = smooth
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_ApplyDOF \{dof = $DOF_Medium02_tod_manager
		time = 0.0}
	dofType = <dof>
	dofParam = (<dofType>.screen_fx [0])
	if NOT ScreenFX_FxInstanceExists \{viewport = bg_viewport
			name = venue_DOF}
		ScreenFX_AddFXInstance {
			viewport = bg_viewport
			name = venue_DOF
			<dofParam>
			time = <time>
		}
	else
		ScreenFX_UpdateFXInstanceParams {
			viewport = bg_viewport
			name = venue_DOF
			<dofParam>
			time = <time>
		}
	endif
endscript

script CameraCuts_SetHandCamDriftOnly 
	CCam_EnableHandcam \{ShakeEnabled = false
		DriftEnabled = true}
	driftSlerpMap = [
		(0.1, 0.3)
		(0.2, 0.3)
	]
	if GotParam \{DriftZoneAngles}
		SetArrayElement ArrayName = driftSlerpMap index = 1 newvalue = <DriftZoneAngles>
	endif
	CCam_SetHandcamParams {
		$cinematic_camera_default_handcam_params
		driftSlerpMap = <driftSlerpMap>
	}
endscript

script CameraCuts_SetHandCamParams \{amplitudePosition = 0.01
		amplitudeRotation = -0.01}
	CCam_EnableHandcam \{ShakeEnabled = true
		DriftEnabled = true}
	CCam_SetHandcamParams {
		motionX = {
			amplitude = 0.033999998
			center = 0.0
			periodBase = 0.012999999
			periodMultiples = [
				1 , 3 , 4
			]
		}
		motionY = {
			amplitude = 0.04
			center = 0.0
			periodBase = 0.016999999
			periodMultiples = [
				1 , 3 , 4
			]
		}
		amplitudePosition = {
			amplitude = <amplitudePosition>
			center = 0.0
			periodBase = 0.0023
			periodMultiples = [
				1 , 16
			]
		}
		amplitudeRotation = {
			amplitude = <amplitudeRotation>
			center = 0.0
			periodBase = 0.0023
			periodMultiples = [
				1
			]
		}
		zoomStabilityMap = [
			(1.3, 0.7)
			(30.0, 100.0)
		]
		driftSlerpMap = [
			(0.0, 0.8)
			(0.05, 1.0)
		]
		zoomDriftMap = [
			(1.2, 0.6)
			(30.0, 100.0)
		]
		driftAllowedAmplitude = {
			amplitude = 0.4
			center = 1.0
			periodBase = 0.02
			periodMultiples = [
				1
			]
		}
	}
endscript

script CameraCuts_HandCamZoom2 
	CCam_DoMorph <...>
	zooming = false
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = 0.05
		amplitudeRotation = -0.08
	endif
	CameraCuts_SetHandCamParams <...>
	Wait \{2
		seconds}
	CCam_DoMorph <...> FOV = 50 time = 0.6 motion = smooth
	CCam_WaitMorph
	Wait \{0.1
		seconds}
	CCam_DoMorph <...> FOV = 53 time = 0.25 motion = smooth
	CCam_WaitMorph
	Wait \{0.03
		seconds}
	CCam_DoMorph <...> FOV = 51 time = 0.3 motion = smooth
	CCam_WaitMorph
	CCam_DoMorph <...> FOV = 51
	CameraCuts_CalcTime
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_QuickZoom 
	CCam_DoMorph <...>
	zooming = false
	if (<zooming> = true)
		amplitudePosition = 0.01
		amplitudeRotation = -0.01
	else
		amplitudePosition = 0.05
		amplitudeRotation = -0.08
	endif
	CameraCuts_SetHandCamParams <...>
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	Wait \{2
		seconds}
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
		time = 0.75
		motion = smooth
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
	}
	CCam_WaitMorph
	CameraCuts_CalcTime
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_Pan 
	CameraCuts_SetHandCamParams \{amplitudePosition = 0.05
		amplitudeRotation = -0.08}
	CCam_DoMorph {
		<Cam1>
		time = 0
	}
	Wait \{2
		seconds}
	CCam_DoMorph {
		<Cam2>
		time = 1
		motion = smooth
	}
	CCam_WaitMorph
	CameraCuts_CalcTime
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_ThreePos 
	CameraCuts_CalcTime
	CCam_SplineMorph {
		keyframes =
		[
			{
				<Cam1>
			}
			{
				<Cam2>
			}
			{
				<Cam3>
			}
		]
		total_time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_FourPos 
	CameraCuts_CalcTime
	CCam_SplineMorph {
		keyframes =
		[
			{
				<Cam1>
			}
			{
				<Cam2>
			}
			{
				<Cam3>
			}
			{
				<Cam4>
			}
		]
		total_time = <camera_time>
	}
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script CameraCuts_FastIntroHold 
	CameraCuts_SetHandCamParams \{amplitudePosition = 0.05
		amplitudeRotation = -0.08}
	CCam_DoMorph {
		<Cam1>
	}
	CCam_WaitMorph
	CCam_DoMorph {
		<Cam2>
		time = 1.5
		motion = smooth
	}
	CCam_WaitMorph
	CameraCuts_CalcTime
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script default_camera_aerosmith_entrance 
	CCam_DoMorph \{LockTo = world
		pos = (0.67134696, 1.0173221, 8.3327055)
		Quat = (-0.011763, -0.9972829, -0.071651004)
		FOV = 82.0}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = world
		pos = (0.71067595, 1.138438, 9.816325)
		Quat = (-0.011763, -0.9972829, -0.071651004)
		FOV = 82.0
		time = 4}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = bassist
		pos = (2.9936182, 1.3600678, 2.0988438)
		Quat = (0.096046, -0.85081804, -0.083159)
		FOV = 28.0}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = bassist
		pos = (2.9936182, 1.3600678, 2.0988438)
		Quat = (0.096046, -0.85081804, -0.083159)
		FOV = 28.0
		time = 1.5}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = Drummer
		pos = (0.156794, 1.697572, 1.8627019)
		Quat = (0.002087, 0.98201394, -0.18847503)
		FOV = 72.0}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = Drummer
		pos = (0.156794, 1.697572, 1.8627019)
		Quat = (0.002087, 0.98201394, -0.18847503)
		FOV = 72.0
		time = 1.5}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = Guitarist
		pos = (0.369664, 0.93793094, 1.2052851)
		Quat = (0.116242, -0.97601897, -0.173646)
		FOV = 63.0
		LookAt = Guitarist
		LookAtBone = Bone_Chest
		ScreenOffset = (-0.35383105, 0.278159)}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = Guitarist
		pos = (0.369664, 0.93793094, 1.2052851)
		Quat = (0.116242, -0.97601897, -0.173646)
		FOV = 63.0
		LookAt = Guitarist
		LookAtBone = Bone_Chest
		ScreenOffset = (-0.35383105, 0.278159)
		time = 2}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = vocalist
		pos = (-0.013245, 1.287552, 2.5607681)
		Quat = (0.100522, 0.994561, 0.019)
		FOV = 48.0
		LookAt = vocalist
		LookAtBone = Bone_Chest
		ScreenOffset = (0.255681, 0.201958)}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = vocalist
		pos = (-0.013245, 1.287552, 2.5607681)
		Quat = (0.100522, 0.994561, 0.019)
		FOV = 48.0
		LookAt = vocalist
		LookAtBone = Bone_Chest
		ScreenOffset = (0.255681, 0.201958)
		time = 2}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = world
		pos = (0.71067595, 1.138438, 9.816325)
		Quat = (-0.011763, -0.9972829, -0.071651004)
		FOV = 82.0}
	CCam_WaitMorph
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript

script default_camera_boss 
	CCam_DoMorph \{LockTo = bassist
		pos = (0.415953, 0.67239296, 0.951549)
		Quat = (0.060255, -0.9329389, 0.29930598)
		FOV = 72.0}
	CameraCuts_SetHandCamParams \{amplitudePosition = 0.2
		amplitudeRotation = -0.32000002}
	CCam_WaitMorph
	Wait \{0.65000004
		seconds}
	CCam_DoMorph \{LockTo = bassist
		pos = (0.415953, 0.67239296, 0.951549)
		Quat = (0.060255, -0.9329389, 0.29930598)
		FOV = 72.0}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = bassist
		pos = (0.49457502, 1.167327, 1.1275209)
		Quat = (-0.01335, -0.977757, -0.060676996)
		FOV = 72.0
		time = 3}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = bassist
		pos = (0.49457502, 1.167327, 1.1275209)
		Quat = (-0.01335, -0.977757, -0.060676996)
		FOV = 72.0}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = bassist
		pos = (0.495756, 1.1663411, 1.12688)
		Quat = (-0.013029, -0.97811204, -0.058653)
		FOV = 80.0
		time = 3}
	CCam_WaitMorph
	CCam_DoMorph \{LockTo = bassist
		pos = (0.495756, 1.1663411, 1.12688)
		Quat = (-0.013029, -0.97811204, -0.058653)
		FOV = 80.0}
	CCam_WaitMorph
	CameraCuts_WaitScript camera_songtime = <camera_songtime>
endscript
Default_Cameras_Good = [
	{
		name = good_from_stage
		Play_hold = 1
		LockTo = Guitarist
		pos = (1.5175159, 4.1361775, -4.089658)
		Quat = (0.130047, -0.018706, 0.0024160002)
		FOV = 72.0
	}
]
Default_Cameras_Normal = [
	{
		name = normal_crowd_center
		Play_hold = 1
		LockTo = Guitarist
		pos = (5.108431, 1.485993, 13.082112)
		Quat = (0.0025400002, -0.9918739, 0.019756)
		FOV = 72.0
	}
]
Default_Cameras_Poor = [
	{
		name = poor_crowd_center
		Play_hold = 1
		LockTo = Guitarist
		pos = (-1.573781, 1.4759071, 20.610792)
		Quat = (-0.00064900005, 0.998182, 0.010279999)
		FOV = 72.0
	}
]
Default_cameras = [
	{
		name = CLOSEUP_01
		type = CloseUp
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-0.17172, 1.7125509, 3.530145)
				Quat = (0.030365998, 0.969155, -0.15807201)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-0.192414, 0.92213994, 3.5821917)
				Quat = (-0.0016310001, 0.98192793, 0.008088)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
	}
]
Default_cameras_longshot = [
	{
		name = LONGSHOT_High01
		type = LONGSHOT_High
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.57198894, 3.954246, 25.20223)
				Quat = (-0.000391, -0.9862749, 0.165061)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.45701203, 3.954003, 25.201323)
				Quat = (-0.000391, -0.9862749, 0.165061)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = LONGSHOT_Low01
		type = LONGSHOT_Low
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-1.2919222, -0.24732801, 26.979486)
				Quat = (0.002151, 0.99731797, -0.07157)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-1.5034659, -0.24687901, 26.973026)
				Quat = (0.002151, 0.99731797, -0.07157)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_mid = [
	{
		name = MID_High01
		type = MID_High
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.49241504, 5.681637, 15.161047)
				Quat = (0.003945, 0.96217096, -0.27223304)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.358149, 5.6813536, 15.163934)
				Quat = (0.003945, 0.96217096, -0.27223304)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_High02
		type = MID_High
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.49241504, 5.681637, 15.161047)
				Quat = (0.003945, 0.96217096, -0.27223304)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.358149, 5.6813536, 15.163934)
				Quat = (0.003945, 0.96217096, -0.27223304)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_Low01
		type = MID_Low
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.238645, 1.380729, 16.519836)
				Quat = (0.002289, 0.993116, -0.116648)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.395918, 1.381063, 16.516504)
				Quat = (0.002289, 0.993116, -0.116648)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = MID_Orbit_CCW01
			type = MID_Orbit_CCW
			LockTo = Drummer
			pos = (5.8004093, 2.342972, 15.428842)
			Quat = (0.030534998, -0.968155, 0.16403799)
			FOV = 72.0
			orbitangle = -50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = MID_Orbit_CW01
			type = MID_Orbit_CW
			LockTo = Drummer
			pos = (-3.629889, 2.363242, 15.843865)
			Quat = (0.01824, 0.9812179, -0.16114299)
			FOV = 72.0
			orbitangle = 50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_Vert_Up01
		type = MID_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (3.229095, 1.135073, 16.748884)
				Quat = (0.010959, -0.98798496, 0.109562)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (3.107956, 3.7773118, 16.177395)
				Quat = (0.020343998, -0.97472, 0.195036)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_Vert_Down01
		type = MID_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (3.107956, 3.7773118, 16.177395)
				Quat = (0.020343998, -0.97472, 0.195036)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (3.229095, 1.135073, 16.748884)
				Quat = (0.010959, -0.98798496, 0.109562)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_stage = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGE_High01
			type = STAGE_High
			LockTo = Guitarist
			pos = (-0.331379, 2.1398208, -2.9350684)
			Quat = (0.21009701, -0.053707, 0.011462)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.283846, -0.06725301)
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGE_Low01
			type = STAGE_Low
			LockTo = Guitarist
			pos = (-0.381286, 0.425256, -2.519796)
			Quat = (-0.10694, -0.058470998, -0.0063960003)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.365109, -0.27589303)
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = STAGE_Orbit_CCW01
			type = STAGE_Orbit_CCW
			LockTo = Guitarist
			pos = (-1.390305, 1.247357, -2.320251)
			Quat = (0.043256998, 0.222721, -0.009962)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.22146101, -0.058813)
			orbitangle = -50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = STAGE_Orbit_CW01
			type = STAGE_Orbit_CW
			LockTo = Guitarist
			pos = (1.1497709, 1.5669589, -2.5368068)
			Quat = (0.093412, -0.302062, 0.029615)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.118136, -0.017852)
			orbitangle = 50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = STAGE_Vert_Up01
		type = STAGE_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.89921296, 0.622014, -2.6956532)
				Quat = (-0.072645, 0.017495997, 0.001188)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.9092429, 2.642869, -2.9914842)
				Quat = (0.27269104, 0.016848, -0.0048660003)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = STAGE_Vert_Down01
		type = STAGE_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.9092429, 2.642869, -2.9914842)
				Quat = (0.27269104, 0.016848, -0.0048660003)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.89921296, 0.622014, -2.6956532)
				Quat = (-0.072645, 0.017495997, 0.001188)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_guitar = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITAR_Solo_Body01
			type = GUITAR_Solo_Body
			LockTo = Guitarist
			LockToBone = Bone_Guitar_Body
			pos = (-0.411937, 0.25536898, 0.113419)
			Quat = (0.035701, 0.765104, -0.314193)
			FOV = 69.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITAR_Solo_Neck01
			type = GUITAR_Solo_Neck
			LockTo = Guitarist
			LockToBone = bone_guitar_neck
			pos = (0.6295221, 0.141155, 0.036870994)
			Quat = (-0.515311, -0.48547202, 0.643777)
			FOV = 59.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITAR_Closeup01
			type = Guitar_CloseUp
			LockTo = Guitarist
			pos = (1.2061551, 1.830135, 2.4996212)
			Quat = (0.032743998, -0.969021, 0.16408199)
			FOV = 23.0
			LookAt = Guitarist
			LookAtBone = Bone_Guitar_Body
			ScreenOffset = (-0.308609, -0.110810995)
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_guitarist = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITARIST_Medium01
			type = GUITARIST_Medium
			LockTo = Guitarist
			pos = (0.568493, 1.413887, 2.069787)
			Quat = (0.023573, -0.96751004, 0.103691004)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.338886, -0.30280703)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITARIST_CloseUp01
			type = guitarist_closeup
			LockTo = Guitarist
			pos = (0.61056405, 1.2063072, 0.73351)
			Quat = (-0.011779, -0.937494, -0.029049)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Head
			ScreenOffset = (0.19106, -0.425305)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = GUITARIST_Orbit_CCW01
			type = GUITARIST_Orbit_CCW
			LockTo = Guitarist
			pos = (0.568493, 1.413887, 2.069787)
			Quat = (0.017220998, -0.98019695, 0.108353004)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.12937102, -0.33291003)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = GUITARIST_Orbit_CW01
			type = GUITARIST_Orbit_CW
			LockTo = Guitarist
			pos = (-1.046432, 1.384884, 1.9220159)
			Quat = (0.029545998, 0.958008, -0.102428995)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.24229202, -0.33644602)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = GUITARIST_Vert_Up01
		type = GUITARIST_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.488286, 0.30742103, 2.617984)
				Quat = (-0.016588999, -0.98285997, -0.09915401)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.59022295, 2.1093469, 2.9224093)
				Quat = (0.040925, -0.95809203, 0.201243)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = GUITARIST_Vert_Down01
		type = GUITARIST_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.59022295, 2.1093469, 2.9224093)
				Quat = (0.040925, -0.95809203, 0.201243)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.488286, 0.30742103, 2.617984)
				Quat = (-0.016588999, -0.98285997, -0.09915401)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
default_cameras_singer = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = SINGER_Medium01
			type = SINGER_Medium
			LockTo = vocalist
			pos = (0.76937497, 1.058248, 2.108929)
			Quat = (0.0024680002, -0.975066, 0.015652)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.38290703, -0.371808)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = SINGER_CloseUp01
			type = singer_closeup
			LockTo = vocalist
			pos = (0.51758003, 1.618211, 0.616831)
			Quat = (0.012169001, -0.9712839, 0.055753)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Head
			ScreenOffset = (0.417869, -0.345862)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = SINGER_Orbit_CCW01
			type = SINGER_Orbit_CCW
			LockTo = vocalist
			pos = (1.064897, 1.4607079, 1.941088)
			Quat = (0.02007, -0.96802, 0.087443)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.230507, -0.35726503)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = SINGER_Orbit_CW01
			type = SINGER_Orbit_CW
			LockTo = vocalist
			pos = (-0.99324894, 1.5038509, 1.7319051)
			Quat = (0.032038998, 0.937449, -0.086307)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.298856, -0.31489903)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = SINGER_Vert_Up01
		type = SINGER_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = vocalist
				pos = (0.20753399, 0.27587602, 2.459351)
				Quat = (-0.017328998, -0.9836369, -0.119853005)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = vocalist
				pos = (0.264459, 2.7206302, 2.661429)
				Quat = (0.038757, -0.95208496, 0.26838097)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = SINGER_Vert_Down01
		type = SINGER_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = vocalist
				pos = (0.264459, 2.7206302, 2.661429)
				Quat = (0.038757, -0.95208496, 0.26838097)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = vocalist
				pos = (0.20753399, 0.27587602, 2.459351)
				Quat = (-0.017328998, -0.9836369, -0.119853005)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
default_cameras_drummer = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = DRUMMER_Medium01
			type = DRUMMER_Medium
			LockTo = Drummer
			pos = (0.222421, 1.513564, 2.327249)
			Quat = (0.013893999, -0.983884, 0.147923)
			FOV = 72.0
			LookAt = Drummer
			LookAtBone = Bone_Chest
			ScreenOffset = (0.224311, -0.229782)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = DRUMMER_CloseUp01
			type = drummer_closeup
			LockTo = Drummer
			pos = (-0.20566, 1.3390739, 1.4644548)
			Quat = (0.012424001, 0.98862296, -0.102515)
			FOV = 72.0
			LookAt = Drummer
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.061589997, 0.036165)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = DRUMMER_Orbit_CCW01
			type = DRUMMER_Orbit_CCW
			LockTo = Drummer
			pos = (1.1982142, 2.287699, 2.516386)
			Quat = (0.071181, -0.927455, 0.27218598)
			FOV = 72.0
			LookAt = Drummer
			LookAtBone = Bone_Chest
			ScreenOffset = (0.17088601, -0.39122102)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = DRUMMER_Orbit_CW01
			type = DRUMMER_Orbit_CW
			LockTo = Drummer
			pos = (-1.033128, 2.2700999, 2.4955552)
			Quat = (0.067911, 0.93188894, -0.276048)
			FOV = 72.0
			LookAt = Drummer
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.10158, -0.42090502)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = DRUMMER_Vert_Up01
		type = DRUMMER_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.200713, 0.22366, 2.602559)
				Quat = (-0.019181, 0.97748697, 0.11121701)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.24826102, 1.752702, 2.738014)
				Quat = (0.038087, 0.9626029, -0.20308802)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = DRUMMER_Vert_Down01
		type = DRUMMER_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.24826102, 1.752702, 2.738014)
				Quat = (0.038087, 0.9626029, -0.20308802)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.200713, 0.22366, 2.602559)
				Quat = (-0.019181, 0.97748697, 0.11121701)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
default_cameras_bassist = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = BASSIST_Medium01
			type = BASSIST_Medium
			LockTo = bassist
			pos = (-0.44130397, 1.5022471, 2.1888866)
			Quat = (0.015552999, 0.97714204, -0.070612)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.35030103, -0.33996502)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = BASSIST_CloseUp01
			type = bassist_closeup
			LockTo = bassist
			pos = (-0.0051089996, 1.621796, 1.1483951)
			Quat = (0.0064429995, 0.9916849, -0.044035)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.40118998, 0.14046001)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = BASSIST_Orbit_CCW01
			type = BASSIST_Orbit_CCW
			LockTo = bassist
			pos = (0.474889, 1.3453529, 2.0212908)
			Quat = (0.003438, -0.97328895, 0.019135999)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.36560303, -0.251627)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = BASSIST_Orbit_CW01
			type = BASSIST_Orbit_CW
			LockTo = bassist
			pos = (-1.410602, 1.3496668, 1.465308)
			Quat = (0.0070640002, 0.950463, -0.018121999)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.161898, -0.25292102)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = BASSIST_Vert_Up01
		type = BASSIST_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = bassist
				pos = (0.858407, 0.2837, 2.433893)
				Quat = (-0.0040740003, -0.99326897, -0.11267199)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = bassist
				pos = (0.883989, 3.015893, 2.6785629)
				Quat = (0.00117, -0.95310104, 0.302564)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = BASSIST_Vert_Down01
		type = BASSIST_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = bassist
				pos = (0.883989, 3.015893, 2.6785629)
				Quat = (0.00117, -0.95310104, 0.302564)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = bassist
				pos = (0.858407, 0.2837, 2.433893)
				Quat = (-0.0040740003, -0.99326897, -0.11267199)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
Default_cameras_rhythm = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = RHYTHM_Medium01
			type = RHYTHM_Medium
			LockTo = world
			pos = (-2.303154, 0.764982, 4.8603663)
			Quat = (-0.012736999, 0.9809339, 0.112639)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.40689602, -0.21984601)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = RHYTHM_CloseUp01
			type = RHYTHM_CloseUp
			LockTo = world
			pos = (-1.700512, 0.235937, 4.5619025)
			Quat = (-0.074879, -0.929315, -0.231359)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (0.39920303, -0.28451303)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = RHYTHM_Orbit_CCW01
			type = RHYTHM_Orbit_CCW
			LockTo = bassist
			pos = (-0.8169869, 1.8065109, 1.984302)
			Quat = (0.049500998, 0.95019, -0.207611)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.087603, -0.23554099)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = RHYTHM_Orbit_CW01
			type = RHYTHM_Orbit_CW
			LockTo = bassist
			pos = (-0.8169869, 1.8065109, 1.984302)
			Quat = (0.049500998, 0.95019, -0.207611)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.087603, -0.23554099)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = RHYTHM_Vert_Up01
		type = RHYTHM_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-0.17172, 1.7125509, 3.530145)
				Quat = (0.030365998, 0.969155, -0.15807201)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-0.192414, 0.92213994, 3.5821917)
				Quat = (-0.0016310001, 0.98192793, 0.008088)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = RHYTHM_Vert_Down01
		type = RHYTHM_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-0.17172, 1.7125509, 3.530145)
				Quat = (0.030365998, 0.969155, -0.15807201)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-0.192414, 0.92213994, 3.5821917)
				Quat = (-0.0016310001, 0.98192793, 0.008088)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
default_cameras_dolly = [
	{
		name = DOLLY_Rear_L01
		type = DOLLY_Rear_L
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-4.226099, 2.76196, -2.4963582)
				Quat = (0.216053, 0.382162, -0.092458)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.834532, 2.6632998, -3.10608)
				Quat = (0.19763198, -0.258669, 0.054020002)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = DOLLY_Rear_R01
		type = DOLLY_Rear_R
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.834532, 2.6632998, -3.10608)
				Quat = (0.19763198, -0.258669, 0.054020002)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-4.226099, 2.76196, -2.4963582)
				Quat = (0.216053, 0.382162, -0.092458)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = DOLLY_Front_L01
		type = DOLLY_Front_L
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (1.881293, 2.3065019, 4.1567903)
				Quat = (0.054615, -0.940841, 0.18255)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-3.5599792, 2.2152371, 4.445907)
				Quat = (0.034560997, 0.964024, -0.15983601)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = DOLLY_Front_R01
		type = DOLLY_Front_R
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-3.5599792, 2.2152371, 4.445907)
				Quat = (0.034560997, 0.964024, -0.15983601)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (1.881293, 2.3065019, 4.1567903)
				Quat = (0.054615, -0.940841, 0.18255)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_pan = [
	{
		name = PAN_Guitarist_Singer01
		type = PAN_Guitarist_Singer
		controlscript = CameraCuts_Pan
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.221304, 1.2147759, 1.6710881)
				Quat = (-1E-06, 0.99944097, -0.006206)
				FOV = 62.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (-0.42091504, 0.147356)
			}
			Cam2 = {
				LockTo = vocalist
				pos = (2.1242719, 1.214955, 1.3240658)
				Quat = (0.0031050001, -0.880311, 0.0054469993)
				FOV = 62.0
				LookAt = vocalist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.358489, -0.170862)
			}
		}
		dof = $DOF_CloseUp01_tod_manager
	}
	{
		name = PAN_Singer_Guitarist01
		type = PAN_Singer_Guitarist
		controlscript = CameraCuts_Pan
		params = {
			Cam1 = {
				LockTo = vocalist
				pos = (2.1242719, 1.214955, 1.3240658)
				Quat = (0.0031050001, -0.880311, 0.0054469993)
				FOV = 62.0
				LookAt = vocalist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.358489, -0.170862)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.221304, 1.2147759, 1.6710881)
				Quat = (-1E-06, 0.99944097, -0.006206)
				FOV = 62.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (-0.42091504, 0.147356)
			}
		}
		dof = $DOF_CloseUp01_tod_manager
	}
]
default_cameras_zoom = [
	{
		name = ZOOM_Out_Slow01
		type = ZOOM_Out_Slow
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = ZOOM_Out_Fast01
		type = ZOOM_Out_Fast
		controlscript = CameraCuts_QuickZoom
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
		}
		dof = $DOF_Medium02_tod_manager
	}
	{
		name = ZOOM_In_Slow01
		type = ZOOM_In_Slow
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = ZOOM_In_Fast01
		type = ZOOM_In_Fast
		controlscript = CameraCuts_QuickZoom
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
		}
		dof = $DOF_Medium02_tod_manager
	}
]
default_cameras_special = [
	{
		name = special01
		type = SPECIAL_A
		controlscript = CameraCuts_ThreePos
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (7.91994, 4.0722446, 15.780664)
				Quat = (0.043356, -0.954315, 0.156901)
				FOV = 52.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (4.605281, 1.9775009, 9.89547)
				Quat = (0.037202, -0.957874, 0.13346401)
				FOV = 52.0
			}
			Cam3 = {
				LockTo = Guitarist
				pos = (1.5902342, 1.2208471, 4.5518465)
				Quat = (0.016259, -0.9656329, 0.053746)
				FOV = 52.0
			}
		}
	}
	{
		controlscript = CameraCuts_OrbitAndMorphTwoCam
		params = {
			name = special02
			type = SPECIAL_B
			orbitangle = 90
			Cam1 = {
				LockTo = Guitarist
				pos = (-3.7134671, 1.561098, 5.2489767)
				Quat = (0.022261, 0.94396603, -0.111006)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-1.6345519, 0.98434895, 2.433505)
				Quat = (-0.013397, 0.950469, -0.0021470003)
				FOV = 72.0
			}
		}
	}
	{
		controlscript = CameraCuts_OrbitAndMorphTwoCam
		params = {
			name = Special03
			type = SPECIAL_C
			orbitangle = -40
			Cam1 = {
				LockTo = Guitarist
				pos = (2.1238008, 3.287695, 5.0177402)
				Quat = (0.076614, -0.92003894, 0.22002399)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.615803, 1.9095379, 2.403839)
				Quat = (0.043414995, -0.957317, 0.186884)
				FOV = 72.0
			}
		}
	}
	{
		controlscript = CameraCuts_SpecialStepMove
		params = {
			name = Special04
			type = SPECIAL_D
			Cam1 = {
				LockTo = Guitarist
				pos = (3.3718438, 1.241465, 7.8585925)
				Quat = (0.017955, -0.950063, 0.048733)
				FOV = 52.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (3.3718438, 1.241465, 7.8585925)
				Quat = (0.017955, -0.950063, 0.048733)
				FOV = 52.0
			}
			stepTime = 6.0
			FinalRotTime = 1.0
			StepNum = 6.0
			StepDir = (0.0, 0.07, 0.05)
			dof = $DOF_Off_tod_manager
		}
	}
]
Default_cameras_mocap = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP01
			type = MOCAP
			LockTo = Guitarist
			pos = (-0.24607702, 3.316178, 0.92423993)
			Quat = (0.021933999, 0.868847, -0.49323303)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP02
			type = MOCAP
			LockTo = vocalist
			pos = (0.0024010001, 3.3782017, 1.199096)
			Quat = (0.009012999, 0.84305805, -0.53760797)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP03
			type = MOCAP
			LockTo = bassist
			pos = (-0.0057200002, 3.355163, 2.1156142)
			Quat = (0.008965001, 0.8438061, -0.53643596)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP04
			type = MOCAP
			LockTo = Drummer
			pos = (0.107346, 3.4477382, 1.783761)
			Quat = (0.008895, 0.84684604, -0.53162295)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_stagedive = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGEDIVER01
			type = stagediver
			LockTo = world
			pos = (0.161384, -0.255694, 7.6203847)
			Quat = (-0.019520998, 0.9806339, 0.12749502)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_audience = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = AUDIENCE01
			type = audience
			LockTo = Guitarist
			pos = (-2.8780198, 1.042694, -0.18393801)
			Quat = (0.074025996, 0.014415, -0.0029910002)
			FOV = 52.0
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_starpower = [
	{
		name = starpower
		type = starpower
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (2.58572, 1.1694639, 6.018505)
				Quat = (-0.001818, -0.97748, 0.008785)
				FOV = 72.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.33652902, -0.198419)
			}
			Cam2 = {
				LockTo = world
				pos = (2.126417, 1.151183, 5.003499)
				Quat = (-0.003998, -0.97537994, -0.0012250001)
				FOV = 104.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.43471202, -0.20290701)
			}
			dof = $DOF_CloseUp02_tod_manager
			CrowdOff
		}
	}
]
default_cameras_intro = [
	{
		name = intro
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_fastintro = [
	{
		name = fastintro
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
default_cameras_preboss = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
default_cameras_boss = [
	{
		controlscript = default_camera_boss
		dof = $DOF_Medium02_tod_manager
	}
]
default_cameras_preencore = [
	{
		name = preencore
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_preaerosmith = [
	{
		name = preaerosmith
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
default_cameras_encore = [
	{
		name = encore
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_aerosmith_entrance = [
	{
		controlscript = default_camera_aerosmith_entrance
		dof = $DOF_Medium02_tod_manager
	}
]
default_cameras_walk = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = Walk01
			type = walk
			LockTo = world
			pos = (-4.908679, -0.015424, 6.3657885)
			Quat = (-0.06930599, 0.891852, 0.112707995)
			FOV = 71.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
default_cameras_win = [
	{
		controlscript = CameraCuts_OrbitAndMorphTwoCam
		params = {
			name = win
			orbitangle = 10
			Cam1 = {
				LockTo = Guitarist
				pos = (0.206255, 0.082557, 3.0024462)
				Quat = (-0.030819999, -0.96920395, -0.1256)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.96568394, -0.40605003, 4.6806836)
				Quat = (-0.030819999, -0.96920395, -0.1256)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium02_tod_manager
		CrowdOff
	}
]
default_cameras_lose = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			name = lose
			Cam1 = {
				LockTo = world
				pos = (-1.7738701, 2.2631419, 2.070564)
				Quat = (0.19757299, 0.477018, -0.111905)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-4.2446136, 4.020077, 0.17742501)
				Quat = (0.214849, 0.45659703, -0.11555701)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_stagediver = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGEDIVER01
			type = stagediver
			LockTo = world
			pos = (-4.908679, -0.015424, 6.3657885)
			Quat = (-0.06930599, 0.891852, 0.112707995)
			FOV = 71.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
default_cameras_boss_closeup_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = Boss_CloseUp_Center
			type = Boss_CloseUp
			LockTo = world
			pos = (1.9525208, 1.3101209, 5.1531973)
			Quat = (0.000106, 0.9994329, -0.033504)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.18728602, -0.056658)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
]
default_cameras_player_closeup_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = Player_CloseUp_Center
			type = Player_CloseUp
			LockTo = world
			pos = (-1.4694958, 1.3221949, 5.2663136)
			Quat = (0.000139, 0.99899393, -0.044736)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.132887, 0.027633999)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
]
Default_cameras_2p = [
	{
		name = CLOSEUP_01
		type = CloseUp
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-0.17172, 1.7125509, 3.530145)
				Quat = (0.030365998, 0.969155, -0.15807201)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-0.192414, 0.92213994, 3.5821917)
				Quat = (-0.0016310001, 0.98192793, 0.008088)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
	}
]
Default_cameras_mid_2p = [
	{
		name = MID_High01
		type = MID_High
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.49241504, 5.681637, 15.161047)
				Quat = (0.003945, 0.96217096, -0.27223304)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.358149, 5.6813536, 15.163934)
				Quat = (0.003945, 0.96217096, -0.27223304)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_Low01
		type = MID_Low
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (-0.238645, 1.380729, 16.519836)
				Quat = (0.002289, 0.993116, -0.116648)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (-0.395918, 1.381063, 16.516504)
				Quat = (0.002289, 0.993116, -0.116648)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = MID_Orbit_CCW01
			type = MID_Orbit_CCW
			LockTo = Drummer
			pos = (5.8004093, 2.342972, 15.428842)
			Quat = (0.030534998, -0.968155, 0.16403799)
			FOV = 72.0
			orbitangle = -50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = MID_Orbit_CW01
			type = MID_Orbit_CW
			LockTo = Drummer
			pos = (-3.629889, 2.363242, 15.843865)
			Quat = (0.01824, 0.9812179, -0.16114299)
			FOV = 72.0
			orbitangle = 50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_Vert_Up01
		type = MID_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (3.229095, 1.135073, 16.748884)
				Quat = (0.010959, -0.98798496, 0.109562)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (3.107956, 3.7773118, 16.177395)
				Quat = (0.020343998, -0.97472, 0.195036)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = MID_Vert_Down01
		type = MID_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Drummer
				pos = (3.107956, 3.7773118, 16.177395)
				Quat = (0.020343998, -0.97472, 0.195036)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Drummer
				pos = (3.229095, 1.135073, 16.748884)
				Quat = (0.010959, -0.98798496, 0.109562)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_stage_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGE_High01
			type = STAGE_High
			LockTo = Guitarist
			pos = (-0.331379, 2.1398208, -2.9350684)
			Quat = (0.21009701, -0.053707, 0.011462)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.283846, -0.06725301)
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGE_Low01
			type = STAGE_Low
			LockTo = Guitarist
			pos = (-0.381286, 0.425256, -2.519796)
			Quat = (-0.10694, -0.058470998, -0.0063960003)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.365109, -0.27589303)
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = STAGE_Orbit_CCW01
			type = STAGE_Orbit_CCW
			LockTo = Guitarist
			pos = (-1.390305, 1.247357, -2.320251)
			Quat = (0.043256998, 0.222721, -0.009962)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.22146101, -0.058813)
			orbitangle = -50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = STAGE_Orbit_CW01
			type = STAGE_Orbit_CW
			LockTo = Guitarist
			pos = (1.1497709, 1.5669589, -2.5368068)
			Quat = (0.093412, -0.302062, 0.029615)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.118136, -0.017852)
			orbitangle = 50
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = STAGE_Vert_Up01
		type = STAGE_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.89921296, 0.622014, -2.6956532)
				Quat = (-0.072645, 0.017495997, 0.001188)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.9092429, 2.642869, -2.9914842)
				Quat = (0.27269104, 0.016848, -0.0048660003)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = STAGE_Vert_Down01
		type = STAGE_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.9092429, 2.642869, -2.9914842)
				Quat = (0.27269104, 0.016848, -0.0048660003)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.89921296, 0.622014, -2.6956532)
				Quat = (-0.072645, 0.017495997, 0.001188)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_guitar_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITAR_Solo_Body01
			type = GUITAR_Solo_Body
			LockTo = Guitarist
			LockToBone = Bone_Guitar_Body
			pos = (-0.411937, 0.25536898, 0.113419)
			Quat = (0.035701, 0.765104, -0.314193)
			FOV = 69.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITAR_Solo_Neck01
			type = GUITAR_Solo_Neck
			LockTo = Guitarist
			LockToBone = bone_guitar_neck
			pos = (0.6295221, 0.141155, 0.036870994)
			Quat = (-0.515311, -0.48547202, 0.643777)
			FOV = 59.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITAR_Closeup01
			type = Guitar_CloseUp
			LockTo = Guitarist
			pos = (1.2061551, 1.830135, 2.4996212)
			Quat = (0.032743998, -0.969021, 0.16408199)
			FOV = 23.0
			LookAt = Guitarist
			LookAtBone = Bone_Guitar_Body
			ScreenOffset = (-0.308609, -0.110810995)
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_guitarist_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITARIST_Medium01
			type = GUITARIST_Medium
			player = 1
			LockTo = Guitarist
			pos = (0.568493, 1.413887, 2.069787)
			Quat = (0.023573, -0.96751004, 0.103691004)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.338886, -0.30280703)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITARIST_Medium01
			type = GUITARIST_Medium
			player = 2
			LockTo = bassist
			pos = (-0.44130397, 1.5022471, 2.1888866)
			Quat = (0.015552999, 0.97714204, -0.070612)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.35030103, -0.33996502)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITARIST_CloseUp01
			type = guitarist_closeup
			player = 1
			LockTo = Guitarist
			pos = (0.61056405, 1.2063072, 0.73351)
			Quat = (-0.011779, -0.937494, -0.029049)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Head
			ScreenOffset = (0.19106, -0.425305)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = GUITARIST_CloseUp01
			type = guitarist_closeup
			player = 2
			LockTo = bassist
			pos = (-0.0051089996, 1.621796, 1.1483951)
			Quat = (0.0064429995, 0.9916849, -0.044035)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.40118998, 0.14046001)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = GUITARIST_Orbit_CCW01
			type = GUITARIST_Orbit_CCW
			player = 1
			LockTo = Guitarist
			pos = (0.568493, 1.413887, 2.069787)
			Quat = (0.017220998, -0.98019695, 0.108353004)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.12937102, -0.33291003)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = GUITARIST_Orbit_CCW01
			type = GUITARIST_Orbit_CCW
			player = 2
			LockTo = bassist
			pos = (0.474889, 1.3453529, 2.0212908)
			Quat = (0.003438, -0.97328895, 0.019135999)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.36560303, -0.251627)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = GUITARIST_Orbit_CW01
			type = GUITARIST_Orbit_CW
			player = 1
			LockTo = Guitarist
			pos = (-1.046432, 1.384884, 1.9220159)
			Quat = (0.029545998, 0.958008, -0.102428995)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.24229202, -0.33644602)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = GUITARIST_Orbit_CW01
			type = GUITARIST_Orbit_CW
			player = 2
			LockTo = bassist
			pos = (-1.410602, 1.3496668, 1.465308)
			Quat = (0.0070640002, 0.950463, -0.018121999)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.161898, -0.25292102)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = GUITARIST_Vert_Up01
		type = GUITARIST_Vert_Up
		player = 1
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.488286, 0.30742103, 2.617984)
				Quat = (-0.016588999, -0.98285997, -0.09915401)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.59022295, 2.1093469, 2.9224093)
				Quat = (0.040925, -0.95809203, 0.201243)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = GUITARIST_Vert_Up01
		type = GUITARIST_Vert_Up
		player = 2
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = bassist
				pos = (0.858407, 0.2837, 2.433893)
				Quat = (-0.0040740003, -0.99326897, -0.11267199)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = bassist
				pos = (0.883989, 3.015893, 2.6785629)
				Quat = (0.00117, -0.95310104, 0.302564)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = GUITARIST_Vert_Down01
		type = GUITARIST_Vert_Down
		player = 1
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.59022295, 2.1093469, 2.9224093)
				Quat = (0.040925, -0.95809203, 0.201243)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.488286, 0.30742103, 2.617984)
				Quat = (-0.016588999, -0.98285997, -0.09915401)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = GUITARIST_Vert_Down01
		type = GUITARIST_Vert_Down
		player = 2
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = bassist
				pos = (0.883989, 3.015893, 2.6785629)
				Quat = (0.00117, -0.95310104, 0.302564)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = bassist
				pos = (0.858407, 0.2837, 2.433893)
				Quat = (-0.0040740003, -0.99326897, -0.11267199)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
Default_cameras_singer_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = SINGER_Medium01
			type = SINGER_Medium
			LockTo = vocalist
			pos = (0.76937497, 1.058248, 2.108929)
			Quat = (0.0024680002, -0.975066, 0.015652)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.38290703, -0.371808)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = SINGER_CloseUp01
			type = singer_closeup
			LockTo = vocalist
			pos = (0.51758003, 1.618211, 0.616831)
			Quat = (0.012169001, -0.9712839, 0.055753)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Head
			ScreenOffset = (0.417869, -0.345862)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = SINGER_Orbit_CCW01
			type = SINGER_Orbit_CCW
			LockTo = vocalist
			pos = (1.064897, 1.4607079, 1.941088)
			Quat = (0.02007, -0.96802, 0.087443)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.230507, -0.35726503)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = SINGER_Orbit_CW01
			type = SINGER_Orbit_CW
			LockTo = vocalist
			pos = (-0.99324894, 1.5038509, 1.7319051)
			Quat = (0.032038998, 0.937449, -0.086307)
			FOV = 72.0
			LookAt = vocalist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.298856, -0.31489903)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = SINGER_Vert_Up01
		type = SINGER_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = vocalist
				pos = (0.20753399, 0.27587602, 2.459351)
				Quat = (-0.017328998, -0.9836369, -0.119853005)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = vocalist
				pos = (0.264459, 2.7206302, 2.661429)
				Quat = (0.038757, -0.95208496, 0.26838097)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = SINGER_Vert_Down01
		type = SINGER_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = vocalist
				pos = (0.264459, 2.7206302, 2.661429)
				Quat = (0.038757, -0.95208496, 0.26838097)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = vocalist
				pos = (0.20753399, 0.27587602, 2.459351)
				Quat = (-0.017328998, -0.9836369, -0.119853005)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
Default_cameras_bassist_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = BASSIST_Medium01
			type = BASSIST_Medium
			LockTo = bassist
			pos = (-0.44130397, 1.5022471, 2.1888866)
			Quat = (0.015552999, 0.97714204, -0.070612)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.35030103, -0.33996502)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = BASSIST_CloseUp01
			type = bassist_closeup
			LockTo = bassist
			pos = (-0.0051089996, 1.621796, 1.1483951)
			Quat = (0.0064429995, 0.9916849, -0.044035)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.40118998, 0.14046001)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = BASSIST_Orbit_CCW01
			type = BASSIST_Orbit_CCW
			LockTo = bassist
			pos = (0.474889, 1.3453529, 2.0212908)
			Quat = (0.003438, -0.97328895, 0.019135999)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.36560303, -0.251627)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = BASSIST_Orbit_CW01
			type = BASSIST_Orbit_CW
			LockTo = bassist
			pos = (-1.410602, 1.3496668, 1.465308)
			Quat = (0.0070640002, 0.950463, -0.018121999)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Chest
			ScreenOffset = (0.161898, -0.25292102)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = BASSIST_Vert_Up01
		type = BASSIST_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = bassist
				pos = (0.858407, 0.2837, 2.433893)
				Quat = (-0.0040740003, -0.99326897, -0.11267199)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = bassist
				pos = (0.883989, 3.015893, 2.6785629)
				Quat = (0.00117, -0.95310104, 0.302564)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = BASSIST_Vert_Down01
		type = BASSIST_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = bassist
				pos = (0.883989, 3.015893, 2.6785629)
				Quat = (0.00117, -0.95310104, 0.302564)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = bassist
				pos = (0.858407, 0.2837, 2.433893)
				Quat = (-0.0040740003, -0.99326897, -0.11267199)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
Default_cameras_rhythm_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = RHYTHM_Medium01
			type = RHYTHM_Medium
			LockTo = world
			pos = (-2.303154, 0.764982, 4.8603663)
			Quat = (-0.012736999, 0.9809339, 0.112639)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.40689602, -0.21984601)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = RHYTHM_CloseUp01
			type = RHYTHM_CloseUp
			LockTo = world
			pos = (-1.700512, 0.235937, 4.5619025)
			Quat = (-0.074879, -0.929315, -0.231359)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (0.39920303, -0.28451303)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = RHYTHM_Orbit_CCW01
			type = RHYTHM_Orbit_CCW
			LockTo = bassist
			pos = (-0.8169869, 1.8065109, 1.984302)
			Quat = (0.049500998, 0.95019, -0.207611)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.087603, -0.23554099)
			orbitangle = -50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_Orbit
		params = {
			name = RHYTHM_Orbit_CW01
			type = RHYTHM_Orbit_CW
			LockTo = bassist
			pos = (-0.8169869, 1.8065109, 1.984302)
			Quat = (0.049500998, 0.95019, -0.207611)
			FOV = 72.0
			LookAt = rhythm
			LookAtBone = Bone_Chest
			ScreenOffset = (-0.087603, -0.23554099)
			orbitangle = 50
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		name = RHYTHM_Vert_Up01
		type = RHYTHM_Vert_Up
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-0.17172, 1.7125509, 3.530145)
				Quat = (0.030365998, 0.969155, -0.15807201)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-0.192414, 0.92213994, 3.5821917)
				Quat = (-0.0016310001, 0.98192793, 0.008088)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
	{
		name = RHYTHM_Vert_Down01
		type = RHYTHM_Vert_Down
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (-0.17172, 1.7125509, 3.530145)
				Quat = (0.030365998, 0.969155, -0.15807201)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-0.192414, 0.92213994, 3.5821917)
				Quat = (-0.0016310001, 0.98192793, 0.008088)
				FOV = 72.0
			}
		}
		dof = $DOF_CloseUp02_tod_manager
		CrowdOff
	}
]
Default_cameras_dolly_2p = [
	{
		name = DOLLY_Rear_L01
		type = DOLLY_Rear_L
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-4.226099, 2.76196, -2.4963582)
				Quat = (0.216053, 0.382162, -0.092458)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.834532, 2.6632998, -3.10608)
				Quat = (0.19763198, -0.258669, 0.054020002)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = DOLLY_Rear_R01
		type = DOLLY_Rear_R
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.834532, 2.6632998, -3.10608)
				Quat = (0.19763198, -0.258669, 0.054020002)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-4.226099, 2.76196, -2.4963582)
				Quat = (0.216053, 0.382162, -0.092458)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = DOLLY_Front_L01
		type = DOLLY_Front_L
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (1.881293, 2.3065019, 4.1567903)
				Quat = (0.054615, -0.940841, 0.18255)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-3.5599792, 2.2152371, 4.445907)
				Quat = (0.034560997, 0.964024, -0.15983601)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = DOLLY_Front_R01
		type = DOLLY_Front_R
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-3.5599792, 2.2152371, 4.445907)
				Quat = (0.034560997, 0.964024, -0.15983601)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (1.881293, 2.3065019, 4.1567903)
				Quat = (0.054615, -0.940841, 0.18255)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_pan_2p = [
	{
		name = PAN_Guitarist_Singer01
		type = PAN_Guitarist_Singer
		controlscript = CameraCuts_Pan
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.221304, 1.2147759, 1.6710881)
				Quat = (-1E-06, 0.99944097, -0.006206)
				FOV = 62.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (-0.42091504, 0.147356)
			}
			Cam2 = {
				LockTo = vocalist
				pos = (2.1242719, 1.214955, 1.3240658)
				Quat = (0.0031050001, -0.880311, 0.0054469993)
				FOV = 62.0
				LookAt = vocalist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.358489, -0.170862)
			}
		}
		dof = $DOF_CloseUp01_tod_manager
	}
	{
		name = PAN_Singer_Guitarist01
		type = PAN_Singer_Guitarist
		controlscript = CameraCuts_Pan
		params = {
			Cam1 = {
				LockTo = vocalist
				pos = (2.1242719, 1.214955, 1.3240658)
				Quat = (0.0031050001, -0.880311, 0.0054469993)
				FOV = 62.0
				LookAt = vocalist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.358489, -0.170862)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.221304, 1.2147759, 1.6710881)
				Quat = (-1E-06, 0.99944097, -0.006206)
				FOV = 62.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (-0.42091504, 0.147356)
			}
		}
		dof = $DOF_CloseUp01_tod_manager
	}
]
Default_cameras_zoom_2p = [
	{
		name = ZOOM_Out_Slow01
		type = ZOOM_Out_Slow
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = ZOOM_Out_Fast01
		type = ZOOM_Out_Fast
		controlscript = CameraCuts_QuickZoom
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
		}
		dof = $DOF_Medium02_tod_manager
	}
	{
		name = ZOOM_In_Slow01
		type = ZOOM_In_Slow
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		name = ZOOM_In_Fast01
		type = ZOOM_In_Fast
		controlscript = CameraCuts_QuickZoom
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (0.012666, -0.979612, 0.193192)
				FOV = 52.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.303226, -0.470842)
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-0.608687, 4.565676, 12.706401)
				Quat = (-0.0014460001, 0.99146694, -0.13027)
				FOV = 7.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.37269202, 0.11745)
			}
		}
		dof = $DOF_Medium02_tod_manager
	}
]
Default_cameras_special_2p = [
	{
		name = special01
		type = SPECIAL_A
		controlscript = CameraCuts_ThreePos
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (7.91994, 4.0722446, 15.780664)
				Quat = (0.043356, -0.954315, 0.156901)
				FOV = 52.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (4.605281, 1.9775009, 9.89547)
				Quat = (0.037202, -0.957874, 0.13346401)
				FOV = 52.0
			}
			Cam3 = {
				LockTo = Guitarist
				pos = (1.5902342, 1.2208471, 4.5518465)
				Quat = (0.016259, -0.9656329, 0.053746)
				FOV = 52.0
			}
		}
	}
	{
		controlscript = CameraCuts_OrbitAndMorphTwoCam
		params = {
			name = special02
			type = SPECIAL_B
			orbitangle = 90
			Cam1 = {
				LockTo = Guitarist
				pos = (-3.7134671, 1.561098, 5.2489767)
				Quat = (0.022261, 0.94396603, -0.111006)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (-1.6345519, 0.98434895, 2.433505)
				Quat = (-0.013397, 0.950469, -0.0021470003)
				FOV = 72.0
			}
		}
	}
	{
		controlscript = CameraCuts_OrbitAndMorphTwoCam
		params = {
			name = Special03
			type = SPECIAL_C
			orbitangle = -40
			Cam1 = {
				LockTo = Guitarist
				pos = (2.1238008, 3.287695, 5.0177402)
				Quat = (0.076614, -0.92003894, 0.22002399)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.615803, 1.9095379, 2.403839)
				Quat = (0.043414995, -0.957317, 0.186884)
				FOV = 72.0
			}
		}
	}
	{
		controlscript = CameraCuts_SpecialStepMove
		params = {
			name = Special04
			type = SPECIAL_D
			Cam1 = {
				LockTo = Guitarist
				pos = (3.3718438, 1.241465, 7.8585925)
				Quat = (0.017955, -0.950063, 0.048733)
				FOV = 52.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (3.3718438, 1.241465, 7.8585925)
				Quat = (0.017955, -0.950063, 0.048733)
				FOV = 52.0
			}
			stepTime = 6.0
			FinalRotTime = 1.0
			StepNum = 6.0
			StepDir = (0.0, 0.07, 0.05)
			dof = $DOF_Off_tod_manager
		}
	}
]
Default_cameras_mocap_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP01
			type = MOCAP
			LockTo = Guitarist
			pos = (-0.24607702, 3.316178, 0.92423993)
			Quat = (0.021933999, 0.868847, -0.49323303)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP02
			type = MOCAP
			LockTo = vocalist
			pos = (0.0024010001, 3.3782017, 1.199096)
			Quat = (0.009012999, 0.84305805, -0.53760797)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP03
			type = MOCAP
			LockTo = bassist
			pos = (-0.0057200002, 3.355163, 2.1156142)
			Quat = (0.008965001, 0.8438061, -0.53643596)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = MOCAP04
			type = MOCAP
			LockTo = Drummer
			pos = (0.107346, 3.4477382, 1.783761)
			Quat = (0.008895, 0.84684604, -0.53162295)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_stagedive_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = STAGEDIVER01
			type = stagediver
			LockTo = world
			pos = (0.161384, -0.255694, 7.6203847)
			Quat = (-0.019520998, 0.9806339, 0.12749502)
			FOV = 72.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_starpower_2p = [
	{
		name = starpower
		type = starpower
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = world
				pos = (2.58572, 1.1694639, 6.018505)
				Quat = (-0.001818, -0.97748, 0.008785)
				FOV = 72.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.33652902, -0.198419)
			}
			Cam2 = {
				LockTo = world
				pos = (2.126417, 1.151183, 5.003499)
				Quat = (-0.003998, -0.97537994, -0.0012250001)
				FOV = 104.0
				LookAt = Guitarist
				LookAtBone = Bone_Chest
				ScreenOffset = (0.43471202, -0.20290701)
			}
			dof = $DOF_CloseUp02_tod_manager
			CrowdOff
		}
	}
]
Default_cameras_intro_2p = [
	{
		name = intro
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_fastintro_2p = [
	{
		name = fastintro
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_boss_2p = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_encore_2p = [
	{
		name = encore
		controlscript = CameraCuts_TwoCam
		params = {
			Cam1 = {
				LockTo = Guitarist
				pos = (0.310654, 1.548265, 5.166498)
				Quat = (0.018204998, -0.979563, 0.114463)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (2.027228, 3.356204, 10.107616)
				Quat = (0.034807995, -0.963447, 0.206313)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_walk_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = Walk01
			type = walk
			LockTo = world
			pos = (-4.908679, -0.015424, 6.3657885)
			Quat = (-0.06930599, 0.891852, 0.112707995)
			FOV = 71.0
		}
		dof = $DOF_Medium01_tod_manager
		CrowdOff
	}
]
Default_cameras_win_2p = [
	{
		controlscript = CameraCuts_OrbitAndMorphTwoCam
		params = {
			name = win
			orbitangle = 10
			Cam1 = {
				LockTo = Guitarist
				pos = (0.206255, 0.082557, 3.0024462)
				Quat = (-0.030819999, -0.96920395, -0.1256)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = Guitarist
				pos = (0.96568394, -0.40605003, 4.6806836)
				Quat = (-0.030819999, -0.96920395, -0.1256)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium02_tod_manager
		CrowdOff
	}
]
Default_cameras_lose_2p = [
	{
		controlscript = CameraCuts_TwoCam
		params = {
			name = lose
			Cam1 = {
				LockTo = world
				pos = (-1.7738701, 2.2631419, 2.070564)
				Quat = (0.19757299, 0.477018, -0.111905)
				FOV = 72.0
			}
			Cam2 = {
				LockTo = world
				pos = (-4.2446136, 4.020077, 0.17742501)
				Quat = (0.214849, 0.45659703, -0.11555701)
				FOV = 72.0
			}
		}
		dof = $DOF_Medium01_tod_manager
	}
]
Default_cameras_boss_battle_2p = [
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = PLAYER_CloseUp01
			type = Player_CloseUp
			LockTo = Guitarist
			pos = (0.61056405, 1.2063072, 0.73351)
			Quat = (-0.011779, -0.937494, -0.029049)
			FOV = 72.0
			LookAt = Guitarist
			LookAtBone = Bone_Head
			ScreenOffset = (0.19106, -0.425305)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
	{
		controlscript = CameraCuts_HandCam
		params = {
			name = BOSS_CloseUp01
			type = Boss_CloseUp
			LockTo = bassist
			pos = (-0.145081, 1.3932941, 1.119517)
			Quat = (-0.0023100001, 0.9869389, 0.020386)
			FOV = 72.0
			LookAt = bassist
			LookAtBone = Bone_Head
			ScreenOffset = (-0.36468503, -0.38086903)
		}
		dof = $DOF_CloseUp01_tod_manager
		CrowdOff
	}
]
gWinportCameraLocked = 0

script winportLockCamera 
	change \{gWinportCameraLocked = 1}
endscript

script winportUnlockCamera 
	change \{gWinportCameraLocked = 0}
endscript
