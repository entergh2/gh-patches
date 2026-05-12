lightshow_enabled = 1
lightvolume_flarecutoff_low = 0.2
lightvolume_flarecutoff_high = 0.35000002
lightvolume_flarematerialcrc = FlareMaterial_FlareMaterial
lightvolume_flaresaturate = 0.6
lightvolume_follow = {
	allowedRadius = {
		amplitude = 0.2
		center = 1.0
		periodBase = 0.0065
		periodMultiples = [
			1
			3
			4
			7
		]
	}
	driftLerpMap = [
		(0.0, 0.4)
		(0.2, 0.7)
	]
}
lightshow_spotlightoverrides = {
	fade_time = 0.5
	snapshot_names_to_search = [
		solo01
	]
	default_params = {
		StartRadius = 0.3
		EndRadius = 1.5
		InnerRadius = 0.0
		range = 7.36
		VolumeDensity = 0.6442
		ProjectorColorRed = 170.0
		ProjectorColorGreen = 170.0
		ProjectorColorBlue = 170.0
		VolumeColorRed = 255.0
		VolumeColorGreen = 255.0
		VolumeColorBlue = 255.0
	}
}
lightshow_defaultblendtime = 0.15
lightshow_coloroverrideblend = 0.4
lightshow_offset_ms = 100
lightshow_housingmodels = [
	{
		Model = 'LightHousings\\GO_NoHousing01\\GO_NoHousing01.mdl'
		clonesrc = LS_GO_NoHousing01
	}
	{
		Model = 'LightHousings\\GO_NoHousing01_Flare01\\GO_NoHousing01_Flare01.mdl'
		clonesrc = LS_GO_NoHousing01_Flare01
	}
	{
		Model = 'LightHousings\\GO_NoHousing01_SmallFlare01\\GO_NoHousing01_SmallFlare01.mdl'
		clonesrc = LS_GO_NoHousing01_SmallFlare01
	}
	{
		Model = 'LightHousings\\GO_BarnHousing01\\GO_BarnHousing01.mdl'
		clonesrc = LS_GO_BarnHousing01
	}
	{
		Model = 'LightHousings\\GO_LightHousing01\\GO_LightHousing01.mdl'
		clonesrc = LS_GO_LightHousing01
	}
	{
		Model = 'LightHousings\\GO_LightHousing01_SmallFlare01\\GO_LightHousing01_SmallFlare01.mdl'
		clonesrc = LS_GO_LightHousing01_SmallFlare01
	}
	{
		Model = 'LightHousings\\GO_LightHousing02\\GO_LightHousing02.mdl'
		clonesrc = LS_GO_LightHousing02
	}
	{
		Model = 'LightHousings\\GO_LightHousing02_SmallFlare01\\GO_LightHousing02_SmallFlare01.mdl'
		clonesrc = LS_GO_LightHousing02_SmallFlare01
	}
	{
		Model = 'LightHousings\\GO_LightHousing02_Small01\\GO_LightHousing02_Small01.mdl'
		clonesrc = LS_GO_LightHousing02_Small01
	}
	{
		Model = 'LightHousings\\GO_TankHousing01\\GO_TankHousing01.mdl'
		clonesrc = LS_GO_TankHousing01
	}
]

script LightShow_CreatePermModels 
	GetArraySize \{$lightshow_housingmodels}
	<i> = 0
	begin
	<desc> = ($lightshow_housingmodels [<i>])
	<Model> = (<desc>.Model)
	<pos> = ((-100.0, 300.0) + <i> * (0.0, 10.0))
	<src> = (<desc>.clonesrc)
	CreateCompositeObject {
		Components = [
			{
				Component = Model
				Model = <Model>
			}
		]
		params = {
			pos = <pos>
			name = <src>
		}
	}
	<src> :hide
	<src> :Obj_ForceUpdate
	<src> :Suspend
	<i> = (<i> + 1)
	repeat <array_size>
endscript

script LS_AllOff 
	KillSpawnedScript \{id = LightShow}
endscript

script LS_SetupVenueLights 
endscript

script LS_ResetVenueLights 
	LS_AllOff
	LS_KillFX
	GetPakManCurrent \{map = zones}
endscript

script LS_KillFX 
endscript
LightShow_ColorOverrides = {
	red = (255.0, 0.0, 0.0)
	Blue = (20.0, 132.0, 247.0)
	Yellow = (252.0, 227.0, 61.0)
	white = (255.0, 255.0, 255.0)
	Magenta = (240.0, 79.0, 255.0)
	green = (66.0, 228.0, 97.0)
	Purple = (162.0, 80.0, 232.0)
	Orange = (248.0, 142.0, 56.0)
}
LightShow_ColorOverrideExcludeLights = [
	Z_HOF_GFX_L_Band_Ambient01
	Z_HOF_GFX_L_Band_Guitarist_Spot01
	Z_HOF_GFX_L_Band_Up_Direct01
	Z_HOF_GFX_L_Crowd_Ambient01
	Z_HOF_GFX_L_Stage_Ambient01
	Z_HOF_GFX_L_Stage_Up_Direct01
	Z_MaxsKC_GFX_L_Ambient01
	Z_MaxsKC_GFX_L_Band_Ambient01
	Z_MaxsKC_GFX_L_Band_Guitarist_Spot01
	Z_MaxsKC_GFX_L_Band_Up_Direct01
	Z_MaxsKC_GFX_L_Crowd_Ambient01
	z_maxskc_gfx_L_Stage_Dancer_Omni01
	Z_MaxsKC_GFX_L_Stage_Up_Direct01
	z_maxskc_gfx_VC_Arcade_Omni01
	z_maxskc_gfx_VC_Bathroom_Omni01
	z_maxskc_gfx_VC_Bathroom_Omni02
	z_maxskc_gfx_VC_Corner_Omni01
	z_maxskc_gfx_VC_Exit_Omni01
	z_maxskc_gfx_VC_Exit_Omni02
	z_maxskc_gfx_VC_Fill_Omni01
	z_maxskc_gfx_VC_Neon_Omni01
	Z_MaxsKC_GFX_VC_Periph_Back_Direct01
	Z_MaxsKC_GFX_VC_Periph_Back_Direct02
	Z_Nine_lives_GFX_L_Band_Ambient01
	Z_Nine_lives_GFX_L_Band_Guitarist_Spot01
	Z_Nine_lives_GFX_L_Band_Up_Direct01
	Z_Nine_lives_GFX_L_Crowd_Ambient01
	z_nine_lives_gfx_L_NeonSigns_Ambient01
	z_nine_lives_gfx_L_Periph_Ambient01
	z_nine_lives_gfx_L_Periph_Up_Direct01
	Z_Nine_lives_GFX_L_Stage_Ambient01
	Z_Nine_lives_GFX_L_Stage_Up_Direct01
	Z_Nine_Lives_GFX_VC_Flames_Omni01
	Z_Nine_Lives_GFX_VC_Flames_Omni02
	Z_Nine_Lives_GFX_VC_Flames_Omni03
	Z_Nine_Lives_GFX_VC_Flames_Omni04
	Z_Nipmuc_GFX_L_Band_Back_Direct01
	Z_Nipmuc_GFX_L_Band_Center_Direct01
	Z_Nipmuc_GFX_L_Stage_Back_Direct01
	Z_Nipmuc_GFX_L_Stage_Center_Direct01
	Z_Nipmuc_GFX_TRG_Flare_Back01
	Z_Nipmuc_GFX_TRG_Flare_Center01
	Z_Nipmuc_GFX_TRG_Flare_Chimney01
	Z_Nipmuc_GFX_TRG_Flare_Chimney02
	Z_Nipmuc_GFX_TRG_Flare_Chimney03
	Z_Nipmuc_GFX_VC_Viewer_Ambient01
	Z_Nipmuc_GFX_VC_Viewer_Center_Direct01
	Z_Nipmuc_GFX_VC_Viewer_Left_Direct01
	Z_Nipmuc_GFX_VC_Viewer_Left_Direct02
	Z_Nipmuc_GFX_VC_Viewer_Right_Direct01
	Z_Nipmuc_GFX_VC_Viewer_Right_Direct02
	Z_Nipmuc_GFX_VC_Viewer_Up_Direct01
]
LightShow_StateNodeFlags = [
	LS_PERF_POOR
	LS_PERF_MEDIUM
	LS_PERF_GOOD
	LS_PERF_POOR_MEDIUM
	LS_PERF_MEDIUM_GOOD
	LS_PERF_POOR_MEDIUM_GOOD
	LS_PERF_POOR_NOBLACKOUT
	LS_PERF_MEDIUM_NOBLACKOUT
	LS_PERF_GOOD_NOBLACKOUT
	LS_PERF_POOR_MEDIUM_NOBLACKOUT
	LS_PERF_MEDIUM_GOOD_NOBLACKOUT
	LS_PERF_POOR_MEDIUM_GOOD_NOBLACKOUT
	LS_PERF_POOR_BLACKOUT
	LS_PERF_MEDIUM_BLACKOUT
	LS_PERF_GOOD_BLACKOUT
	LS_PERF_POOR_MEDIUM_BLACKOUT
	LS_PERF_MEDIUM_GOOD_BLACKOUT
	LS_PERF_POOR_MEDIUM_GOOD_BLACKOUT
	LS_MOOD_BLACKOUT
	LS_MOOD_FLARE
	LS_MOOD_STROBE
	LS_MOOD_SPECIAL
]
LightShow_StateNodeFlagMapping = {
	performance = {
		poor = [
			{
				LS_PERF_POOR
				1
			}
			{
				LS_PERF_POOR_MEDIUM
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD
				1
			}
			{
				LS_PERF_POOR_NOBLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_NOBLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_NOBLACKOUT
				1
			}
			{
				LS_PERF_POOR_BLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_BLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_BLACKOUT
				1
			}
		]
		medium = [
			{
				LS_PERF_POOR_MEDIUM
				1
			}
			{
				LS_PERF_MEDIUM
				1
			}
			{
				LS_PERF_MEDIUM_GOOD
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD
				1
			}
			{
				LS_PERF_POOR_MEDIUM_NOBLACKOUT
				1
			}
			{
				LS_PERF_MEDIUM_NOBLACKOUT
				1
			}
			{
				LS_PERF_MEDIUM_GOOD_NOBLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_NOBLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_BLACKOUT
				1
			}
			{
				LS_PERF_MEDIUM_BLACKOUT
				1
			}
			{
				LS_PERF_MEDIUM_GOOD_BLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_BLACKOUT
				1
			}
		]
		good = [
			{
				LS_PERF_MEDIUM_GOOD
				1
			}
			{
				LS_PERF_GOOD
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD
				1
			}
			{
				LS_PERF_MEDIUM_GOOD_NOBLACKOUT
				1
			}
			{
				LS_PERF_GOOD_NOBLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_NOBLACKOUT
				1
			}
			{
				LS_PERF_MEDIUM_GOOD_BLACKOUT
				1
			}
			{
				LS_PERF_GOOD_BLACKOUT
				1
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_BLACKOUT
				1
			}
		]
	}
	mood = {
		blackout = [
			{
				LS_MOOD_BLACKOUT
				1
			}
			{
				LS_PERF_POOR_BLACKOUT
				0
			}
			{
				LS_PERF_MEDIUM_BLACKOUT
				0
			}
			{
				LS_PERF_GOOD_BLACKOUT
				0
			}
			{
				LS_PERF_POOR_MEDIUM_BLACKOUT
				0
			}
			{
				LS_PERF_MEDIUM_GOOD_BLACKOUT
				0
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_BLACKOUT
				0
			}
		]
		flare = [
			{
				LS_MOOD_FLARE
				1
			}
			{
				LS_PERF_POOR_BLACKOUT
				0
			}
			{
				LS_PERF_MEDIUM_BLACKOUT
				0
			}
			{
				LS_PERF_GOOD_BLACKOUT
				0
			}
			{
				LS_PERF_POOR_MEDIUM_BLACKOUT
				0
			}
			{
				LS_PERF_MEDIUM_GOOD_BLACKOUT
				0
			}
			{
				LS_PERF_POOR_MEDIUM_GOOD_BLACKOUT
				0
			}
		]
		strobe = [
			{
				LS_MOOD_STROBE
				1
			}
		]
	}
}
LightShow_NoteMapping = [
	{
		MidiNote = 76
		Scr = LightShow_SetParams
		params = {
			mood = intro
		}
	}
	{
		MidiNote = 75
		Scr = LightShow_SetParams
		params = {
			mood = verse
		}
	}
	{
		MidiNote = 74
		Scr = LightShow_SetParams
		params = {
			mood = chorus
		}
	}
	{
		MidiNote = 73
		Scr = LightShow_SetParams
		params = {
			mood = solo
		}
	}
	{
		MidiNote = 72
		Scr = LightShow_SetParams
		params = {
			mood = blackout
		}
	}
	{
		MidiNote = 71
		Scr = LightShow_SetParams
		params = {
			mood = flare
		}
	}
	{
		MidiNote = 70
		Scr = LightShow_SetParams
		params = {
			mood = strobe
		}
	}
	{
		MidiNote = 69
		Scr = LightShow_OverrideColor
		params = {
			color = green
		}
	}
	{
		MidiNote = 68
		Scr = LightShow_OverrideColor
		params = {
			color = red
		}
	}
	{
		MidiNote = 67
		Scr = LightShow_OverrideColor
		params = {
			color = Blue
		}
	}
	{
		MidiNote = 66
		Scr = LightShow_OverrideColor
		params = {
			color = Yellow
		}
	}
	{
		MidiNote = 65
		Scr = LightShow_OverrideColor
		params = {
			color = white
		}
	}
	{
		MidiNote = 64
		Scr = LightShow_OverrideColor
		params = {
			color = Magenta
		}
	}
	{
		MidiNote = 63
		Scr = LightShow_OverrideColor
		params = {
			off
		}
	}
	{
		MidiNote = 62
		Scr = LightShow_OverrideColor
		params = {
			color = Orange
		}
	}
	{
		MidiNote = 61
		Scr = LightShow_OverrideColor
		params = {
			color = Purple
		}
	}
	{
		MidiNote = 60
		event = strobetoggle
		params = {
			UseSnapshotPositions = false
		}
	}
	{
		MidiNote = 58
		event = snapshotchange
		params = {
			UseSnapshotPositions = true
		}
	}
	{
		MidiNote = 57
		event = snapshotchange
		params = {
			UseSnapshotPositions = false
		}
	}
	{
		MidiNote = 56
		Scr = LightShow_PyroEvent
		params = {
		}
	}
	{
		MidiNote = 53
		Scr = LightShow_SetTime
		params = {
			time = 1.0
		}
	}
	{
		MidiNote = 52
		Scr = LightShow_SetTime
		params = {
			time = 0.9
		}
	}
	{
		MidiNote = 51
		Scr = LightShow_SetTime
		params = {
			time = 0.8
		}
	}
	{
		MidiNote = 50
		Scr = LightShow_SetTime
		params = {
			time = 0.7
		}
	}
	{
		MidiNote = 49
		Scr = LightShow_SetTime
		params = {
			time = 0.6
		}
	}
	{
		MidiNote = 48
		Scr = LightShow_SetTime
		params = {
			time = 0.5
		}
	}
	{
		MidiNote = 47
		Scr = LightShow_SetTime
		params = {
			time = 0.4
		}
	}
	{
		MidiNote = 46
		Scr = LightShow_SetTime
		params = {
			time = 0.3
		}
	}
	{
		MidiNote = 45
		Scr = LightShow_SetTime
		params = {
			time = 0.25
		}
	}
	{
		MidiNote = 44
		Scr = LightShow_SetTime
		params = {
			time = 0.2
		}
	}
	{
		MidiNote = 43
		Scr = LightShow_SetTime
		params = {
			time = 0.15
		}
	}
	{
		MidiNote = 42
		Scr = LightShow_SetTime
		params = {
			time = 0.1
		}
	}
	{
		MidiNote = 41
		Scr = LightShow_SetTime
		params = {
			time = 0.05
		}
	}
	{
		MidiNote = 40
		Scr = LightShow_SetTime
		params = {
			time = 0.0
		}
	}
	{
		MidiNote = 39
		Scr = LightShow_SetTime
		params = {
			`default`
		}
	}
]
LightShow_SharedProcessors = [
	{
		name = Poor_Generic
		ScrEnter = LightShow_Poor_Enter
		ScrEvent = LightShow_Poor_Event
		ScrExit = LightShow_Poor_Exit
	}
	{
		name = Intro_Generic
		ScrEnter = LightShow_GenericMood_Enter
		ScrEvent = LightShow_GenericMood_Event
		ScrExit = LightShow_GenericMood_Exit
	}
	{
		name = Verse_Generic
		ScrEnter = LightShow_GenericMood_Enter
		ScrEvent = LightShow_GenericMood_Event
		ScrExit = LightShow_GenericMood_Exit
	}
	{
		name = Chorus_Generic
		ScrEnter = LightShow_GenericMood_Enter
		ScrEvent = LightShow_GenericMood_Event
		ScrExit = LightShow_GenericMood_Exit
	}
	{
		name = Solo_Generic
		ScrEnter = LightShow_GenericMood_Enter
		ScrEvent = LightShow_GenericMood_Event
		ScrExit = LightShow_GenericMood_Exit
	}
	{
		name = Fail_Generic
		ScrEnter = LightShow_GenericMood_Enter
		ScrEvent = LightShow_GenericMood_Event
		ScrExit = LightShow_GenericMood_Exit
	}
	{
		name = Win_Generic
		ScrEnter = LightShow_GenericMood_Enter
		ScrEvent = LightShow_GenericMood_Event
		ScrExit = LightShow_GenericMood_Exit
	}
	{
		name = Blackout_Generic
		ScrEnter = LightShow_Blackout_Enter
		ScrEvent = LightShow_Blackout_Event
		ScrExit = LightShow_Blackout_Exit
	}
	{
		name = Flare_Generic
		ScrEnter = LightShow_Flare_Enter
		ScrEvent = LightShow_Flare_Event
		ScrExit = LightShow_Flare_Exit
	}
	{
		name = Strobe_Generic
		ScrEnter = LightShow_Strobe_Enter
		ScrEvent = LightShow_Strobe_Event
		ScrExit = LightShow_Strobe_Exit
	}
]

script lightshow_iterator 
	printf "LightShow Iterator started with time %d" d = <time_offset>
	LightShow_SetActive \{active = false}
	if ($lightshow_enabled = 0)
		printf \{"LIGHTSHOW DISABLED: By script variable"}
		return
	endif
	get_song_prefix song = <song_name>
	FormatText checksumname = event_array '%s_lightshow_notes' s = <song_prefix> AddToStringLookup
	if NOT GlobalExists name = <event_array> type = array
		printf \{"LIGHTSHOW DISABLED: No midi events found for this song"}
		return
	endif
	if NOT LightShow_InitEventMappings <...>
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
			TimeMarkerReached_SetParams time_offset = <time_offset> array = <event_array> array_entry = <array_entry> ArrayOfArrays
			begin
			LightShow_Update
			if TimeMarkerReached
				GetSongTimeMs time_offset = <time_offset>
				break
			endif
			Wait \{1
				gameframe}
			repeat
			TimeMarkerReached_ClearParams
			if LightShow_BeginProcessBlock {time = ($<event_array> [<array_entry>] [0])
					note = ($<event_array> [<array_entry>] [1])
					length = ($<event_array> [<array_entry>] [2])}
				switch <process_mode>
					case event
					LightShow_PassEvent
					case Scr
					<eventscr> <eventparams>
				endswitch
				LightShow_EndProcessBlock
			endif
			<array_entry> = (<array_entry> + 1)
			repeat <array_size>
		endif
	endif
endscript

script LightShow_PyroEvent 
	if LightShow_GetPyroScript
		LightShow_GetParams
		<Pyro_Script> performance = <performance>
	else
		printf \{"pyro!"}
	endif
endscript

script LightShow_Poor_Enter 
	LightShow_CycleNextSnapshot \{UseSnapshotPositions = true
		save = true}
endscript

script LightShow_Poor_Exit 
endscript

script LightShow_Poor_Event 
	begin
	LightShow_WaitForNextEvent \{events = [
			snapshotchange
		]}
	repeat
endscript

script LightShow_GenericMood_Enter 
	LightShow_CycleNextSnapshot \{UseSnapshotPositions = true
		save = true}
endscript

script LightShow_GenericMood_Exit 
endscript

script LightShow_GenericMood_Event 
	begin
	LightShow_WaitForNextEvent \{events = [
			snapshotchange
		]}
	LightShow_CycleNextSnapshot UseSnapshotPositions = <UseSnapshotPositions> save = true
	repeat
endscript

script LightShow_Blackout_Enter 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_soundcheck
		case z_training
		case z_viewer
		LightShow_AppendSnapshotParams \{intensity = 0.25
			SpecularIntensity = 0.25}
	endswitch
	LightShow_CycleNextSnapshot \{save = false
		UseSnapshotPositions = true}
endscript

script LightShow_Blackout_Event 
endscript

script LightShow_Blackout_Exit 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_soundcheck
		case z_training
		case z_viewer
		LightShow_AppendSnapshotParams \{Clear}
	endswitch
endscript

script LightShow_Flare_Enter 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_soundcheck
		case z_training
		case z_viewer
		LightShow_AppendSnapshotParams \{intensity = 0.25
			SpecularIntensity = 0.25}
	endswitch
	LightShow_CycleNextSnapshot \{save = false
		UseSnapshotPositions = true}
endscript

script LightShow_Flare_Event 
endscript

script LightShow_Flare_Exit 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_soundcheck
		case z_training
		case z_viewer
		LightShow_AppendSnapshotParams \{Clear}
	endswitch
endscript

script LightShow_Strobe_Enter 
	LightShow_SetTime \{enable = false}
endscript

script LightShow_Strobe_Event 
	LightShow_GetParams
	<original_snapshot> = <previous_snapshot>
	begin
	LightShow_CycleNextSnapshot \{UseSnapshotPositions = false
		save = false}
	LightShow_WaitForNextEvent \{events = [
			strobetoggle
		]}
	LightShow_AppendSnapshotParams \{intensity = 1.0}
	if GotParam \{original_snapshot}
		LightShow_PlaySnapshot name = <original_snapshot> save = false UseSnapshotPositions = false
	else
		LightShow_CycleNextSnapshot \{UseSnapshotPositions = false
			save = true}
	endif
	LightShow_WaitForNextEvent \{events = [
			strobetoggle
		]}
	repeat
endscript

script LightShow_Strobe_Exit 
	LightShow_AppendSnapshotParams \{Clear}
	LightShow_SetTime \{enable = true}
endscript

script LightShow_AddNodeFlags 
	GetArraySize \{$LightShow_StateNodeFlags}
	<i> = 0
	begin
	CreateNodeFlag ($LightShow_StateNodeFlags [<i>])
	<i> = (<i> + 1)
	repeat <array_size>
	CreateNodeFlag \{LS_ALWAYS}
	CreateNodeFlag \{LS_3_5_PRE}
	CreateNodeFlag \{LS_3_5_POST}
	CreateNodeFlag \{LS_ENCORE_PRE}
	CreateNodeFlag \{LS_ENCORE_POST}
	CreateNodeFlag \{LS_SPOTLIGHT_GUITARIST}
	CreateNodeFlag \{LS_SPOTLIGHT_BASSIST}
	CreateNodeFlag \{LS_PERRY_MIC}
endscript

script LightShow_InitEventMappings 
	LightShow_AppendSnapshotParams \{Clear}
	LightShow_OverrideColor \{off}
	LightShow_SetTime \{`default`
		enable = true}
	ChangeNodeFlag \{LS_SPOTLIGHT_GUITARIST
		1}
	if ($current_num_players = 1)
		ChangeNodeFlag \{LS_SPOTLIGHT_BASSIST
			0}
	else
		ChangeNodeFlag \{LS_SPOTLIGHT_BASSIST
			1}
	endif
	GetPakManCurrentName \{map = zones}
	FormatText checksumname = event_struct '%s_lightshow_mapping' s = <pakname> AddToStringLookup
	FormatText checksumname = snapshot_struct '%s_snapshots' s = <pakname> AddToStringLookup
	FormatText checksumname = processors_struct '%s_lightshow_processors' s = <pakname> AddToStringLookup
	if NOT GlobalExists name = <event_struct> type = Structure
		printf \{"LIGHTSHOW DISABLED: No event mapping found for this venue"}
		printstruct <...>
		return \{false}
	endif
	if NOT GlobalExists name = <snapshot_struct> type = Structure
		printf \{"LIGHTSHOW DISABLED: No snapshots found for this venue"}
		printstruct <...>
		return \{false}
	endif
	if GlobalExists name = <processors_struct> type = array
		printf \{"LIGHTSHOW: Adding venue processor definitions"}
		LightShow_SetProcessors venue = $<processors_struct>
	endif
	LightShow_SetMapping ($<event_struct>)
	LightShow_SetActive \{active = true}
	LightShow_SetParams {
		performance = medium
		mood = intro
		VenueSnapshots = $<snapshot_struct>
	}
	LightShow_RefreshSpotlightOverrideParams
	if NOT ($debug_forcescore = off)
		CrowdIncrease \{player_status = player1_status}
	endif
	return \{true}
endscript

script LightShow_Shutdown 
	printf \{"LightShow_Shutdown starting"}
	LightShow_SetActive \{active = false}
	LightShow_SetProcessors \{Clear}
	LightShow_SetMapping \{Clear}
	KillSpawnedScript \{name = lightshow_iterator}
	KillSpawnedScript \{id = LightShow}
	KillSpawnedScript \{id = ScreenFlash}
	printf \{"LightShow_Shutdown finished"}
endscript

script Kill_LightShow_FX 
	GetPakManCurrent \{map = zones}
	switch <pak>
		case z_wikker
		DestroyParticlesByGroupID \{groupID = Z_Wikker_FX}
		DeleteTeslaEffectObject \{name = Z_Wikker_TeslaFX11}
		DeleteTeslaEffectObject \{name = Z_Wikker_TeslaFX12}
		DeleteTeslaEffectObject \{name = Z_Wikker_TeslaFX13}
		DeleteTeslaEffectObject \{name = Z_Wikker_TeslaFX21}
		DeleteTeslaEffectObject \{name = Z_Wikker_TeslaFX22}
		DeleteTeslaEffectObject \{name = Z_Wikker_TeslaFX23}
		DeleteTeslaEffectObject \{name = Z_Wikker_Encore_TeslaFX1}
		DeleteTeslaEffectObject \{name = Z_Wikker_Encore_TeslaFX2}
		DeleteTeslaEffectObject \{name = Z_Wikker_Encore_TeslaFX3}
	endswitch
endscript

script LightShow_WaitAndEnableSpotlights 
	RequireParams \{[
			enable
			time
		]
		all}
	printf "LightShow - spotlight toggle %s" s = <enable>
	Wait <time> seconds
	LightShow_EnableSpotlights <enable>
endscript

script Venue_PulseOnEvents \{amount = 1.12
		time = 0.1}
	if GotParam \{delay}
		RequireParams \{[
				events
			]
			all}
		Obj_EnableScaling
		Obj_GetScaling
		<start_scale> = <scaling>
		<end_scale> = (<scaling> * <amount>)
		begin
		Block anytypes = <events>
		Wait <delay> seconds
		Obj_ApplyScaling scale = <end_scale>
		Wait \{1
			gameframes}
		Obj_MorphScaling target_scale = <start_scale> blend_duration = <time>
		repeat
	else
		AddPulseEvent events = <events> amount = <amount> time = <time>
	endif
endscript

script Venue_PulseGreen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
		]}
endscript

script Venue_PulseRed 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Red
		]}
endscript

script Venue_PulseYellow 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Yellow
		]}
endscript

script Venue_PulseBlue 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Blue
		]}
endscript

script Venue_PulseOrange 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Orange
		]}
endscript

script Venue_PulseOpen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
endscript

script Venue_PulseDrumLeft 
	SetSpawnInstanceLimits \{max = 2
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			DrumKick_Left
		]
		amount = 1.1
		delay = $drum_kick_anim_delay}
endscript

script Venue_PulseDrumRight 
	SetSpawnInstanceLimits \{max = 2
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			DrumKick_Right
		]
		amount = 1.1
		delay = $drum_kick_anim_delay}
endscript

script Venue_PulseDrumBoth 
	SetSpawnInstanceLimits \{max = 4
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			DrumKick_Left
			DrumKick_Right
		]
		amount = 1.1
		delay = $drum_kick_anim_delay}
endscript

script Venue_PulseAny 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
			HitNote_Red
			HitNote_Yellow
			HitNote_Blue
			HitNote_Orange
		]}
endscript

script Venue_PulseGreenRed 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
			HitNote_Red
		]}
endscript

script Venue_PulseGreenYellow 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
			HitNote_Yellow
		]}
endscript

script Venue_PulseGreenBlue 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
			HitNote_Blue
		]}
endscript

script Venue_PulseGreenOrange 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
			HitNote_Orange
		]}
endscript

script Venue_PulseGreenOpen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Green
		]}
endscript

script Venue_PulseRedYellow 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Red
			HitNote_Yellow
		]}
endscript

script Venue_PulseRedBlue 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Red
			HitNote_Blue
		]}
endscript

script Venue_PulseRedOrange 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Red
			HitNote_Orange
		]}
endscript

script Venue_PulseRedOpen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Red
		]}
endscript

script Venue_PulseYellowBlue 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Yellow
			HitNote_Blue
		]}
endscript

script Venue_PulseYellowOrange 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Yellow
			HitNote_Orange
		]}
endscript

script Venue_PulseYellowOpen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Yellow
		]}
endscript

script Venue_PulseBlueOrange 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Blue
			HitNote_Orange
		]}
endscript

script Venue_PulseBlueOpen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Blue
		]}
endscript

script Venue_PulseOrangeOpen 
	SetSpawnInstanceLimits \{max = 8
		management = ignore_spawn_request}
	Venue_PulseOnEvents \{events = [
			HitNote_Orange
		]}
endscript
